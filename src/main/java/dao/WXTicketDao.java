package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONObject;

public class WXTicketDao {

	public static final String name = "com.mysql.jdbc.Driver";
	public static final String url = "jdbc:mysql://127.0.0.1/putao";

	public static final String user = "root";
	public static final String password = "123456";

	static {
		try {
			Class.forName(name);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取ticket
	 * 
	 * @return
	 */
	public JSONObject getTicket() {

		JSONObject job = new JSONObject();
		String token = "";
		String ticket ="";
		Connection conn = null;
		try {
			String sql = "select w_token, w_ticket from w_config";

			conn = DriverManager.getConnection(url, user, password);

			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				token = rs.getString(1);
				ticket = rs.getString(2);
			}
			job.put("rescode", "0000");
			job.put("token", token);
			job.put("ticket", ticket);

		} catch (SQLException e) {
			job.put("rescode", "1111");
			job.put("result", "数据库连接错误，请处理！");
			e.printStackTrace();
		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}

			
			
		}
		return job;

	}

	/**
	 * create ticket
	 * 
	 * @param ticket
	 */
	public void insertTicket(String ticket) {
		Connection conn = null;
		try {
			String sql = "insert into w_config(w_ticket) values(?)";
			conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, ticket);
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}

		}
	}

	/**
	 * get Token
	 * 
	 * @return
	 */
	public JSONObject getToken() {
		JSONObject job = new JSONObject();
		String result = "";
		Connection conn = null;
		try {
			String sql = "select w_token from w_config";

			conn = DriverManager.getConnection(url, user, password);

			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				result = rs.getString(1);
			}
			job.put("rescode", "0000");
			job.put("result", result);

		} catch (SQLException e) {
			job.put("rescode", "1111");
			job.put("result", "数据库连接错误，请处理！");
			e.printStackTrace();
		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}

		}
		return job;

	}

	/**
	 * create token
	 * 
	 * @param token
	 */
	public void insertToken(String token) {
		Connection conn = null;
		try {
			String sql = "insert into w_config(w_token) values(?)";
			conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, token);
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}

		}
	}
}
