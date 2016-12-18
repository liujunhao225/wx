package wx;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.freemarker.WXProductID;

import dao.WXTicketDao;

public class WXUbindAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		PrintWriter pw = null;
		response.setCharacterEncoding("utf-8");
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}
		WXTicketDao dao = new WXTicketDao();

		JSONObject job = dao.getTicket();

		String ticket = "";

		if (job.get("rescode").equals("0000")) {
			ticket = job.getString("ticket");
			String token = job.getString("token");
			if ("".equals(ticket.trim())) {
				// create new ticket
				token = createToken();

				ticket = createTicket(token);

				dao.insertTicket(ticket);
			}

			WXProductID wxp = new WXProductID();

//			String result = wxp.unBound(token, ticket);
			
//			pw.write(result);

		} else {
			pw.write("数据库连接出现问题请核查");
		}

	}

	private String createTicket(String token) {
		WXProductID wxp = new WXProductID();
		String ticket = wxp.getTicket(token);
		JSONObject job = new JSONObject(ticket);

		return job.getString("ticket");

	}

	private String createToken() {

		WXProductID wxp = new WXProductID();

		String token = wxp.accessToken("");

		return token;

	}
	
	public static void main(String[] args) {
		System.out.println(System.currentTimeMillis()/1000);
	}

}
