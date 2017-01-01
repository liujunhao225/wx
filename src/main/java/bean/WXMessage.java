package bean;

import org.json.JSONObject;
import org.jsoup.nodes.Document;

public class WXMessage {
	// true is xml ;false is jsonObject
	private boolean isXml;

	private Document doc;

	private JSONObject job;

	public Document getDoc() {
		return doc;
	}

	public void setDoc(Document doc) {
		this.doc = doc;
	}

	public JSONObject getJob() {
		return job;
	}

	public void setJob(JSONObject job) {
		this.job = job;
	}

	public boolean isXml() {
		return isXml;
	}

	public void setXml(boolean isXml) {
		this.isXml = isXml;
	}

}
