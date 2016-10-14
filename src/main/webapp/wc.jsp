<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page language="java" import="wx.WeiXinSign"%>

<html>
<head>
<meta name="viewport"
	content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试上传图片</title>
<%
	Map<String, Object> ret = new HashMap<String, Object>();
	ret = WeiXinSign.getConfig(request);
	request.setAttribute("appId", ret.get("appId"));
	request.setAttribute("timestamp", ret.get("timestamp"));
	request.setAttribute("nonceStr", ret.get("nonceStr"));
	request.setAttribute("signature", ret.get("signature"));
%>
</head>

<body>${appId}
	<input type="button" onClick="invokeCaramer();"
		style="width: 60px; height: 40px;" value="选择图片" />

	<input type="button" onClick="uploadImg();"
		style="width: 60px; height: 40px;" value="上传图片" />
	<br />
	<span id="msgId"></span>
</body>


<script type="text/javascript" src="./js/jquery-1.10.1.min.js"></script>
<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
	// 微信信息的以及调用的配置
	wx.config({
		debug : true,
		beta : true,
		appId : '${appId}',
		timestamp : '${timestamp}',
		nonceStr : '${nonceStr}',
		signature : '${signature}',
		jsApiList : [ 'chooseImage', 'uploadImage' ]
	// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
	});
	function invokeCaramer() {
		wx.chooseImage({
			count : 1, // 默认9
			sizeType : [ 'original', 'compressed' ], // 可以指定是原图还是压缩图，默认二者都有
			sourceType : [ 'original', 'camera' ], // 可以指定来源是相册还是相机，默认二者都有
			success : function(res) {
				$("#msgId").append("设备消息:" + JSON.stringify(res));
				var localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
				$("#msgId").html(localIds);
			}
		});
	}

	function uploadImg() {
		var imageId  = $("#msgId").html();
		console.log("imageId:"+imageId);
		wx.uploadImage({
			localId : imageId,
			isShowProgressTips : 1, // 默认为1，显示进度提示  
			success : function(res) {
				mediaId = res.serverId; // 返回图片的服务器端ID  
				$("#msgId").html(mediaId);
			},
			fail : function(error) {
				alert(Json.stringify(error));
			}

		});

	}
</script>

</html>
