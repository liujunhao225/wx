package controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;

import bean.DeviceBean;
import dao.DBRecorder;
import definition.ReturnCodeDefinition;
import util.StringUtil;

@Controller
public class AirMachineInfoController {

	public String getInfo(HttpServletRequest request) {
		String device_id = request.getParameter("deviceId");
		String device_status = request.getParameter("device_status");

		JSONObject job = new JSONObject();

		if (StringUtil.isEmpty(device_id) || StringUtil.isEmpty(device_status)) {

			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_NULL);
			job.put("resdesc", "设备ID或者状态不可以为空!");
		}
		if (device_status == "1") {
			// 从数据库取中相关数据
			DBRecorder db = new DBRecorder();
			DeviceBean bean = db.getDeviceInfo(device_id);
			if (bean != null) {
				job.put("rescode", ReturnCodeDefinition.OK);
				job.put("resdesc", "请求成功!");
				job.put("bean", bean);

			} else {
				job.put("rescode", ReturnCodeDefinition.WX_NO_DEVICE_INFO_ERROR);
				job.put("resdesc", "没有获取到相就的参数");
			}

		} else {
			job.put("rescode", ReturnCodeDefinition.PARAM_CANNOT_BE_THIS_VALUE);
			job.put("resdesc", "状态值错误!");
		}

		return "";
	}

}
