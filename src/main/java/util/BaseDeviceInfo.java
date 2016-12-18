package util;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

/**
 * so many param that use this class simplify operation
 * 
 * @author ljh
 *
 */
public class BaseDeviceInfo {

	public static JSONObject initDeviceInfo(String mac, String deviceID) {

		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		List<JSONObject> jobList = new ArrayList<JSONObject>();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("id", deviceID);
		jsonObject.put("mac", mac);
		jsonObject.put("connect_protocol", "4");
		jsonObject.put("auth_key", "1234567890ABCDEF1234567890ABCDEF");
		jsonObject.put("close_strategy", "1");
		jsonObject.put("conn_strategy", "1");
		jsonObject.put("crypt_method", "1");
		jsonObject.put("auth_ver", "1");
		jsonObject.put("manu_mac_pos", "-1");
		jsonObject.put("ser_mac_pos", "-2");
		jobList.add(jsonObject);
		job.put("device_list", jobList);
		job.put("op_type", "1");
		return null;

	}

}
