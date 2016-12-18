package util;

import org.json.JSONObject;

import definition.WXURLDefinition;

/**
 * class for get token and set token
 * 
 * @author ljh
 *
 */
public class WXToken {

	private static String TOKEN = "";

	public static String getToken() {

		return TOKEN;
	}

	private static boolean setToken(String token) {
		TOKEN = token;
		return true;
	}

	protected static void generateNewToken() {

		String jobString = WXInterface.doGet(WXURLDefinition.TOKE_URL);
		JSONObject job = new JSONObject(jobString);
		System.out.println(job.get("access_token"));
		String tempToken = job.getString("access_token");
		setToken(tempToken);
		// FIXME alarm eamil send

	}
}
