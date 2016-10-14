<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page language="java" import="wx.WeiXinSign"%>

<html>
<head>
<meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试微信</title>
<%
	Map<String, Object> ret = new HashMap<String, Object>();
	ret = WeiXinSign.getConfig(request);
	request.setAttribute("appId", ret.get("appId"));
	request.setAttribute("timestamp", ret.get("timestamp"));
	request.setAttribute("nonceStr", ret.get("nonceStr"));
	request.setAttribute("signature", ret.get("signature"));
%>
</head>

<body>${appId}</body>


<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
	// 微信信息的以及调用的配置  
	wx.config({
		debug : false,
		beta:true,
		appId : '${appId}',
		timestamp : '${timestamp}',
		nonceStr : '${nonceStr}',
		signature : '${signature}',
		jsApiList : [ 'openWXDeviceLib', 'getWXDeviceTicket','configWXDeviceWiFi']
	// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
	});

    wx.ready(function () {
        wx.checkJsApi({
            jsApiList: ['configWXDeviceWiFi'],
            success: function(res) {
            	wx.on('onScanWXDeviceResult', function(res) {
					var ret_ = res.devices;
					for (var i = 0; i < ret_.length; i++) {
						var macid = JSON.stringify(res.devices[i].deviceId)
								.replace(/\"/g, "");
						//给扫描到的设备添加点击事件
						$("#initBle").append(
								"<button onclick=\"bindBle('" + macid
										+ "')\">扫描到设备：" + macid + "</button>");
					}
				});
				//手机蓝牙状态改变时触发 （这是监听事件的调用方法，注意，监听事件都没有参数）    
				wx.on('onWXDeviceBluetoothStateChange', function(res) {
					//把res输出来看吧    
					$("#initBle").append(
							"<p>蓝牙状态变更：" + JSON.stringify(res) + "</p>");
				});
				//设备绑定状态改变事件（解绑成功，绑定成功的瞬间，会触发）    
				wx.on('onWXDeviceBindStateChange', function(res) {

					$("#initBle").append(
							"<p>绑定状态变更：" + JSON.stringify(res) + "</p>");
				});
				//设备连接状态改变    
				wx.on('onWXDeviceStateChange', function(res) {
					//有3个状态：connecting连接中,connected已连接,unconnected未连接    
					//每当手机和设备之间的状态改变的瞬间，会触发一次    

					$("#initBle").append("<p>设备连接状态：" + res.state + "</p>");
				});
				//接收到设备传来的数据    
				wx.on('onReceiveDataFromWXDevice', function(res) {
					$("#initBle").append(
							"<p>收到设备数据：" + JSON.stringify(res) + "</p>");
				});
            }
        });
    });
</script>

</html>

