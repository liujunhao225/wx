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

import wx.WeixinConfig;

public class WXProductID {

	static String deviceId_url = "https://api.weixin.qq.com/shakearound/device/applyid?access_token=%s";

	// 测试
	// static String access_toket_url =
	// "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx15692e8dccaef0a1&secret=5515a0ec4559e1d8222f05b8fcf05d09";
	// //正式
	static String access_toket_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx7b982f3eac2bc602&secret=bceb1e2455d47bcad880fb7dcfaab0ed";

	static String qrcode_url = "https://api.weixin.qq.com/device/create_qrcode?access_token=%s";

	static String token = "pYCo1RWEPga6C4ClLvfmvnTMyAca1gzc64Mcql0iSyQQmc-X1obpwAfoDMheKHjimikb8qqXBaMPFkSbVoJvJ-ot62darz8xmiRpxZfgixFCYq60J788fB5mW-RBSaGPRFKhAFAAOT";

	static String deviceId = "gh_f279452b86ad_9a7422ad8c96a649";

	static String ticket = "";

	public static void main(String[] args) {
		WXProductID wx = new WXProductID();
		String tempurl = String.format(qrcode_url, token);
		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		// job.put("device_id_list",["gh_f279452b86ad_9a7422ad8c96a649"]);
		// wx.doPost(tempurl);

	}

	@Test
	public void bind() {
		String url = "https://api.weixin.qq.com/device/bind?access_token=%s";
		JSONObject job = new JSONObject();
		job.put("ticket", "");
		job.put("device_id", "gh_f279452b86ad_7c73c6fb6adca7be");
		job.put("openid", "oWpqHs27Hl_g99HJ7l6lU_meN1cQ");
	}

	@Test
	public void deviceStatus() {
		String url = "https://api.weixin.qq.com/device/get_stat?access_token=%s&device_id=%s";
		String tempurl = String.format(url, token, "gh_f279452b86ad_9a7422ad8c96a649");
		doGet(tempurl);
	}

