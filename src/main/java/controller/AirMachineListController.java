package controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.DeviceBean;
import dao.DBRecorder;
import definition.ReturnCodeDefinition;
import definition.WXURLDefinition;
import util.StringUtil;
import util.WXInterface;
import util.WXToken;
import wx.WeixinConfig;

@Controller
@RequestMapping("/device")
public class AirMachineListController {

	private static Logger logger = Logger.getLogger(AirMachineListController.class);

	@RequestMapping("/device_list.do")
	@ResponseBody
	public String getDeviceList(HttpServletRequest request, HttpServletResponse response) {
	
		HttpSession session = request.getSession();
		if (session.getAttribute("openId") == null || StringUtil.isEmpty(session.getAttribute("openId").toString())) {
			String keyCode = request.getParameter("keyCode");

			WeixinConfig config = new WeixinConfig();
			String getUserOpenIdUrl = String.format(WXURLDefinition.GET_USER_OPENID_URL, config.getAppId(),
					config.getSecret(), keyCode);
			String result = WXInterface.doGet(getUserOpenIdUrl);
			logger.info("返回结果:"+result);
			System.out.println("返回结果:"+result);
			JSONObject job = new JSONObject(result);
			session.setAttribute("openId", job.getString("openid"));

		}

		String openId = session.getAttribute("openId").toString();
		JSONObject job = new JSONObject();
		if (StringUtil.isEmpty(openId)) {
			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_NULL);
			job.put("resdesc", "openId不可以为空");
			return job.toString();
		}
		// 通过WX接口取用户绑定的设备 --start

		String url = WXURLDefinition.GET_USER_DEIVCE_LIST_URL;
		System.out.println(WeixinConfig.getToken());
		String requestUrl = String.format(url, WeixinConfig.getToken(), openId);

		String result = WXInterface.doGet(requestUrl);
		JSONObject resultJob = new JSONObject(result);

		if (0 != resultJob.getJSONObject("resp_msg").getInt("ret_code")) {
			job.put("rescode", ReturnCodeDefinition.WX_RESPONSE_ERROR);
			job.put("resdesc", "微信侧返回出错");
			return job.toString();
		}

		JSONArray array = resultJob.getJSONArray("device_list");

		if (array.length() < 20) {
			Set<String> deviceSet = new HashSet<String>();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length(); i++) {
				JSONObject tempjob = array.getJSONObject(i);
				sb.append("'" + tempjob.getString("device_id") + "'" + ",");
				deviceSet.add(tempjob.getString("device_id"));
			}
			sb.delete(sb.length() - 1, sb.length());
			DBRecorder db = new DBRecorder();
			List<DeviceBean> list = db.getDevicelistStatus(sb.toString(), deviceSet);
			job.put("rescode", ReturnCodeDefinition.OK);
			job.put("resdesc", "查询成功");
			job.put("list", list);
			return job.toString();
		} else {
			job.put("rescode", ReturnCodeDefinition.WX_TOO_MANY_DEVICE_ERROR);
			job.put("resdesc", "设备过多，不做查询");
			return job.toString();
		}

		// 通过WX接口获取用户绑定的设备--end

	}

}
