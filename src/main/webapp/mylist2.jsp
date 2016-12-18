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
<title>设备列表</title>
<link href="./css/layer.css" type="text/css" rel="styleSheet"
	id="layermcss">
<link rel="stylesheet" type="text/css" href="./css/layer.css">
<link rel="stylesheet" type="text/css" href="./css/new.css">
<link type="text/css" href="./css/rzr_main_1.css" rel="stylesheet">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/wx/list_page.css" rel="stylesheet">
<style type="text/css">
</style>

<script type="text/javascript">

	function showPage() {

		window.location.href = "/wx/haire/index.html";
	}
</script>

<style type="css/text">

</style>
</head>

<body style="margin: 0;">
	<div class="page1">
		<div id="mainmenu">
			<div class="row"
				style="border-radius: 5px; background-color: #58e1c8;">
				<div class="row">
					<div class="col-xs-2" style="padding: 0px;">
						<img src="./image/jhq_w.png"
							style="width: 100%; margin-top: 18%; margin-left: 50%;">
					</div>
					<div class="col-xs-5"
						style="margin-left: 5%; padding: 5% 0% 5% 10%;">
						<div class="row"
							style="color: white; font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">空气净化器</div>
						<div class="row"
							style="color: rgb(168, 165, 185); font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">&nbsp;</div>
						<div class="row"
							style="font-family: 'Microsoft YaHei'; color: white;">
							<img id="img_C893464AE12A" src="./image/在线.png"
								style="width: 15px; height: 13px;"><span
								id="s_C893464AE12A" style="color: white;">&nbsp;&nbsp;在线</span>
						</div>
					</div>
					<div class="col-xs-3" style="margin-left: -10%;">
						<div class="row" style="text-align: center; margin-top: 50%;">
							<img src="./image/pm25.png"
								style="width: 70%; padding-left: 10px;">
						</div>
						<div id="ListPM25_C893464AE12A" class="row"
							style="text-align: center; border-radius: 100px; margin-top: 5%; margin-left: 20%; margin-right: 20%; font-family: 'Microsoft YaHei'; color: white;">34</div>
					</div>
					<div class="col-xs-1" style="padding: 0px; margin-left: 2%;">
						<img src="./image/下拉.png" style="width: 100%; margin-top: 80%"
							onclick="showPage();">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>