	public void thirdSendMsg() {
		String url = "https://api.weixin.qq.com/device/transmsg?access_token=%s";
		String tempurl = String.format(url, token);
		JSONObject job = new JSONObject();
		job.put("device_type", "gh_f279452b86ad");
		job.put("device_id", "gh_f279452b86ad_9a7422ad8c96a649");
		job.put("open_id", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		job.put("msg_type", "2");
		job.put("device_status", "0");
		doPost(tempurl, job.toString());
		// result:{"ret":100024,"ret_info":"user not subscribe device status"}
	}

	public void createQRcode() {

		String url = "https://api.weixin.qq.com/device/create_qrcode?access_token=%s";
		String tempUrl = String.format(url, token);
		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		job.put("device_id_list", new String[] { "gh_f279452b86ad_9a7422ad8c96a649" });
		doPost(tempUrl, job.toString());
	}

	/**
	 * 新设备授权
	 */
	@Test
	public void getQrcode() {
		String url = "https://api.weixin.qq.com/device/getqrcode?access_token=%s&product_id=24319";
		String tempUrl = String.format(url, token);
		doGet(tempUrl);

	}

	@Test
	public void getOpenId() {

		// device_type="22571"

		String url = "https://api.weixin.qq.com/device/get_openid?access_token=%s&device_type=%s&device_id=%s";

		String tempUrl = String.format(url, token, "gh_72bfb5420cfb", "gh_72bfb5420cfb_d28180ab082a9890");
		doGet(tempUrl);
		// {"open_id":["oXb3KvhNkqr26hINjPLFEKa0SGHI","oXb3KvrYk30tLsZgEWQkqzNPRUEw"],"resp_msg":{"ret_code":0,"error_info":"ok"}}
	}

	@Test
	public void unBound() {
		String url = "https://api.weixin.qq.com/device/unbind?access_token=%s";
		String tempurl = String.format(url, token);
		JSONObject job = new JSONObject();
		job.put("TICKET", "harddevice_oper_tic_5811469794753536");
		job.put("DEVICE_ID", deviceId);
		job.put("OPENID", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(job.toString());
		System.out.println(tempurl);
		doPost(tempurl, job.toString());

	}

	/**
	 * 服务器端强制解绑
	 */
	@Test
	public void unBoundStrong() {
		String url = "https://api.weixin.qq.com/device/compel_unbind?access_token=%s";
		String tempurl = String.format(url, token);

		JSONObject job = new JSONObject();
		job.put("device_id", "gh_f279452b86ad_9a7422ad8c96a649");
		job.put("openid", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(job.toString());
		System.out.println(tempurl);
		doPost(tempurl, job.toString());

	}

	@Test
	public void getDevice() {
		String url = "https://api.weixin.qq.com/device/get_bind_device?access_token=%s&openid=%s";

		String tempUrl = String.format(url, token, "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		System.out.println(tempUrl);

		doGet(tempUrl);
	}

	/**
	 * 
	 * @return
	 */
	public String getDeviceList(String openId) {
		WeixinConfig config = new WeixinConfig();
		String url = "https://api.weixin.qq.com/device/get_bind_device?access_token=%s&openid=%s";

		String tempUrl = String.format(url, config.getToken(), openId);
		System.out.println(tempUrl);

		return doGet(tempUrl);
	}

	@Test
	public void getDeviceList() {
		String openId = "oXb3KvhNkqr26hINjPLFEKa0SGHI";
		WeixinConfig config = new WeixinConfig();
		String url = "https://api.weixin.qq.com/device/get_bind_device?access_token=%s&openid=%s";

		String tempUrl = String.format(url, token, openId);
		System.out.println(tempUrl);

		String result = doGet(tempUrl);
		System.out.println(result);
	}

	@Test
	public void sendStatusToUser() {
		String url = "https://api.weixin.qq.com/device/transmsg?access_token=%s";

		String tempUrl = String.format(url, token);

		JSONObject job = new JSONObject();

		job.put("device_type", "gh_f279452b86ad");
		job.put("device_id", "gh_f279452b86ad_9a7422ad8c96a649");
		job.put("open_id", "oXb3KvhNkqr26hINjPLFEKa0SGHI");
		job.put("msg_type", 2);
		job.put("device_status", 1);
		doPost(tempUrl, job.toString());

	}

	public String getDeviceStatus(String openId, String deviceType, String deviceId) {

		WeixinConfig config = new WeixinConfig();
		String url = "https://api.weixin.qq.com/hardware/mydevice/platform/get_device_status?access_token=%s";
		String tempUrl = String.format(url, config.getToken());
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("device_type", deviceType);
		jsonObject.put("device_id", deviceId);
		JSONObject sonJob = new JSONObject();
		JSONObject grandSonJsonObject = new JSONObject();
		grandSonJsonObject.put("air_quality_lev", 0);
		grandSonJsonObject.put("air_pm_2_5", 0);
		grandSonJsonObject.put("air_pm_1_0", 0);
		grandSonJsonObject.put("air_pm_10_0", 0);
		grandSonJsonObject.put("concentration_co2", 0);
		grandSonJsonObject.put("formaldehyde", 0);
		sonJob.put("air_quality", grandSonJsonObject);
		jsonObject.put("services", sonJob);
		jsonObject.put("user", openId);
		jsonObject.put("data", "");
		System.out.println(jsonObject.toString());
		return doPost(tempUrl, jsonObject.toString());

	}

	@Test
	public void getAccessToken() {
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
		String tempurl = String.format(url, token);
		JSONObject job = new JSONObject();
		job.put("device_num", "1");
		List<JSONObject> jobList = new ArrayList<JSONObject>();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("id", "gh_f279452b86ad_9a5e22eea532612d");
		jsonObject.put("mac", "5CCF7Fd0BD5F");
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
		HttpGet get = new HttpGet(url);
		String result = "";
		try {
			HttpResponse response = client.execute(get);
			result = EntityUtils.toString(response.getEntity(), "utf-8");

			System.out.println(result);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			get.abort();
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
		menujob.put("name", "我的设备");
		menujob.put("url", "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx7b982f3eac2bc602&redirect_uri=http://www.fulijietong.com/wx/mylist2.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect");

		buttonList.add(menujob);
		job.put("button", buttonList);

		System.out.println(job.toString());

		doPost(tempurl, job.toString());
	}

	@Test
	public void deleteMenu() {
		String url = "https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=%s";
		String tempUrl = String.format(url, token);
		doGet(tempUrl);
	}

	@Test
	public void getTimeStamp() {
		System.out.println(System.currentTimeMillis() / 1000);
	}

	public String getOpenID(String code) {

		WeixinConfig config = new WeixinConfig();
		String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code";
		String tempUrl = String.format(url, config.getAppId(), config.getSecret(), code);
		return doGet(tempUrl);
	}

	/**
	 * 
	 */
	@Test
	public void getDeviceId() {

		JSONObject job = new JSONObject();
		job.put("quantity", 1);
		job.put("apply_reason", "测试");
		job.put("comment", "测试");
		// StringBuilder sb = new StringBuilder();
		// sb.append("{\"quantity\":3,\"apply_reason\":\"测试\",\"comment\":\"测试\"}");
		String tempUrl = String.format(deviceId_url, token);
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
		} finally {
			post.abort();
		}
		return result;
	}

}
