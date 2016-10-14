package websocket;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.json.JSONObject;

@ServerEndpoint("/air")
public class AirCleanerWebSocket {

	private static final Set<AirCleanerWebSocket> connections = new CopyOnWriteArraySet<AirCleanerWebSocket>();

	private Session session;

	public AirCleanerWebSocket() {

	}

	@OnOpen
	public void start(Session session) {
		this.session = session;
		System.out.println(this.session.getRequestParameterMap());
		System.out.println("I am comming");
		System.out.println(this.session.getRequestParameterMap());
	}

	@OnClose
	public void end() {
		connections.remove(this);
		String message = String.format("has disconnected.");
		broadcast(message);
	}

	@OnMessage
	public void incoming(String message) {
		System.err.println("incomming starting……");
		System.out.println(message);
		String param[] = message.split(",");
		
//		while(this.session.isOpen()){
			JSONObject job = new JSONObject();
			String checkPM = System.currentTimeMillis() / 1000 + "";
			
			if ("C893464AE12A".equals(param[3])) {
				job.put("DMac", "C893464AE12A");
				job.put("CheckPM25", checkPM);
				job.put("AQIPM25", "70");
				job.put("TVOC", "0.73");
				job.put("CO2", "549");
				job.put("PA", "");
				job.put("Temperature", "27.4");
				job.put("Humidity", "58.5");
				job.put("ProtocolWord", "PM25_Temperature_Humidity_CO2_TVOC");
			} else {
				job.put("DMac", "C893464AE12B");
				job.put("CheckPM25", checkPM);
				job.put("AQIPM25", "170");
				job.put("TVOC", "0.73");
				job.put("CO2", "549");
				job.put("PA", "");
				job.put("Temperature", "29");
				job.put("Humidity", "58.5");
				job.put("ProtocolWord", "PM25_Temperature_Humidity_CO2_TVOC");
			}
			System.out.println(job.toString());
			broadcast(job.toString());
//			try {
//				Thread.sleep(20*1000);
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
//		}
		
		System.err.println("incomming end……");
	}

	@OnError
	public void onError(Throwable t) throws Throwable {
		System.out.println("Chat Error: " + t.toString());
	}

	private void broadcast(String msg) {
		try {
			this.session.getBasicRemote().sendText(msg);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// private static void broadcast(String msg) {
	// for (AirCleanerWebSocket client : connections) {
	// try {
	// synchronized (client) {
	// client.session.getBasicRemote().sendText(msg);
	//
	// }
	// } catch (IOException e) {
	// System.out.println("Chat Error: Failed to send message to client");
	// connections.remove(client);
	// try {
	// client.session.close();
	// } catch (IOException e1) {
	//
	// }
	// String message = String.format("* %s %s has been disconnected.");
	// broadcast(message);
	// }
	// }
	// }

}
