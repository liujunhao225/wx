package wx;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import bean.DeviceBean;
import bean.WXMessage;
import definition.KeyParamDefinition;

public class CoreServlet extends HttpServlet {

	private static final long serialVersionUID = 4440739483644821986L;

	private Logger logger = Logger.getLogger(CoreServlet.class);

	/**
	 * 确认请求来自微信服务器
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 微信加密签名
		String signature = request.getParameter("signature");
		// 时间戳
		String timestamp = request.getParameter("timestamp");
		// 随机数
		String nonce = request.getParameter("nonce");
		// 随机字符串
		String echostr = request.getParameter("echostr");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			// 通过检验signature对请求进行校验，若校验成功则原样返回echostr，表示接入成功，否则接入失败
			if (SignUtil.checkSignature(signature, timestamp, nonce)) {
				out.print(echostr);
			}
		} finally {
			out.close();
			out = null;
		}
	}

	/**
	 * 处理微信服务器发来的消息
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		byte[] paramByte = new byte[1024];
		ServletInputStream stream = null;
		String requestString = "";
		try {
			stream = request.getInputStream();
			int temp = -2;
			while ((temp = stream.read(paramByte)) != -1) {
				requestString += new String(paramByte, "utf-8");
				paramByte = new byte[1024];
			}
		} finally {
			stream.close();
		}
		WXMessage message = doParse(requestString);
		handleMsg(message);

	}

	private WXMessage doParse(String param) {
		// xml匹配
		boolean flag = true;
		WXMessage wx = new WXMessage();
		try {

			JSONObject job = new JSONObject(param);
			wx.setJob(job);
			flag = false;

		} catch (Exception e) {
			logger.error("匹配json格式出错!");
			try {
				Document doc = Jsoup.parse(param);
				wx.setDoc(doc);
			} catch (Exception ex1) {
				ex1.printStackTrace();
			}
		}
		wx.setXml(flag);
		return wx;
	}

	private void handleMsg(WXMessage msg) {

		if (msg.isXml()) {
			// FIXME
		} else {
			JSONObject job = msg.getJob();
			if (KeyParamDefinition.WX_NOTIFY_MSG.equalsIgnoreCase(job.getString("msg_type"))) {
				String device_id = job.getString("device_id");
				String device_type = job.getString("device_type");
				long msg_id = job.getLong("msg_id");
				String msg_type = job.getString("msg_type");
				long create_time = job.getLong("create_time");
				String data = job.getString("data");
				DeviceBean bean = DeviceBean.build(device_id, device_type, data);
				System.out.println(new JSONObject(bean).toString());
			}
		}

	}

}
