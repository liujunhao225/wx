// 微信信息的以及调用的配置
wx.config({
	debug : true,
	beta : true,
	appId : '${appId}',
	timestamp : '${timestamp}',
	nonceStr : '${nonceStr}',
	signature : '${signature}',
	jsApiList : [ 'openWXDeviceLib', 'getWXDeviceTicket', 'getWXDeviceInfos',
			'configWXDeviceWiFi' ]
// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
});
wx.ready(function() {
	wx.checkJsApi({
		jsApiList : [ 'openWXDeviceLib', 'getWXDeviceInfos' ],
		success : function(res) {
			wx.invoke('openWXDeviceLib', {}, function(res) {
				alert(res.err_msg);
				wx.invoke('getWXDeviceInfos', {}, function(res) {
					alert(res.deviceInfos);
				});
			});

		}
	});
});
