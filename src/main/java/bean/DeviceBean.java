package bean;

public class DeviceBean {

	private String deviceType;// 设备类型

	private String deviceId;// 设备ID
	private String deviceStatus;// 设备状态 是否连接
	private String devicePmTwo;// 设备PM2.5
	private String deviceFilter;// 设备甲醛

	private String data;

	public static DeviceBean build(String deviceId, String deviceType, String data) {

		DeviceBean bean = new DeviceBean();
		String deviceStatus = data.substring(1, 2);
		String devicePmTwo = data.substring(1, 2);
		String deviceFilter = data.substring(1, 2);
		bean.setDeviceId(deviceId);
		bean.setDeviceType(deviceType);
		bean.setDevicePmTwo(devicePmTwo);
		bean.setDeviceFilter(deviceFilter);
		bean.setDeviceStatus(deviceStatus);
		return bean;
	}

	public static DeviceBean build(String deviceId) {
		DeviceBean bean = new DeviceBean();
		bean.setDeviceId(deviceId);
		bean.setDeviceStatus("2");
		return bean;
	}

	public static String DeviceBeanToString(String autoFlag, String windLevel) {
		// FIXME
		StringBuffer sb = new StringBuffer();
		sb.append("");
		sb.append("");
		return "";
	}

	public String getDeviceType() {
		return deviceType;
	}

	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	public String getDeviceStatus() {
		return deviceStatus;
	}

	public void setDeviceStatus(String deviceStatus) {
		this.deviceStatus = deviceStatus;
	}

	public String getDevicePmTwo() {
		return devicePmTwo;
	}

	public void setDevicePmTwo(String devicePmTwo) {
		this.devicePmTwo = devicePmTwo;
	}

	public String getDeviceFilter() {
		return deviceFilter;
	}

	public void setDeviceFilter(String deviceFilter) {
		this.deviceFilter = deviceFilter;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

}
