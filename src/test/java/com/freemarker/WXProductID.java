package com.freemarker;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.junit.Test;

public class WXProductID {

	static String deviceId_url = "https://api.weixin.qq.com/shakearound/device/applyid?access_token=%s";

	static String access_toket_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx7b982f3eac2bc602&secret=bceb1e2455d47bcad880fb7dcfaab0ed";

	static String deviceID_qr_url = "https://api.weixin.qq.com/device/getqrcode?access_token=%s&product_id=22571";

	static String qrcode_url = "https://api.weixin.qq.com/device/create_qrcode?access_token=%s";

	static String token = "E-DE1ZC3th048Dl1FkyNji4l5cOG3OT_H6i_OMZKQjwF3B9O_A1V71sK4FGeaBXVfJQD2VSGtpnkkaNMGNIAyl1S0HeN35OJLyUbGoI7M3stLjnZfB-tuacNmvwyysArXWNaAFAMLC";
	static String deviceId = "gh_f279452b86ad_9a7422ad8c96a649";

	static String ticket = "kgt8ON7yVITDhtdwci0qeetzxe08hBcU7VbLnPY3uPqcg2SvIPsyq-9p8AFfxq1gs8FI0A3kxx00oZnMFQAP_g";

	public static void main(String[] args) {
		// access_token get
		WXProductID wx = new WXProductID();
		// String jobString = wx.getAccessToken(access_toket_url);
		// JSONObject job = new JSONObject(jobString);
		// System.out.println(job.get("access_token"));

		// wx.getDeviceId();

		// qr and deviceId
		// String tempurl = String.format(deviceID_qr_url,
		// "JxasbFrPIBH5kG3Yq5v5zjl1wVc8CFdgAxcNhRFcmg3dLdJ73f5Fh4gkrY4Ie5PMGkSZTLISOCFlQeEgp4pj5XrmZtezYgSNCo-4X_pfdJ6A23ttnJjQYybpX4kdTh1xJIJaAAAUTU");
		// wx.doGet(tempurl);
		//
		// qrcode
		String tempurl = String.format(qrcode_url,
				"JxasbFrPIBH5kG3Yq5v5zjl1wVc8CFdgAxcNhRFcmg3dLdJ73f5Fh4gkrY4Ie5PMGkSZTLISOCFlQeEgp4pj5XrmZtezYgSNCo-4X_pfdJ6A23ttnJjQYybpX4kdTh1xJIJaAAAUTU");
		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		// job.put("device_id_list",["gh_f279452b86ad_9a7422ad8c96a649"]);
		// wx.doPost(tempurl);

	}

	@Test
	public void deviceStatus() {
		String url = "https://api.weixin.qq.com/device/get_stat?access_token=%s&device_id=%s";
		String tempurl = String.format(url, token, deviceId);
		doGet(tempurl);

	}

