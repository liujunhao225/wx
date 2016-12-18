package wx;


import org.json.JSONObject;

import com.freemarker.WXProductID;

public class WeiXinUtil {

	/**
	 * 方法名：getWxConfig</br>
	 * 详述：获取微信的配置信息 </br>
	 * 开发人员：souvc </br>
	 * 创建时间：2016-1-5 </br>
	 * 
	 * @param request
	 * @return 说明返回值含义
	 * @throws 说明发生此异常的条件
	 */
	public static void setWeiXinConfig() {
		WeixinConfig config = new WeixinConfig();
		String jsapi_ticket = "";
		String access_token = new WXProductID().accessToken("");
		config.setToken(access_token);
		JSONObject job = new JSONObject();

		if (job != null) {
			// 要注意，access_token需要缓存
			String result = new WXProductID().getTicket(access_token);
			job = new JSONObject(result);
			if (job != null) {
				jsapi_ticket = job.getString("ticket");
				config.setSticket(jsapi_ticket);
			}
		}
	}
}
