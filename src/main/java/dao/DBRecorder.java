package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import bean.DeviceBean;
import definition.KeyParamDefinition;

/**
 * DB operator
 * 
 * @author ljh
 *
 */
public class DBRecorder {

	private static final String name = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://127.0.0.1/putao";

	private static final String user = "root";
	private static final String password = "123456";

	private static Logger logger = Logger.getLogger(DBRecorder.class);

	static {
		try {
			Class.forName(name);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 异步增加设备
	 * 
	 * @param device_id
	 * @param device_type
	 * @param device_license
	 * @param mac
	 */
	public void addDevice(final String device_id, final String device_type, final String device_license,
			final String mac) {
		Runnable runable = new Runnable() {
			public void run() {

				Connection conn = null;
				String sql = "INSERT INTO(Device_id,Device_type,Device_license,Mac_address)" + " VALUES (?,?,?,?)";
				try {
					// 连接数据库

					conn = DriverManager.getConnection(url, user, password);

					PreparedStatement pst = conn.prepareStatement(sql);

					pst.setString(1, device_id);
					pst.setString(2, device_type);
					pst.setString(3, device_license);
					pst.setString(4, mac);

					pst.execute(sql);
					// 插入数据
				} catch (SQLException ex) {

					logger.error("插入数据库失败：运行" + sql + ";参数:" + device_id + "--" + device_type + "--" + device_license
							+ "--" + mac);
					ex.printStackTrace();
				} finally {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		};
		runable.run();
	}

	/**
	 * 获取用户所有的设备状态
	 * 
	 * @param param
	 * @param set
	 * @return
	 */
	public List<DeviceBean> getDevicelistStatus(String param, Set<String> set) {

		Connection conn = null;

		// 查询5 秒以内上报过数据的设备
		String sql = "SELECT Device_id,device_type,Data FROM wx_device_upload_log " + "WHERE Device_id IN(" + param
				+ ") AND create_time >"
				+ (System.currentTimeMillis() / 1000 - KeyParamDefinition.LAST_UPDATE_MSG_INTERNAL);
		// 连接数据库
		logger.info(sql);
		List<DeviceBean> list = new ArrayList<DeviceBean>();
		try {
			conn = DriverManager.getConnection(url, user, password);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				String tempID = rs.getString(1);
				String tempData = rs.getString(3);
				set.remove(tempID);
				DeviceBean tempBean = DeviceBean.build(tempID, "", tempData);
				list.add(tempBean);
			}
			for (String str : set) {
				DeviceBean tempBean = DeviceBean.build(str);
				list.add(tempBean);
			}
			return list;

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 获取设备状态详情
	 * 
	 * @param deviceId
	 * @return
	 */
	public DeviceBean getDeviceInfo(String deviceId) {

		Connection conn = null;

		String sql = "SELECT Device_id,device_type,Data FROM wx_device_upload_log "
				+ "WHERE Device_id =? AND create_time >"
				+ (System.currentTimeMillis() / 1000 - KeyParamDefinition.LAST_UPDATE_MSG_INTERNAL);
		// 连接数据库
		logger.info(sql);
		try {
			conn = DriverManager.getConnection(url, user, password);
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, deviceId);
			ResultSet rs = st.executeQuery(sql);
			DeviceBean tempBean = null;
			while (rs.next()) {
				String tempID = rs.getString(1);
				String tempData = rs.getString(3);
				tempBean = DeviceBean.build(tempID, "", tempData);
			}
			return tempBean;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 增加控制日志
	 * 
	 * @param openID
	 * @param bean
	 * @return
	 */
	public int addSettingLog(String openID, DeviceBean bean) {

		Connection conn = null;

		String sql = "INSERT INTO wx_setting_msg_log (OpenID,device_type,device_id,Setting_msg,Settting_time) values(?,?,?,?,?)";
		// 连接数据库
		logger.info(sql);
		try {
			conn = DriverManager.getConnection(url, user, password);
			PreparedStatement st = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			st.setString(1, openID);
			st.setString(2, bean.getDeviceType());
			st.setString(3, bean.getDeviceId());
			st.setString(4, bean.getData());
			st.setLong(5, System.currentTimeMillis() / 1000);
			st.executeUpdate(sql);
			ResultSet rsKey = st.getGeneratedKeys();
			rsKey.next();
			int key = rsKey.getInt(1);
			return key;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	/**
	 * 更新控制日志
	 * 
	 * @param openID
	 * @param bean
	 * @return
	 */
	public void updateSettingLog(long id, String msg_id, long updateTime, String response) {

		Connection conn = null;

		String sql = "UPDATE wx_setting_msg_log SET Msg_id=" + id + ",Update_time=" + updateTime + ",Response_code="
				+ response + " WHERE id=" + id + "";
		// 连接数据库
		logger.info(sql);
		try {
			conn = DriverManager.getConnection(url, user, password);

			Statement st = conn.createStatement();

			st.executeUpdate(sql);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
