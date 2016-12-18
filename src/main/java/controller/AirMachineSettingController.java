package controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;

import bean.DeviceBean;
import definition.ReturnCodeDefinition;
import definition.WXURLDefinition;
import util.StringUtil;
import util.WXInterface;

@Controller
public class AirMachineSettingController {

	public String setMachine(HttpServletRequest request) {

		String deviceId = request.getParameter("device_id");// 不可为空
		String deviceType = request.getParameter("deviceType");// 不可为空
		String openId = request.getParameter("openId");// 不可为空
		JSONObject job = new JSONObject();

		if (StringUtil.isEmpty(deviceId) || StringUtil.isEmpty(openId) || StringUtil.isEmpty(deviceType)) {
			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_NULL);
			job.put("resdesc", "设备ID或者操作员不可以为空!");
		}

		String autoFlag = request.getParameter("autoFlag");// 可为空
		autoFlag = StringUtil.emptySetDefaultValue(autoFlag, "1");
		String windLevel = request.getParameter("windLevel");// 可为空
		windLevel = StringUtil.emptySetDefaultValue(windLevel, "1");

		// FIXME 请求前拼装参数

		String postData = DeviceBean.DeviceBeanToString(autoFlag, windLevel);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("device_type", deviceType);
		jsonObject.put("device_id", deviceId);
		jsonObject.put("user", openId);
		jsonObject.put("data", postData);
		JSONObject sonJob = new JSONObject();

		JSONObject grandSonJsonObject = new JSONObject();

		grandSonJsonObject.put("status", 1);
		sonJob.put("operation_status", grandSonJsonObject);
		jsonObject.put("services", sonJob);

		String result = WXInterface.doPost(WXURLDefinition.SET_DEVICE_STATUS, jsonObject.toString());

		// 记录控制设备日志 到数据库
		return "";

	}

}
