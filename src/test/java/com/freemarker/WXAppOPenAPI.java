package com.freemarker;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.junit.Test;

public class WXAppOPenAPI {

	static String deviceType = "gh_f279452b86ad";

	static String deviceId = "gh_f279452b86ad_7c73c6fb6adca7be";

	static String openId = "oWpqHs27Hl_g99HJ7l6lU_meN1cQ";
	static String token = "QXWksJRy6TdLxpF356_SJSzuJ8Fcl1aPr3BOH5ViAXTkPls-mD4RNZa_-45EEXJhT4rm-tFsfQaTtHQAsFWUWd3LjWvz6ypAu5E9F3Xf3Ok900D-rFwB_AeKhAGn-qZ8OYNjADAWGV";

	@Test
	public void getStatus() {
		String url = "https://api.weixin.qq.com/hardware/mydevice/platform/get_device_status?access_token=%s";
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

	public static void main(String[] args) {
		System.out.println("字符串长度是:" + "gh_f279452b86ad_7c73c6fb6adca7be".length());
	}

}
