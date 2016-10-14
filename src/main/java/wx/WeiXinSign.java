package wx;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 微信签名
 * 
 * @author liujunhao
 *
 */
public class WeiXinSign {

	public static Map<String, Object> getConfig(HttpServletRequest request) {

		Map<String, Object> params = new HashMap<String, Object>();
		WeixinConfig config = new WeixinConfig();
		params.put("appId", config.getAppId());
		params.put("timestamp", config.getTimeStamp());
		params.put("nonceStr", config.getNonceStr());

		String requestUrl = request.getRequestURL().toString();

		String sign = createSign(config.getSticket(), config.getNonceStr(), config.getTimeStamp(), requestUrl);
		params.put("signature", sign);

		return params;
	}

	private static String createSign(String jsapi_ticket, String nonceStr, String timestamp, String requestUrl) {
		String sign = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonceStr + "&timestamp=" + timestamp + "&url="
				+ requestUrl;
		String signature = "";
		try {
			MessageDigest crypt = MessageDigest.getInstance("SHA-1");
			crypt.reset();
			crypt.update(sign.getBytes("UTF-8"));
			signature = byteToHex(crypt.digest());
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return signature;
	}

	private static String byteToHex(final byte[] hash) {
		Formatter formatter = new Formatter();
		for (byte b : hash) {
			formatter.format("%02x", b);
		}
		String result = formatter.toString();
		formatter.close();
		return result;

	}

}
