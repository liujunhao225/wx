package bean;

public class DeviceBean {

	private String deviceType;// 设备类型

	private String deviceId;// 设备ID

	private String deviceStatus;// 设备状态 是否连接

	private String devicePmTwo;// 设备PM2.5

	private String jiaquan;// 设备甲醛

	private String windLevel;// 风速

	private String warmUpFlag;// 加热功能

	private String anionFlag;// 负离子状态

	private String eryanghuatan;// 二氧化碳

	private String humidity;// 温度

	private String luxin;// 滤蕊

	private String tempreture;

	private String data;

	public static DeviceBean build(String deviceId, String deviceType, String data) {

		DeviceBean bean = new DeviceBean();
		bean.setDeviceId(deviceId);

		String deviceStatus = data.substring(0, 1);// 自动或者手动
		bean.setDeviceStatus(deviceStatus);

		String windLevel = data.substring(1, 2);// 0 = 无风 1 = 1级风 2 级风 3级风
		bean.setWindLevel(windLevel);
		String warmUpFlag = data.substring(2, 3);// 0 = 不加热 1加热
		bean.setWarmUpFlag(warmUpFlag);
		String anion = data.substring(3, 4);// 负离子 0 = 无负离子
		bean.setAnionFlag(anion);

		String tempreture = data.substring(4, 8);// 温度带正负号
		bean.setTempreture(tempreture);

		String humidity = data.substring(8, 10);// 湿度 百分比
		bean.setHumidity(humidity);

		String formaldehyde = data.substring(10, 14);// pm2.5值
		bean.setDevicePmTwo(formaldehyde);

		String jiaquan = data.substring(14, 18);// 甲醛v
		bean.setJiaquan(jiaquan);

		String eryanghuatan = data.substring(18, 22);// 二氧化碳
		bean.setEryanghuatan(eryanghuatan);
		String luxin = data.substring(22, 28);
		bean.setLuxin(luxin);
		return bean;
	}

	public static DeviceBean build(String deviceId) {
		DeviceBean bean = new DeviceBean();
		bean.setDeviceId(deviceId);
		bean.setDeviceStatus("2");
		return bean;
	}

	public static String DeviceBeanToString(String autoFlag, String windLevel, String warmUpFlag, String anion) {
		
		StringBuffer sb = new StringBuffer();
		sb.append(autoFlag);
		sb.append(windLevel);
		sb.append(warmUpFlag);
		sb.append(anion);
		return sb.toString();
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

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getEryanghuatan() {
		return eryanghuatan;
	}

	public void setEryanghuatan(String eryanghuatan) {
		this.eryanghuatan = eryanghuatan;
	}

	public String getLuxin() {
		return luxin;
	}

	public void setLuxin(String luxin) {
		this.luxin = luxin;
	}

	public String getJiaquan() {
		return jiaquan;
	}

	public void setJiaquan(String jiaquan) {
		this.jiaquan = jiaquan;
	}

	public String getWindLevel() {
		return windLevel;
	}

	public void setWindLevel(String windLevel) {
		this.windLevel = windLevel;
	}

	public String getWarmUpFlag() {
		return warmUpFlag;
	}

	public void setWarmUpFlag(String warmUpFlag) {
		this.warmUpFlag = warmUpFlag;
	}

	public String getAnionFlag() {
		return anionFlag;
	}

	public void setAnionFlag(String anionFlag) {
		this.anionFlag = anionFlag;
	}

	public String getTempreture() {
		return tempreture;
	}

	public void setTempreture(String tempreture) {
		this.tempreture = tempreture;
	}

	public String getHumidity() {
		return humidity;
	}

	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}

}
