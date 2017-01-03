<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="margin: 0;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>设备列表${code}</title>
<link href="./css/layer.css" type="text/css" rel="styleSheet"
	id="layermcss">
<link rel="stylesheet" type="text/css" href="./css/layer.css">
<link rel="stylesheet" type="text/css" href="./css/new.css">
<link type="text/css" href="./css/rzr_main_1.css" rel="stylesheet">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/wx/list_page.css" rel="stylesheet">
<script type="text/javascript" src="/wx/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="/wx/js/device_list.js"></script>
<style type="text/css">
</style>

<script type="text/javascript">
	function showPage() {

		window.location.href = "/wx/haire/index.html?v1.1";
	}
</script>

<style type="css/text">

</style>
</head>

<body style="margin: 0;">
<input type="hidden" value="${param.code}" id="key_code" name="key_code">
	<div class="page1">
		<div id="mainmenu">
			<div class="row"
				style="border-radius: 5px; background-color: #58e1c8;" id="father_row">
			</div>
		</div>
	</div>
</body>
</html>