	@Test
	public void thirdSendMsg() {
		String url = "https://api.weixin.qq.com/device/transmsg?access_token=%s";

		String tempurl = String.format(url,
				"TQc4hbzCEnktYyAWWXKnmImJD2rUx6JM9-m4Oi4Y270mo4L3RB9McJ7de2UWYhP9enH91Sb7Ny5zp5sNrOdPcjYv6z9o0kUYSyTuZBh6QG5WngAa64tRkWMa-xfTT6TGORSbAJAXAB");

		JSONObject job = new JSONObject();

		job.put("device_type", "gh_f279452b86ad");
		job.put("device_id", "gh_f279452b86ad_9a7422ad8c96a649");
		job.put("open_id", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		job.put("msg_type", "2");
		job.put("device_status", "0");
		doPost(tempurl, job.toString());
		// result:{"ret":100024,"ret_info":"user not subscribe device status"}
	}

	@Test
	public void createQRcode() {

		String url = "https://api.weixin.qq.com/device/create_qrcode?access_token=%s";

		String tempUrl = String.format(url,
				"S7GU5LRq7WpvxBElPmldgLVnYfkN6j1DpjauE8Cf7H1SJawJR-YW3kb7Gfp4mZJoDKRRnImh8xhBWxyLSrB3VEqa4N6CRjBZhyFscwCJTNijvHnyhm37eM2pISw4RJSGAVUfABAHCB");

		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		job.put("device_id_list", new String[] { "gh_f279452b86ad_9a7422ad8c96a649" });
		doPost(tempUrl, job.toString());
		// result:{"errcode":0,"errmsg":"ok","
		// device_num":1,"code_list":[{"device_id":"gh_f279452b86ad_9a7422ad8c96a649",
		// "ticket":http://we.qq.com/d/AQBdvcq_WSaeNwEJ5o_7rURyQSd9FIgcCguIAEeh}]}
		// System.out.println(job.toString());

	}

	@Test
	public void getOpenId() {

		// device_type="22571"

		String url = "https://api.weixin.qq.com/device/get_openid?access_token=%s&device_type=%s&device_id=%s";

		String tempUrl = String.format(url, token, "gh_f279452b86ad", "gh_f279452b86ad_9a7422ad8c96a649");
		doGet(tempUrl);
		// {"open_id":["oXb3KvhNkqr26hINjPLFEKa0SGHI","oXb3KvrYk30tLsZgEWQkqzNPRUEw"],"resp_msg":{"ret_code":0,"error_info":"ok"}}
	}

	@Test
	public void unBound() {
		String url = "https://api.weixin.qq.com/device/unbind?access_token=%s";
		String tempurl = String.format(url, token);
		JSONObject job = new JSONObject();
		job.put("TICKET", ticket);
		job.put("DEVICE_ID", deviceId);
		job.put("OPENID", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(job.toString());
		System.out.println(tempurl);
		doPost(tempurl, job.toString());

	}

	public String unBound(String tempToken, String tempTicket) {
		String url = "https://api.weixin.qq.com/device/unbind?access_token=%s";
		String tempurl = String.format(url, tempToken);
		JSONObject job = new JSONObject();
		job.put("TICKET", tempTicket);
		job.put("DEVICE_ID", "gh_f279452b86ad_9a7422ad8c96a649");
		job.put("OPENID", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(job.toString());
		System.out.println(tempurl);
		return doPost(tempurl, job.toString());

	}

	@Test
	public void getDevice() {
		String url = "https://api.weixin.qq.com/device/get_bind_device?access_token=%s&openid=%s";

		String tempUrl = String.format(url,
				"S7GU5LRq7WpvxBElPmldgLVnYfkN6j1DpjauE8Cf7H1SJawJR-YW3kb7Gfp4mZJoDKRRnImh8xhBWxyLSrB3VEqa4N6CRjBZhyFscwCJTNijvHnyhm37eM2pISw4RJSGAVUfABAHCB",
				"oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(tempUrl);

		doGet(tempUrl);

		// {"resp_msg":{"ret_code":0,"error_info":"ok"},
		// "openid":"oXb3KvhNkqr26hINjPLFEKa0SGHI","device_list":[{"device_type":"gh_f279452b86ad","device_id":"gh_f279452b86ad_9a7422ad8c96a649","sub_device_list":[]}]}

	}

	@Test
	public void accessToken() {
		String jobString = doGet(access_toket_url);
		JSONObject job = new JSONObject(jobString);
		System.out.println(job.get("access_token"));
	}

	public String accessToken(String name) {
		String jobString = doGet(access_toket_url);
		JSONObject job = new JSONObject(jobString);
		return job.getString("access_token");
	}

	@Test
	public void getUserInfo() {
		String url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=%s&openid=%s&lang=zh_CN";

		String tempUrl = String.format(url, token, "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(tempUrl);
		doGet(tempUrl);
	}

	@Test
	public void getTicket() {
		String url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=%s&type=jsapi";
		String tempurl = String.format(url, token);
		doGet(tempurl);
	}

	public String getTicket(String Ttoken) {
		String url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=%s&type=jsapi";
		String tempurl = String.format(url, Ttoken);

		return doGet(tempurl);
	}

	@Test
	public void authDev() {
		String url = "https://api.weixin.qq.com/device/authorize_device?access_token=%s";
		String tempurl = String.format(url,
				"PPIP21waHVPQZFToBl8OsG7S4Bj7tg1agoD9xIlGM2C_dHBjrKzmlb1DaD4UriscDs1Q9BKadgAIbOWpPAM9is3-IJoex2ijLlR8aARG_yj-IBrHhaxZa3H_DDxuNFc1KLGhAFAGHC");
		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		List<JSONObject> jobList = new ArrayList<JSONObject>();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("id", "gh_f279452b86ad_9a7422ad8c96a649");
		jsonObject.put("mac", "D0BAE4086707");
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
		System.out.println(job.toString());
		doPost(tempurl, job.toString());

	}

	/**
	 * access token
	 * 
	 * @param url
	 * @return
	 */
	public String doGet(String url) {
		HttpClient client = HttpClientBuilder.create().build();
		HttpGet post = new HttpGet(url);
		String result = "";
		try {
			HttpResponse response = client.execute(post);
			result = EntityUtils.toString(response.getEntity(), "utf-8");

			System.out.println(result);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;

	}

	@Test
	public void createMenu() {

		String url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=%s";

		String tempurl = String.format(url, token);
		JSONObject job = new JSONObject();
		List<JSONObject> buttonList = new ArrayList<JSONObject>();
		JSONObject menujob = new JSONObject();

		menujob.put("type", "view");
		menujob.put("name", "解绑");
		menujob.put("url", "http://www.legou114.net/wx/unbind.html");

		buttonList.add(menujob);
		job.put("button", buttonList);

		System.out.println(job.toString());

		doPost(tempurl, job.toString());
	}

	@Test
	public void changeMenu() {
		String url = "";

		String tempurl = "";

		// http://www.fqkvk.xyz/wx/unbind.html

	}

	@Test
	public void deleteMenu() {
		String url = "https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=%s";
		String tempUrl = String.format(url, token);

		doGet(tempUrl);

	}

	/**
	 * 
	 */
	public void getDeviceId() {

		JSONObject job = new JSONObject();
		job.put("quantity", 1);
		job.put("apply_reason", "测试");
		job.put("comment", "测试");
		// StringBuilder sb = new StringBuilder();
		// sb.append("{\"quantity\":3,\"apply_reason\":\"测试\",\"comment\":\"测试\"}");
		String tempUrl = String.format(deviceId_url,
				"JxasbFrPIBH5kG3Yq5v5zjl1wVc8CFdgAxcNhRFcmg3dLdJ73f5Fh4gkrY4Ie5PMGkSZTLISOCFlQeEgp4pj5XrmZtezYgSNCo-4X_pfdJ6A23ttnJjQYybpX4kdTh1xJIJaAAAUTU");
		doPost(tempUrl, job.toString());
	}

	public String doPost(String url, String params) {
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(url);
		post.setEntity(new StringEntity(params, "utf-8"));
		String result = "";
		try {
			HttpResponse response = client.execute(post);

			result = EntityUtils.toString(response.getEntity());

			System.out.println("result:" + result);

		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

}
