package wx;

public class WeixinConfig {

	private static String appId = "wx7b982f3eac2bc602";

	private static String timeStamp = "";

	private static String nonceStr = "91021427-f502-43d7-b931-b92f0b1e130d";

	private static String signature = "";

	private static String token = "";

	private static String sticket = "";

	private static String secret = "bceb1e2455d47bcad880fb7dcfaab0ed";

	public String getAppId() {
		return appId;
	}

	public void setAppId(String tempAppId) {
		appId = tempAppId;
	}

	public String getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(String tempTimeStamp) {
		timeStamp = tempTimeStamp;
	}

	public String getNonceStr() {
		return nonceStr;
	}

	public void setNonceStr(String tempNonceStr) {
		nonceStr = tempNonceStr;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String tempSignature) {
		signature = tempSignature;
	}

	public static String getToken() {
		return token;
	}

	public void setToken(String tempToken) {
		token = tempToken;
	}

	public String getSticket() {
		return sticket;
	}

	public void setSticket(String tempSticket) {
		sticket = tempSticket;
	}

	public String getSecret() {
		return secret;
	}

	@Override
	public String toString() {

		StringBuffer sb = new StringBuffer();
		sb.append("appId:" + appId + "\t");

		return sb.toString();

	}

}
