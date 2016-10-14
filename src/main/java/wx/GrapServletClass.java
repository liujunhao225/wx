package wx;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GrapServletClass extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String phone = request.getParameter("phone");
		String jinshu = request.getParameter("jin");
		int jin = 0;
		String result = "";
		try {
			jin = Integer.parseInt(jinshu);
		} catch (NumberFormatException e) {
			result = "斤数有误，请输入数字";
			out.println(result);
		}

		boolean flag = isPhoneNum(phone);
		if (flag == false) {
			result = "电话号码有误";
			out.println(result);
		}
		if (jin > 0) {
			insertNumber(phone, jin);
			out.println("您已提交成功，稍后会和您电话联系.");
		}

	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		doPost(request, response);
	}

	private boolean isPhoneNum(String phone) {
		try {
			Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
			Matcher matcher = p.matcher(phone);

			return matcher.find();
		} catch (Exception ex) {
			return false;
		}
	}

	private void insertNumber(String phone, int jin) {
		String sql = "insert into putao( phone,jin) values(?,?)";
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (connection.isValid(3000)) {
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1, phone);
				ps.setInt(2, jin);
				ps.execute();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
