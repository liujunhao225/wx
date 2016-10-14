<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<meta name="viewport"
	content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试微信</title>
</head>
<!--
获取用户openID
https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx7b982f3eac2bc602&redirect_uri
=http://www.legou114.net/wx/openId.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect-->
<body>
	<input type="hidden" value="${param.code}">
</body>

</html>

