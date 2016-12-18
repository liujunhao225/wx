package util;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

/**
 * 
 * this class used for posting msg to WX cloud or use get method to connect WX
 * clould
 * 
 * @author ljh
 *
 */
public class WXInterface {

	private static Logger logger = Logger.getLogger(WXInterface.class);

	public static String doGet(String url) {

		logger.info("请求地址:" + url);
		HttpClient client = HttpClientBuilder.create().build();
		HttpGet get = new HttpGet(url);
		String result = "";
		try {
			HttpResponse response = client.execute(get);
			result = EntityUtils.toString(response.getEntity(), "utf-8");

			logger.info("请求地址:" + url + "\r\n" + "返回结果:" + result);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			get.abort();
		}
		return result;
	}

	public static String doPost(String url, String params) {

		logger.info("请求地址:" + url + "\r\n" + "请求参数:" + params);
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(url);
		post.setEntity(new StringEntity(params, "utf-8"));
		String result = "";
		try {
			HttpResponse response = client.execute(post);

			result = EntityUtils.toString(response.getEntity());

			logger.info("请求地址:" + url + "\r\n" + "请求参数:" + params + "\r\n" + "返回结果:" + result);

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
