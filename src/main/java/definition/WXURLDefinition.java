package definition;

public class WXURLDefinition {

	// 获取token接口
	public static final String TOKE_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx7b982f3eac2bc602&secret=bceb1e2455d47bcad880fb7dcfaab0ed";

	// 绑定设备接口
	public static final String NEW_BIND_DEVICE_URL = "https://api.weixin.qq.com/device/getqrcode?access_token=%s&product_id=%s";

	// 更新设备属性接口
	public static final String UPDATE_DEVICE_URL = "https://api.weixin.qq.com/device/authorize_device?access_token=%s";

	// 获取用户所有设备接口
	public static final String GET_USER_DEIVCE_LIST_URL = "https://api.weixin.qq.com/device/get_bind_device?access_token=%s&openid=%s";

	// 控制设备参数
	public static final String SET_DEVICE_STATUS = "https://api.weixin.qq.com/hardware/mydevice/platform/ctrl_device?access_token=%s";
	
	//获取 用户openID接口
	public static final String GET_USER_OPENID_URL = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code";
}
