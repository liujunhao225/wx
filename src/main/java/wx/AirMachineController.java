package wx;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import java.util.List;
import java.util.ArrayList;

public class AirMachineController implements Controller {

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mv = new ModelAndView("mylist2");

		// 取得所有设备

		List<JSONObject> jsonList = new ArrayList<JSONObject>();
		JSONObject job = new JSONObject();
		job.put("deviceName", "device1");
		jsonList.add(job);
		mv.addObject("list", jsonList);

		// 所有设备状态

		// String code = request.getParameter("code");
		//
		// String sourceOpenId = new WXProductID().getOpenID(code);
		//
		// JSONObject job = new JSONObject(sourceOpenId);
		// if (job.has("errcode")) {
		// return;
		// }
		//
		// String finalOpenId = job.getString("openid");
		//
		// String develist = new WXProductID().getDeviceList(finalOpenId);
		//
		// System.out.println(develist);
		// JSONObject devlistJob = new JSONObject(develist);
		// // 获取设备列表成功
		// if (devlistJob.getJSONObject("resp_msg").getInt("ret_code") == 0) {
		// JSONArray array = devlistJob.getJSONArray("device_list");
		// for (int i = 0; i < array.length(); i++) {
		// String tempDeviceType =
		// array.getJSONObject(i).getString("device_type");
		// String tempDeviceId = array.getJSONObject(i).getString("device_id");
		// String result = new
		// WXProductID().getDeviceStatus(finalOpenId,tempDeviceType,
		// tempDeviceId);
		// System.out.println(result);
		// }
		// }

		return mv;
	}

}
