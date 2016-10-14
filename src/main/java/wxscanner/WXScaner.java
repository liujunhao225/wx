package wxscanner;

public class WXScaner {

	String deviceType = "";

	String deviceId = "";

	public static void main(String[] args) throws Exception {
		String serverHost = "127.0.0.1";
		int serverPort = 3344;
		UdpServerSocket udpServerSocket = new UdpServerSocket(serverHost, serverPort);
		while (true) {
			udpServerSocket.receive();
			udpServerSocket.response("你好,sterning!");

		}
	}
}
