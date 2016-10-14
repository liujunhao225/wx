package wx;

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

	static String deviceId = "gh_f279452b86ad_9a7422ad8c96a649";

	static String openId = "oXb3KvhNkqr26hINjPLFEKa0SGHI";
	static String token = "8i4dxiR7qvIoOvvEx9i3VywCqZDWxvHQMG_FhBsoDwTny8y4EjiDXz-LE0TFVG5ucdmMFDsNJaI-e8RhVZhyUbtWOwtMxzjStOs-2BzkaiAQBHjAHAALR";

	@Test
	public void getStatus() {
		String url = "https://api.weixin.qq.com/hardware/mydevice/platform/get_device_status?access_token=%s";
		String tempUrl = String.format(url, token);
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
		System.out.println(tempUrl);
		doPost(tempUrl, jsonObject.toString());

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
