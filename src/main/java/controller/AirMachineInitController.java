package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import definition.ReturnCodeDefinition;
import definition.WXURLDefinition;
import util.BaseDeviceInfo;
import util.StringUtil;
import util.WXInterface;
import util.WXToken;

/**
 * 
 * used for bind device to WX platform
 * 
 * @author ljh
 *
 *         param:product_id,mac
 */
@Controller
public class AirMachineInitController {

	@ResponseBody
	public String initDevice(HttpServletRequest request, HttpServletResponse response) {
		// 获取 product_id
		JSONObject job = new JSONObject();

		String product_id = request.getParameter("product_id");
		boolean flag = StringUtil.isEmpty(product_id);

		if (flag) {
			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_NULL);
			job.put("resdesc", "product_id不可以为空");
			return job.toString();
		}

		// bind device to wx platform start
		String bindUrl = WXURLDefinition.NEW_BIND_DEVICE_URL;
		String token = WXToken.getToken();
		String requestUrl = String.format(bindUrl, token, product_id);
		String result = WXInterface.doGet(requestUrl);
		JSONObject resultJob = new JSONObject(result);
		// {"base_resp":{"errcode":0,"errmsg":"ok"},"deviceid":"gh_f279452b86ad_9a5e22eea532612d","qrticket":"http:\/\/we.qq.com\/d\/AQBdvcq_91TTJ7xY9i2Ql4remEElWQ00pWGXsKMD","devicelicence":"2F03C1D3423CA2DFA7E0B2810D1285F6A89D2ACCB0A5D78109364AD781520063E9C01897F10445100F4AADFBF84D15CE088EBC9991E8F3DB3FEAFAB661610D631E179A8C8B758D559CE8344FF49EABCD"}

		if (0 != resultJob.getJSONObject("base_resp").getInt("errcode")) {
			job.put("rescode", ReturnCodeDefinition.WX_RESPONSE_ERROR);
			job.put("resdesc", "绑定新设备接口出错");
			return job.toString();
		}

		String deviceId = resultJob.getString("deviceid");
		// bind device to wx platform end

		// update device info start
		String mac = request.getParameter("mac");

		if (StringUtil.isEmpty(mac) || StringUtil.isEmpty(deviceId)) {
			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_NULL);
			job.put("resdesc", "mac不可以为空");
			return job.toString();
		}
		String updateUrl = WXURLDefinition.UPDATE_DEVICE_URL;
		requestUrl = String.format(updateUrl, token);
		JSONObject deviceInfo = BaseDeviceInfo.initDeviceInfo(mac, deviceId);

		result = WXInterface.doPost(updateUrl, deviceInfo.toString());
		resultJob = null;
		resultJob = new JSONObject(result);

		if (0 != resultJob.getInt("errcode")) {
			job.put("rescode", ReturnCodeDefinition.WX_RESPONSE_ERROR);
			job.put("resdesc", "更新设备属性出错，具体询问管理员");
			return job.toString();
		}
		// update device info end
		
		job.put("rescode", ReturnCodeDefinition.OK);
		job.put("resdesc", "成功");
		return job.toString();
	}
}
