package controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;

import bean.DeviceBean;
import dao.DBRecorder;
import definition.ReturnCodeDefinition;
import definition.WXURLDefinition;
import util.StringUtil;
import util.WXInterface;

@Controller
public class AirMachineSettingController {

	private static Logger logger = Logger.getLogger(AirMachineSettingController.class);

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

		String warmFlag = request.getParameter("warmFlag");
		warmFlag = StringUtil.emptySetDefaultValue(warmFlag, "0");

		String anion = request.getParameter("anionFlag");

		// FIXME 请求前拼装参数
		String postData = DeviceBean.DeviceBeanToString(autoFlag, windLevel, warmFlag, anion);
		logger.info("请求前数据：" + postData);

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

		JSONObject resultJob = new JSONObject(result);

		String msgId = resultJob.getString("msg_id");

		// String response_code = resultJob.getString("");

		// FIXME 记录控制设备日志 到数据库
		// DBRecorder recorder = new DBRecorder();
		// DeviceBean bean = new DeviceBean();
		//
		// bean.setDeviceId(deviceId);
		// bean.setDeviceType(deviceType);
		// bean.set
		// recorder.addSettingLog(openId, bean);
		job.put("rescode", ReturnCodeDefinition.OK);
		job.put("resdesc", "设置微信成功");
		return job.toString();

	}

	private JSONObject parseResult(String result) {

		JSONObject job = new JSONObject();

		return null;

	}

}
