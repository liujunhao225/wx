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

    var second = 5;
    wx.ready(function () {
        wx.checkJsApi({
            jsApiList: ['configWXDeviceWiFi'],
            success: function(res) {
                wx.invoke('configWXDeviceWiFi', {}, function(res){
                    var err_msg = res.err_msg;
                    if(err_msg == 'configWXDeviceWiFi:ok') {
                        $('#message').html("配置 WIFI成功，<span id='second'>5</span>秒后跳转到首页。");
                        setInterval(count,1000);
                        return;
                    } else {
                        $('#message').html("配置 WIFI失败，是否<a href=\"/wechat/scan/airkiss" + window.location.search +  "\">再次扫描</a>。<br>不配置WIFI,<a href=\"https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxf1867e87a4eeeb16&redirect_uri=http://letux.xyz/wechat/page/main&response_type=code&scope=snsapi_base&state=1#wechat_redirect\">直接进入首页</a>。");
                    }
                });
            }
        });
    });
    function count(){
    	second--;
        $('#second').html(second);
        if(second == 0){
            //跳转到首页
            window.location.href='/consumer/main';
        }
    }
</script>

</html>

