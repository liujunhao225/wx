package com.freemarker;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.junit.Test;

public class MsgTest {

	@Test
	public void testSendMsg() {

		String url = "http://localhost:8080/wx/coreServlet";
		HttpClient client = HttpClientBuilder.create().build();

		HttpPost post = new HttpPost(url);

		String param = "{\"device_id\":\"gh_f279452b86ad_7c73c6fb6adca7be\",\"device_type\":\"gh_f279452b86ad\",\"msg_id\":102641985,\"msg_type\":\"notify\",\"services\":{\"operation_status\":{\"status\":0}},\"create_time\":1481428900,\"data\":\"0300+16011264 258           123\"}";
		try {
			post.setEntity(new StringEntity(param));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		try {
			client.execute(post);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			post.abort();
		}

	}
}
