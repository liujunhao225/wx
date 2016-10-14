<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
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
<script type="text/javascript" src="./js/rzr_jquery_2.js"></script>
<script type="text/javascript" src="./js/rzr_Jquery_3.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/lsr_equipmentlist.js"></script>
<script src="./js/devicelist-relation-page.js"></script>
<script src="./js/devicelist-detector-b3-page.js"></script>
<script src="./js/devicelist-detector-b3-relation.js"></script>
<script src="./js/devicelist-toast.js"></script>
<script src="./js/history-dialog.js"></script>
<script src="./js/devicelist-ab-xinfeng-page1.js"></script>
<script src="./js/devicelist-b3r.js"></script>
<script src="./js/devicelist-b1.js"></script>
<script src="./js/layer.js"></script>


<script type="text/javascript">
        console.time("test");
      
        !function (win, option) {
            var count = 0,
                designWidth = option.designWidth,
                designHeight = option.designHeight || 0,
                designFontSize = option.designFontSize || 20,
                callback = option.callback || null,
                root = document.documentElement,
                body = document.body,
                rootWidth, newSize, t, self;
            //返回root元素字体计算结果
            function _getNewFontSize() {
                var scale = designHeight !== 0 ? Math.min(win.innerWidth / designWidth, win.innerHeight / designHeight) : win.innerWidth / designWidth;
                return parseInt(scale * 10000 * designFontSize) / 10000;
            }
            !function () {
                rootWidth = root.getBoundingClientRect().width;
                self = self ? self : arguments.callee;
                //如果此时屏幕宽度不准确，就尝试再次获取分辨率，只尝试20次，否则使用win.innerWidth计算
                if (rootWidth !== win.innerWidth && count < 20) {
                    win.setTimeout(function () {
                        count++;
                        self();
                    }, 0);
                } else {
                    newSize = _getNewFontSize();
                    //如果css已经兼容当前分辨率就不管了
                    if (newSize + 'px' !== getComputedStyle(root)['font-size']) {
                        root.style.fontSize = newSize + "px";
                        return callback && callback(newSize);
                    };
                };
            }();
            //横竖屏切换的时候改变fontSize，根据需要选择使用
            win.addEventListener("onorientationchange" in window ? "orientationchange" : "resize", function () {
                clearTimeout(t);
                t = setTimeout(function () {
                    self();
                }, 300);
            }, false);
        }(window, {
            designWidth: 640,
            designHeight: 1136,
            designFontSize: 20,
            callback: function (argument) {
                console.timeEnd("test")
            }
        });
    </script>
<style type="text/css">
.datetimepicker {
	color: #000000;
	padding: 4px;
	margin-top: 1px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	direction: ltr;
}

.datetimepicker-inline {
	width: 220px;
}

.datetimepicker.datetimepicker-rtl {
	direction: rtl;
}

.datetimepicker.datetimepicker-rtl table tr td span {
	float: right;
}

.datetimepicker-dropdown, .datetimepicker-dropdown-left {
	top: 0;
	left: 0;
}

[class*=" datetimepicker-dropdown"]:before {
	content: '';
	display: inline-block;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #ccc;
	border-bottom-color: rgba(0, 0, 0, 0.2);
	position: absolute;
}

[class*=" datetimepicker-dropdown"]:after {
	content: '';
	display: inline-block;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-bottom: 6px solid #fff;
	position: absolute;
}

[class*=" datetimepicker-dropdown-top"]:before {
	content: '';
	display: inline-block;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-top: 7px solid #ccc;
	border-top-color: rgba(0, 0, 0, 0.2);
	border-bottom: 0;
}

[class*=" datetimepicker-dropdown-top"]:after {
	content: '';
	display: inline-block;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-top: 6px solid #fff;
	border-bottom: 0;
}

.datetimepicker-dropdown-bottom-left:before {
	top: -7px;
	right: 6px;
}

.datetimepicker-dropdown-bottom-left:after {
	top: -6px;
	right: 7px;
}

.datetimepicker-dropdown-bottom-right:before {
	top: -7px;
	left: 6px;
}

.datetimepicker-dropdown-bottom-right:after {
	top: -6px;
	left: 7px;
}

.datetimepicker-dropdown-top-left:before {
	bottom: -7px;
	right: 6px;
}

.datetimepicker-dropdown-top-left:after {
	bottom: -6px;
	right: 7px;
}

.datetimepicker-dropdown-top-right:before {
	bottom: -7px;
	left: 6px;
}

.datetimepicker-dropdown-top-right:after {
	bottom: -6px;
	left: 7px;
}

.datetimepicker>div {
	display: none;
}

.datetimepicker.minutes div.datetimepicker-minutes {
	display: block;
}

.datetimepicker.hours div.datetimepicker-hours {
	display: block;
}

.datetimepicker.days div.datetimepicker-days {
	display: block;
}

.datetimepicker.months div.datetimepicker-months {
	display: block;
}

.datetimepicker.years div.datetimepicker-years {
	display: block;
}

.datetimepicker table {
	margin: 0;
}

.datetimepicker td, .datetimepicker th {
	text-align: center;
	width: 20px;
	height: 20px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	border: 0;
}

.table-striped .datetimepicker table tr td, .table-striped .datetimepicker table tr th
	{
	background-color: transparent;
}

.datetimepicker table tr td.minute:hover {
	background: #eee;
	cursor: pointer;
}

.datetimepicker table tr td.hour:hover {
	background: #eee;
	cursor: pointer;
}

.datetimepicker table tr td.day:hover {
	background: #eee;
	cursor: pointer;
}

.datetimepicker table tr td.old, .datetimepicker table tr td.new {
	color: #999;
}

.datetimepicker table tr td.disabled, .datetimepicker table tr td.disabled:hover
	{
	background: 0;
	color: #999;
	cursor: default;
}

.datetimepicker table tr td.today, .datetimepicker table tr td.today:hover,
	.datetimepicker table tr td.today.disabled, .datetimepicker table tr td.today.disabled:hover
	{
	background-color: #fde19a;
	background-image: -moz-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -ms-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fdd49a),
		to(#fdf59a));
	background-image: -webkit-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -o-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: linear-gradient(top, #fdd49a, #fdf59a);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fdd49a',
		endColorstr='#fdf59a', GradientType=0);
	border-color: #fdf59a #fdf59a #fbed50;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
}

.datetimepicker table tr td.today:hover, .datetimepicker table tr td.today:hover:hover,
	.datetimepicker table tr td.today.disabled:hover, .datetimepicker table tr td.today.disabled:hover:hover,
	.datetimepicker table tr td.today:active, .datetimepicker table tr td.today:hover:active,
	.datetimepicker table tr td.today.disabled:active, .datetimepicker table tr td.today.disabled:hover:active,
	.datetimepicker table tr td.today.active, .datetimepicker table tr td.today:hover.active,
	.datetimepicker table tr td.today.disabled.active, .datetimepicker table tr td.today.disabled:hover.active,
	.datetimepicker table tr td.today.disabled, .datetimepicker table tr td.today:hover.disabled,
	.datetimepicker table tr td.today.disabled.disabled, .datetimepicker table tr td.today.disabled:hover.disabled,
	.datetimepicker table tr td.today[disabled], .datetimepicker table tr td.today:hover[disabled],
	.datetimepicker table tr td.today.disabled[disabled], .datetimepicker table tr td.today.disabled:hover[disabled]
	{
	background-color: #fdf59a;
}

.datetimepicker table tr td.today:active, .datetimepicker table tr td.today:hover:active,
	.datetimepicker table tr td.today.disabled:active, .datetimepicker table tr td.today.disabled:hover:active,
	.datetimepicker table tr td.today.active, .datetimepicker table tr td.today:hover.active,
	.datetimepicker table tr td.today.disabled.active, .datetimepicker table tr td.today.disabled:hover.active
	{
	background-color: #fbf069;
}

.datetimepicker table tr td.active, .datetimepicker table tr td.active:hover,
	.datetimepicker table tr td.active.disabled, .datetimepicker table tr td.active.disabled:hover
	{
	background-color: #006dcc;
	background-image: -moz-linear-gradient(top, #08c, #04c);
	background-image: -ms-linear-gradient(top, #08c, #04c);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#08c),
		to(#04c));
	background-image: -webkit-linear-gradient(top, #08c, #04c);
	background-image: -o-linear-gradient(top, #08c, #04c);
	background-image: linear-gradient(top, #08c, #04c);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088cc',
		endColorstr='#0044cc', GradientType=0);
	border-color: #04c #04c #002a80;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	color: #fff;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}

.datetimepicker table tr td.active:hover, .datetimepicker table tr td.active:hover:hover,
	.datetimepicker table tr td.active.disabled:hover, .datetimepicker table tr td.active.disabled:hover:hover,
	.datetimepicker table tr td.active:active, .datetimepicker table tr td.active:hover:active,
	.datetimepicker table tr td.active.disabled:active, .datetimepicker table tr td.active.disabled:hover:active,
	.datetimepicker table tr td.active.active, .datetimepicker table tr td.active:hover.active,
	.datetimepicker table tr td.active.disabled.active, .datetimepicker table tr td.active.disabled:hover.active,
	.datetimepicker table tr td.active.disabled, .datetimepicker table tr td.active:hover.disabled,
	.datetimepicker table tr td.active.disabled.disabled, .datetimepicker table tr td.active.disabled:hover.disabled,
	.datetimepicker table tr td.active[disabled], .datetimepicker table tr td.active:hover[disabled],
	.datetimepicker table tr td.active.disabled[disabled], .datetimepicker table tr td.active.disabled:hover[disabled]
	{
	background-color: #04c;
}

.datetimepicker table tr td.active:active, .datetimepicker table tr td.active:hover:active,
	.datetimepicker table tr td.active.disabled:active, .datetimepicker table tr td.active.disabled:hover:active,
	.datetimepicker table tr td.active.active, .datetimepicker table tr td.active:hover.active,
	.datetimepicker table tr td.active.disabled.active, .datetimepicker table tr td.active.disabled:hover.active
	{
	background-color: #039;
}

.datetimepicker table tr td span {
	display: block;
	width: 23%;
	height: 54px;
	line-height: 54px;
	float: left;
	margin: 1%;
	cursor: pointer;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.datetimepicker .datetimepicker-hours span {
	height: 26px;
	line-height: 26px;
}

.datetimepicker .datetimepicker-hours table tr td span.hour_am,
	.datetimepicker .datetimepicker-hours table tr td span.hour_pm {
	width: 14.6%;
}

.datetimepicker .datetimepicker-hours fieldset legend, .datetimepicker .datetimepicker-minutes fieldset legend
	{
	margin-bottom: inherit;
	line-height: 30px;
}

.datetimepicker .datetimepicker-minutes span {
	height: 26px;
	line-height: 26px;
}

.datetimepicker table tr td span:hover {
	background: #eee;
}

.datetimepicker table tr td span.disabled, .datetimepicker table tr td span.disabled:hover
	{
	background: 0;
	color: #999;
	cursor: default;
}

.datetimepicker table tr td span.active, .datetimepicker table tr td span.active:hover,
	.datetimepicker table tr td span.active.disabled, .datetimepicker table tr td span.active.disabled:hover
	{
	background-color: #006dcc;
	background-image: -moz-linear-gradient(top, #08c, #04c);
	background-image: -ms-linear-gradient(top, #08c, #04c);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#08c),
		to(#04c));
	background-image: -webkit-linear-gradient(top, #08c, #04c);
	background-image: -o-linear-gradient(top, #08c, #04c);
	background-image: linear-gradient(top, #08c, #04c);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088cc',
		endColorstr='#0044cc', GradientType=0);
	border-color: #04c #04c #002a80;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	color: #fff;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}

.datetimepicker table tr td span.active:hover, .datetimepicker table tr td span.active:hover:hover,
	.datetimepicker table tr td span.active.disabled:hover, .datetimepicker table tr td span.active.disabled:hover:hover,
	.datetimepicker table tr td span.active:active, .datetimepicker table tr td span.active:hover:active,
	.datetimepicker table tr td span.active.disabled:active,
	.datetimepicker table tr td span.active.disabled:hover:active,
	.datetimepicker table tr td span.active.active, .datetimepicker table tr td span.active:hover.active,
	.datetimepicker table tr td span.active.disabled.active,
	.datetimepicker table tr td span.active.disabled:hover.active,
	.datetimepicker table tr td span.active.disabled, .datetimepicker table tr td span.active:hover.disabled,
	.datetimepicker table tr td span.active.disabled.disabled,
	.datetimepicker table tr td span.active.disabled:hover.disabled,
	.datetimepicker table tr td span.active[disabled], .datetimepicker table tr td span.active:hover[disabled],
	.datetimepicker table tr td span.active.disabled[disabled],
	.datetimepicker table tr td span.active.disabled:hover[disabled] {
	background-color: #04c;
}

.datetimepicker table tr td span.active:active, .datetimepicker table tr td span.active:hover:active,
	.datetimepicker table tr td span.active.disabled:active,
	.datetimepicker table tr td span.active.disabled:hover:active,
	.datetimepicker table tr td span.active.active, .datetimepicker table tr td span.active:hover.active,
	.datetimepicker table tr td span.active.disabled.active,
	.datetimepicker table tr td span.active.disabled:hover.active {
	background-color: #039;
}

.datetimepicker table tr td span.old {
	color: #999;
}

.datetimepicker th.switch {
	width: 145px;
}

.datetimepicker th span.glyphicon {
	pointer-events: none;
}

.datetimepicker thead tr:first-child th, .datetimepicker tfoot tr:first-child th
	{
	cursor: pointer;
}

.datetimepicker thead tr:first-child th:hover, .datetimepicker tfoot tr:first-child th:hover
	{
	background: #eee;
}

.input-append.date .add-on i, .input-prepend.date .add-on i,
	.input-group.date .input-group-addon span {
	cursor: pointer;
	width: 14px;
	height: 14px;
}

.page2 .TimesForm {
	height: 10%;
}

.page2 .TimesForm .TimesForm-address {
	height: 40%;
	text-align: right;
	color: #FFFEFF;
	vertical-align: middle;
	line-height: 190%;
	font-size: 0.8em;
}

.page2 .TimesForm .TimesForm-time {
	height: 60%;
	background-color: #2d2a3c;
	line-height: 280%;
	font-size: 0.8em;
}

.page2 .TimesForm .TimesForm-time .col-xs-5 {
	text-align: left;
}

.page2 .TimesForm .TimesForm-time .col-xs-5 span {
	color: #4a475b;
}

.page2 .TimesForm .TimesForm-time .col-xs-2 {
	text-align: center;
	color: #131318;
}

.page2 .TimesForm .TimesForm-time .TimesRight {
	text-align: right;
}
</style>
<style>
.page0 {
	background-color: #373446;
	z-index: 18;
	width: 100%;
	position: absolute;
	visibility: hidden;
	z-index: 20;
}

.page0 .header2 {
	height: 8%;
	background-color: rgb(62, 59, 79);
	padding-left: 0%;
	padding-right: 0%;
	color: rgb(156, 153, 173);
}

.page0 .header2 .header2-left {
	height: 100%;
	text-align: left;
}

.page0 .header2 .header2-left span {
	font-size: 2.0em;
	font-weight: bolder;
}

.page0 .header2 .header2-right {
	height: 100%;
	text-align: right;
}

.page0 .header2 .header2-right img {
	height: 55%;
	margin-top: 9%;
}
/*------------*/
.page0 .anim {
	height: 50%;
	text-align: center;
	background-color: rgb(55, 52, 70);
}

.page0 .anim .rzr_dt_12 {
	height: 94%;
	margin-top: 3%;
	z-index: 10;
}

.page0 .anim .rzr_dt_22 {
	position: absolute;
	z-index: 11;
}

.page0 .anim .rzr_dt_32 {
	position: absolute;
	z-index: 12;
}

.page0 .anim .rzr_dt_42 {
	position: absolute;
	z-index: 13;
}

.page0 .anim .rzr_dt_label12 {
	text-align: center;
	position: absolute;
	width: 100%;
	font-size: 1.8em; /*color:#21ba99;*/
	color: #fff;
	z-index: 14;
}

.page0 .anim .rzr_dt_label22 {
	text-align: center;
	position: absolute;
	width: 100%;
	font-size: 4.0em;
	color: #fff;
	z-index: 15;
}
/*------------*/
.page0 .fontsButton2 {
	height: 10%;
	background-color: rgb(55, 52, 70);
}

.page0 .fontsButton2 p {
	text-align: center;
	color: #d0cde1;
}

.page0 .fontsButton2 p span {
	padding: 10px 15px 10px 15px;
	background-color: rgb(50, 48, 64);
	border-radius: 20px 0px 0px 20px;
	border: 1px solid #474456;
}

.page0 .fontsButton2 p a {
	color: #d0cde1;
}

.page0 .fontsButton2 p a span {
	padding: 10px 15px 10px 15px;
	background-color: rgb(50, 48, 64);
	border-radius: 0px 20px 20px 0px;
	border: 1px solid #474456;
}
/*------------*/
.page0 .footer {
	height: 32%;
	background-color: #323040;
	border: none;
	color: rgb(37, 217, 249);
}

.page0 .footer div {
	width: 100%;
	height: 50%;
}

.page0 .footer div table {
	height: 100%;
	width: 100%;
	text-align: center;
}

.page0 .footer div table tr {
	height: 100%;
	width: 100%;
}

.page0 .footer div table tr td {
	width: 33%;
	height: 100%;
}

.page0 .footer div table tr td .imgButtons0 {
	width: 90%;
	height: 90%;
	margin: 5% auto;
	padding-top: 5%;
	padding-bottom: 5%;
	border-radius: 10px;
}

.page0 .footer div table tr td .imgButtons0 .imgButtons0-img {
	height: 75%;
	width: 100%;
}

.page0 .footer div table tr td .imgButtons0 .imgButtons0-img img {
	width: 40%;
}

.page0 .footer div table tr td .imgButtons0 .imgButtons0-text {
	height: 15%;
	width: 100%;
}
</style>

<script type="text/javascript">
        var screenWidth = $(window).width();
        var screenHeight = $(window).height();
        var wsArray = new Array();
        var macArray = new Array();
        var noSupportMessage = "不支持html5";
        var ws;
        var intime;

//         var url = "ws://wechat.bjhike.com:11111/";
		var url ="ws://localhost:8080/wx/air"
		
 		 var sC893464AE12A_C893464AE12A = Createws('C893464AE12A','C893464AE12A','B3_L3');
			 wsArray['C893464AE12A_C893464AE12A']=sC893464AE12A_C893464AE12A;
			 macArray.push('C893464AE12A_C893464AE12A');


        function Createws(DeviceMac0, DeviceMac1, PName) {
            var noSupportMessage = "不支持html5";
            var ws;
            var intime;
            var support = "MozWebSocket" in window ? 'MozWebSocket' : ("WebSocket" in window ? 'WebSocket' : null);
            if (support == null) {
                showToast(noSupportMessage);
            }
            var ws = new window[support](url);
            ws.onmessage = function (evt) {
            	console.log(evt)
                ParserData(evt.data, DeviceMac0, DeviceMac1);
            }
            ws.onopen = function () {
                //alert(DeviceMac0+'--'+DeviceMac1+'上线了');

                if (DeviceMac0 == DeviceMac1) {
                	console.log("PName+"+PName);
                	console.log("DeviceMac0+"+DeviceMac0);
                    ws.send(PName + ',2,ConnectionAttr,' + DeviceMac0);
                }
                else {
                    ws.send(PName + ',2,ConnectionAttr,' + DeviceMac0 + "_" + DeviceMac1);
                }
            }
            ws.onclose = function () {
                //alert(DeviceMac0+'--'+DeviceMac1+'掉线了');
                ws = Createws(DeviceMac0, DeviceMac1, PName);
                wsArray[DeviceMac0 + "_" + DeviceMac1] = ws;
            }

            return ws;
        }

        ///解析数据
        function ParserData(Data, Mac, MacJHQ) {
            var Result = eval('(' + Data + ')');
            if (Data.indexOf("PM25") > -1 && Data.indexOf("ProtocolWord") == -1) {  //1
                $("#s_" + Mac).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                ///改变列表中的PM2.5
                $("#ListPM25_" + Mac).text(Result.CheckPM25);
                $("#H_Online_" + Mac).val("1");
                $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                $("#H_Switch_" + Mac).val(Result.OnOFFState);

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if ($("#H_Type_" + Mac).val() == "1") {
                        $("#s_AutoPM25").text(Result.AQIPM25);
                        $("#s_CheckPM25").text(Result.CheckPM25);
                        $("#span_PM25_Txt").text(SetPM25Content(Result.CheckPM25));
                        $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                        $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                        ///顺道
                        if ($("#H_CompanyID_" + Mac).val() == 6) {
                            if (Result.CheckPM25 > 10) {
                                $('#div_PM25Notice').html("<img src='./image/smile30.png' width='15px' height='15px' />请开启逸新空气净化器！");
                            }
                            else {
                                $('#div_PM25Notice').html("<img src='./image/smile30_1.png' width='15px' height='15px' />逸新，棒棒哒！");
                            }
                        }
                        if (Result.OnOFFState == 1) {
                            AnimSwitch('SwitchON');
                            $("#div_ONOFFTxt").text("已开");
                            $("#i_ONOFFState").attr("src", "./image/打开.png");
                        }
                        else {
                            AnimSwitch('SwitchOFF');
                            $("#div_ONOFFTxt").text("已关");
                            $("#i_ONOFFState").attr("src", "./image/关闭.png");
                        }
                    }
                    else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                        setB3RelationExhibition([], 1);
                        $('#relation-b3-pm25-title-text').text('室内PM2.5');
                        $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                        $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                        $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));

                        if (Result.OnOFFState == 1) {
                            $('#relation-b3-detector-switch-text').text('已开');
                            $('#relation-b3-detector-switch-back-div').css('background-color', '#3f3b50');
                        }
                        else {
                            $('#relation-b3-detector-switch-text').text('已关');
                            $('#relation-b3-detector-switch-back-div').css('background-color', '#2a2b36');
                        }
                    }
                    else {
                        $('#detector-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                        $('#detector-b3-pm25-content-text').text(Result.CheckPM25);
                        $('#detector-b3-pm25-title-text').text('室内PM2.5');
                        $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));

                        if (Result.OnOFFState == 1) {
                            $('#detector-b3-switch-text').text('已开');
                            $('#detector-b3-switch-img').attr('src', './image/打开.png');
                        }
                        else {
                            $('#detector-b3-switch-text').text('已关');
                            $('#detector-b3-switch-img').attr('src', './image/关闭.png');
                        }
                    }
                }
            }
            else if (Data.indexOf("OnOFFState") > -1) {
                $("#H_Online_" + Mac).val("1");
                $("#H_Switch_" + Mac).val(Result.OnOFFState);
                $("#H_Switch_" + MacJHQ).val(Result.OnOFFState);
                $("#s_" + Mac).html("&nbsp;&nbsp;在线");
                $("#img_" + Mac).attr("src", "./image/在线.png");
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");

                if (Result.DeviceMac == $("#H_DeviceMac").val() || Result.DeviceMac == MacJHQ) {
                    DeviceSwitch(Result, Mac, MacJHQ);
                }
            }
            else if (Data.indexOf("IsOnline") > -1) {//1
                if (Result.DeviceMac == Mac) {

                    $("#s_" + Mac).html("&nbsp;&nbsp;离线");
                    $("#img_" + Mac).attr("src", "./image/离线.png");
                    if ($("#H_Type_" + Mac).val() == "1") {
                        $("#H_OutPm25_" + Mac).val($("#s_AutoPM25").text());
                        $("#H_InPm25_" + Mac).val($("#s_CheckPM25").text());
                    }
                    else if ($("#H_Type_" + Mac).val() == "3" || $("#H_Type_" + Mac).val() == "4" || $("#H_Type_" + Mac).val() == "5" || $("#H_Type_" + Mac).val() == "6" || $("#H_Type_" + Mac).val() == "7" || $("#H_Type_" + Mac).val() == "8") {
                        $("#H_OutPm25_" + Mac).val($("#detector-b3-inside-pm25-text").text().replace("室外PM2.5：", ""));
                        $("#H_InPm25_" + Mac).val($("#detector-b3-pm25-content-text").text());
                    }

                    $("#H_Online_" + Mac).val("0");
                    //$("#H_Switch_" + MacJHQ).val('0');
                    $("#s_" + MacJHQ).html("&nbsp;&nbsp;离线");
                    $("#img_" + MacJHQ).attr("src", "./image/离线.png");

                    DeviceOFFLine(Result, Mac, MacJHQ);
                }
            }
            else if (Data.indexOf("WindSpeedLevel") > -1) {//1
                $("#H_Online_" + MacJHQ).val("1");
                $('#H_WindSpeed_' + MacJHQ).val(Result.WindSpeedLevel);
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                        //b1设备
                        if ($("#H_PGID").val() == 23) {
                            setB1AllData("", 1, -1, -1, -1, -1, -1, "", -1, Result.WindSpeedLevel, -1);
                        }
                        else if ($("#H_CompanyID").val() == 7) {//三个爸爸定制
                            $('#div_sange_windspeed').text('风速' + Result.WindSpeedLevel);
                        }
                        else {
                            $("#Img_WindSpeed").attr("src", "./image/风速1.png");
                            $("#div_WindSpeed").text('风速' + Result.WindSpeedLevel);
                        }
                    }
                        //X4
                    else if ($("#H_Type_" + Mac).val() == "10") {
                        bBXinFengChangeStatus(1);
                        aBXinFengSetSpeed(Result.WindSpeedLevel);
                    }
                        ///B3-R
                    else if ($("#H_Type_" + Mac).val() == "12") {
                        //用于快速反馈
                        if (IsChangeSpeedState == true) {
                            setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", -1, "", "", -1, Result.WindSpeedLevel, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                    }
                }
            }
            else if (Data.indexOf("FilterPer") > -1) {//1
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                $("#H_Online_" + MacJHQ).val("1");
                $('#H_lv_' + MacJHQ).val(Result.FilterPer);

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if ($("#H_Type_" + Mac).val() == "2" || $("#H_Type").val() == "11") {
                        //b1设备
                        if ($("#H_PGID").val() == 23) {
                            setB1AllData("", 1, -1, -1, -1, -1, Result.FilterPer, "", -1, -1, -1);
                        }
                        else if ($("#H_CompanyID").val() == 7) {
                            $('#sange-jinghuaqi-center-lvwang-sytext').text('滤网剩余');
                            $('#sange-jinghuaqi-center-lvwang-text').text(Result.FilterPer);
                            setSanGeLvWang(Result.FilterPer);
                        }
                        else {
                            $('#p_Txt').text('滤网剩余');
                            setLvWangPercent(Result.FilterPer);
                        }
                    }
                    else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                        //联动设备显示
                        $('#relation-b3-lvwang-text').text(Result.FilterPer + '%').css("font-size", "3.5em");
                    }
                }
            }
            else if (Data.indexOf("DeviceMode") > -1) {//1
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                $("#H_Online_" + MacJHQ).val("1");
                $('#H_Mode_' + MacJHQ).val(Result.DeviceMode);

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if (Result.DeviceMode == 0) {
                        if ($("#H_Type_" + Mac).val() == "2") {
                            //b1设备
                            if ($("#H_PGID").val() == 23) {
                                setB1AllData("", 1, -1, -1, -1, -1, -1, "", -1, -1, Result.DeviceMode);
                            }
                            else {
                                $('#div_sange_mode').text('智能关');
                            }
                        }
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetMode(Result.DeviceMode)
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {

                            ///用于快速反馈
                            if (IsChangeModeState == true) {
                                setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, '', -1, '', '', -1, -1, Result.DeviceMode, $("#H_ProjectName").val(), -1, -1, -1);
                            }
                        }
                    }
                    else if (Result.DeviceMode == 1) {
                        if ($("#H_Type_" + Mac).val() == "2") {
                            //b1设备
                            if ($("#H_PGID").val() == 23) {
                                setB1AllData('', '1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', Result.DeviceMode);
                            }
                            else {
                                $('#div_sange_mode').text('智能开');
                            }
                        }
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetMode(Result.DeviceMode)
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            ///用于快速反馈
                            if (IsChangeModeState == true) {
                                setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, '', -1, '', '', -1, -1, Result.DeviceMode, $("#H_ProjectName").val(), -1, -1, -1);
                            }
                        }
                    }
                }
            }
            else if (Data.indexOf("SleepMode") > -1) {//1
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                $("#H_Online_" + MacJHQ).val("1");
                $('#H_SleepMode_' + MacJHQ).val(Result.SleepMode);

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if (Result.SleepMode == 0) {
                        if ($("#H_Type_" + Mac).val() == "2") {
                            $("#Img_SleepMode").attr("src", "./image/2.png");
                            $("#div_SleepMode").text('睡眠关');
                        }
                    }
                    else if (Result.SleepMode == 1) {
                        if ($("#H_Type_" + Mac).val() == "2") {
                            $("#Img_SleepMode").attr("src", "./image/模式1.png");
                            $("#div_SleepMode").text('睡眠开');
                        }
                    }
                }
            }
            else if (Data.indexOf("ProtocolWord") > -1) {//
                $("#s_" + Mac).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                ///改变列表中的PM2.5
                $("#ListPM25_" + Result.DMac).text(Result.CheckPM25);
                $("#H_Online_" + Mac).val("1");

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if (Result.ProtocolWord == 'PM25') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);

                        if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2") {
                            setB3RelationExhibition([], 1);
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));
                        }
                            ///X4
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetSwitch(Result.Switch);
                            aBXinFengSetData(Result.AQIPM25, -1, Result.CheckPM25, -1, -1, -1, -1);
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            setB3RAllData("", 1, Result.CheckPM25, -1, -1, -1, -1, Result.AQIPM25, '', -1, '', '', -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            setB3Exhibition([], 1);
                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $('#detector-b3-pm25-title-text').css("visibility", "visible").text('室内PM2.5');
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                        }
                    }
                    else if (Result.ProtocolWord == 'PM25_TVOC') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                        $('#H_TVOC_' + Mac).val(Result.TVOC);

                        if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                            setB3RelationExhibition(["tvoc"], 1);
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#div_relation_b3_tvoc').text(Result.TVOC);
                            $('#div_relation_b3_tvoc_txt').text('tvoc');
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));
                        }
                            ///X4
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetSwitch(Result.Switch);
                            aBXinFengSetData(Result.AQIPM25, -1, Result.CheckPM25, -1, Result.TVOC, -1, -1);
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            setB3RAllData("", 1, Result.CheckPM25, -1, -1, -1, Result.TVOC, Result.AQIPM25, '', -1, '', '', -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            setB3Exhibition(['tvoc'], 1);
                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $('#detector-b3-pm25-title-text').css("visibility", "visible").text('室内PM2.5');
                            $("#div_tvoc").text(Result.TVOC);
                            $("#div_tvoc_txt").text('TVOC');
                            $("#div_tvoc_unit").text('mg/m³');
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                            $("#div_tvoc_Content").text(SetTVOCContent(Result.TVOC));
                        }
                    }
                    else if (Result.ProtocolWord == 'PM25_CO2') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                        $('#H_CO2_' + Mac).val(Result.CO2);

                        if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                            setB3RelationExhibition(["co2"], 1);
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#div_relation_b3_co2').text(Result.CO2);
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));
                        }
                            ///X4
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetSwitch(Result.Switch);
                            aBXinFengSetData(Result.AQIPM25, -1, Result.CheckPM25, Result.CO2, -1, -1, -1);
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            setB3RAllData("", 1, Result.CheckPM25, -1, -1, Result.CO2, -1, Result.AQIPM25, '', -1, '', '', -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            setB3Exhibition(['co2'], 1);
                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $('#detector-b3-pm25-title-text').text('室内PM2.5');
                            $("#div_co2").text(Result.CO2);
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                            $("#div_co2_Content").text(SetCO2Content(Result.CO2));
                        }
                    }
                    else if (Result.ProtocolWord == 'PM25_Temperature_Humidity') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                        $('#H_Temperature_' + Mac).val(Result.Temperature);
                        $('#H_Humidity_' + Mac).val(Result.Humidity);
                        //b1设备

                        if ($("#H_PGID").val() == 23 && $("#H_Type_" + Mac).val() == "2") {
                            setB1AllData("", "1", "" + Result.CheckPM25 + "", "" + Result.Temperature + "", "" + Result.Humidity + "", "" + Result.AQIPM25 + "", "-1", "", "-1", "-1", "-1");
                        }
                        else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                            setB3RelationExhibition(['temp', 'humi'], 1);
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#div_relation_b3_Temperature').text(Result.Temperature);
                            $('#div_relation_b3_Humidity').text(Result.Humidity);
                        }
                            //X4
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetSwitch(Result.Switch);
                            aBXinFengSetData(Result.AQIPM25, -1, Result.CheckPM25, -1, -1, Result.Temperature, Result.Humidity);
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            setB3RAllData("", 1, Result.CheckPM25, Result.Temperature, Result.Humidity, -1, -1, Result.AQIPM25, '', -1, '', '', -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            setB3Exhibition(['temp', 'humi'], 1);
                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $('#detector-b3-pm25-title-text').text('室内PM2.5');
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $("#div_Temperature").text(Result.Temperature);
                            $("#div_Humidity").text(Result.Humidity);
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                            $("#div_Temperature_Content").text(SetTemperatureContent(Result.Temperature));
                            $("#div_Humidity_Content").text(SetHumidityContent(Result.Humidity));
                        }
                    }
                    else if (Result.ProtocolWord == 'PM25_PA') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                        $('#H_PA_' + Mac).val(Result.PA);

                        if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                            setB3RelationExhibition(['tvoc'], 1);
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#div_relation_b3_tvoc').text(Result.PA);
                            $('#div_relation_b3_tvoc_txt').text('甲醛');
                        }
                        else {
                            setB3Exhibition(['tvoc'], 1);
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $('#detector-b3-pm25-title-text').text('室内PM2.5');
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $("#div_tvoc_txt").text('甲醛');
                            $("#div_tvoc").text(Result.PA);
                            $("#div_tvoc_unit").text('mg/m³');
                            $("#div_tvoc_Content").text('');
                        }
                    }
                    else if (Result.ProtocolWord == 'PM25_Temperature_Humidity_CO2_TVOC') {
                        $('#H_OutPm25_' + Mac).val(Result.AQIPM25);
                        $('#H_InPm25_' + Mac).val(Result.CheckPM25);
                        $('#H_Temperature_' + Mac).val(Result.Temperature);
                        $('#H_Humidity_' + Mac).val(Result.Humidity);
                        $('#H_CO2_' + Mac).val(Result.CO2);
                        $('#H_TVOC_' + Mac).val(Result.TVOC);

                        if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                            setB3RelationExhibition(['temp', 'humi', 'co2', 'tvoc'], 1);
                            $('#relation-b3-pm25-title-text').text('室内PM2.5');
                            $('#relation-b3-pm25-content-text').text(Result.CheckPM25);
                            $('#relation-b3-inside-pm25-text').text('室外PM2.5：' + Result.AQIPM25);
                            $('#relation-b3-judge-content-text').text(SetPM25Content(Result.CheckPM25));

                            $('#div_relation_b3_co2').text(Result.CO2);
                            $('#div_relation_b3_tvoc').text(Result.TVOC);
                            $('#div_relation_b3_tvoc_txt').text('tvoc');
                            $('#div_relation_b3_Temperature').text(Result.Temperature);
                            $('#div_relation_b3_Humidity').text(Result.Humidity);
                        }
                            //x4
                        else if ($("#H_Type_" + Mac).val() == "10") {
                            bBXinFengChangeStatus(1);
                            aBXinFengSetSwitch(Result.Switch);
                            aBXinFengSetData(Result.AQIPM25, -1, Result.CheckPM25, Result.CO2, Result.TVOC, Result.Temperature, Result.Humidity);
                        }
                            ///B3-R
                        else if ($("#H_Type_" + Mac).val() == "12") {
                            setB3RAllData("", 1, Result.CheckPM25, Result.Temperature, Result.Humidity, Result.CO2, Result.TVOC, Result.AQIPM25, '', -1, '', '', -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            if ($("#H_CompanyID_" + Mac).val() == 11) {
                                setB3Exhibition(['temp', 'humi', 'co2'], 1);
                            }
                            else {
                                setB3Exhibition(['temp', 'humi', 'co2', 'tvoc'], 1);
                            }

                            $("#detector-b3-pm25-content-text").text(Result.CheckPM25);
                            $('#detector-b3-pm25-title-text').text('室内PM2.5');
                            $("#detector-b3-inside-pm25-text").css("visibility", "visible").text('室外PM2.5：' + Result.AQIPM25);
                            $("#div_Temperature").text(Result.Temperature);
                            $("#div_Humidity").text(Result.Humidity);
                            $("#div_co2").text(Result.CO2);
                            //if ($("#H_CompanyID").val() != 9) {
                            $("#div_tvoc").text(Result.TVOC);
                            $("#div_tvoc_txt").text('TVOC');
                            $("#div_tvoc_unit").text('mg/m³');
                            $("#div_tvoc_Content").text(SetTVOCContent(Result.TVOC));
                            //}
                            $("#detector-b3-pm25-judge-text").css("visibility", "visible").text(SetPM25Content(Result.CheckPM25));
                            $("#div_Temperature_Content").text(SetTemperatureContent(Result.Temperature));
                            $("#div_Humidity_Content").text(SetHumidityContent(Result.Humidity));
                            $("#div_co2_Content").text(SetCO2Content(Result.CO2));
                        }
                    }
                }
            }//1
            else if (Data.indexOf("PTMode") > -1) {//X3旁通模式建研爱康
                $("#s_" + MacJHQ).html("&nbsp;&nbsp;在线");
                $("#img_" + MacJHQ).attr("src", "./image/在线.png");
                $("#H_Online_" + MacJHQ).val("1");
                $('#H_PTMode_' + MacJHQ).val(Result.PTMode);

                if (Result.DMac == $("#H_DeviceMac").val()) {
                    if (Result.PTMode == 0) {
                        if ($("#H_Type_" + Mac).val() == "11") {
                            $("#Img_PTMode").attr("src", "./image/2.png");
                            $("#div_PTMode").text('旁通关');
                        }
                    }
                    else if (Result.PTMode == 1) {
                        if ($("#H_Type_" + Mac).val() == "11") {
                            $("#Img_PTMode").attr("src", "./image/模式1.png");
                            $("#div_PTMode").text('旁通开');
                        }
                    }
                }
            }
        }
        //开关设置
        function DeviceSwitch(Result, Mac, MacJHQ) {
            if (Result.OnOFFState == 1) {
                if ($("#H_Type_" + Mac).val() == "1") {
                    $("#div_ONOFFTxt").text("已开");
                    $("#i_ONOFFState").attr("src", "./image/打开.png");
                    AnimSwitch('SwitchON');
                }
                else if ($("#H_Type_" + Mac).val() == "2" || $("#H_Type_" + Mac).val() == "11") {
                    //设置净化器设备开关
                    if ($("#H_DeviceMac1").val() == MacJHQ) {
                        //b1设备
                        if ($("#H_PGID").val() == 23) {
                            setB1AllData("", 1, -1, -1, -1, -1, -1, "", Result.OnOFFState, -1, -1);
                        }
                        else if ($("#H_CompanyID_" + Mac).val() == 7) {//三个爸爸
                            $('#div_sange_switch').text('已开');
                            $('#div_sange_switch_Image').attr('src', './image/打开.png');
                        }//X3与B1、净化器使用同一个界面
                        else {
                            $("#div_cleaner_switch").text("已开");
                            $(".imgButtons0-img").children().eq(3).attr("src", "./image/打开.png");
                        }
                    }
                }
                else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {

                    if ($("#H_DeviceMac_" + Mac).val() == Result.DeviceMac) {
                        $('#relation-b3-detector-switch-text').text('已开');
                        $('#relation-b3-detector-switch-back-div').css('background-color', '#3f3b50');
                    }
                    if ($("#H_DeviceMac1").val() == Result.DeviceMac) {
                        $('#relation-b3-jinghuaqi-switch-text').text('已开');
                        $('#relation-b3-jinghuaqi-switch-back-div').css('background-color', '#3f3b50');
                    }
                }
                    ///X4
                else if ($("#H_Type_" + Mac).val() == "10") {
                    if ($("#H_DeviceMac1").val() == Result.DeviceMac) {
                        bBXinFengChangeStatus(1);
                        aBXinFengSetSwitch(Result.OnOFFState);
                    }
                }
                    ///B3-R
                else if ($("#H_Type_" + Mac).val() == "12") {
                    if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                        ///用于快速反馈
                        if (IsChangeSwitchState == true) {
                            setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, '', -1, '', '', Result.OnOFFState, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                    }
                }
                else {
                    if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                        $('#detector-b3-switch-text').text('已开');
                        $('#detector-b3-switch-img').attr('src', './image/打开.png');
                    }
                }
            }
            else {
                if ($("#H_Type_" + Mac).val() == "1") {
                    if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                        AnimSwitch('SwitchOFF');
                        $("#div_ONOFFTxt").text("已关");
                        $("#i_ONOFFState").attr("src", "./image/关闭.png");
                    }
                }
                else if ($("#H_Type_" + Mac).val() == "2" || $("#H_Type_" + Mac).val() == "11") {
                    //设置净化器设备开关
                    if ($("#H_DeviceMac1").val() == Result.DeviceMac) {
                        //b1设备
                        if ($("#H_PGID").val() == 23) {
                            setB1AllData('', '1', '-1', '-1', '-1', '-1', '-1', '', Result.OnOFFState, '-1', '-1');
                        }
                        else if ($("#H_CompanyID_" + Mac).val() == 7) {
                            $('#div_sange_switch').text('已关');
                            $('#div_sange_switch_Image').attr('src', './image/关闭.png');
                        }
                        else {
                            $("#div_cleaner_switch").text("已关");
                            $(".imgButtons0-img").children().eq(3).attr("src", "./image/关闭.png");
                        }
                    }
                }
                else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {
                    if ($("#H_DeviceMac").val() == Result.DeviceMac) {
                        $('#relation-b3-detector-switch-text').text('已关');
                        $('#relation-b3-detector-switch-back-div').css('background-color', '#2a2b36');
                    }
                    if ($("#H_DeviceMac1").val() == Result.DeviceMac) {
                        $('#relation-b3-jinghuaqi-switch-text').text('已关');
                        $('#relation-b3-jinghuaqi-switch-back-div').css('background-color', '#2a2b36');
                    }
                }
                else if ($("#H_Type_" + Mac).val() == "10") {
                    if ($("#H_DeviceMac1").val() == Result.DeviceMac) {
                        bBXinFengChangeStatus(1);
                        aBXinFengSetSwitch(Result.OnOFFState);
                    }
                }
                    ///B3-R
                else if ($("#H_Type_" + Mac).val() == "12") {
                    if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                        ///用于快速反馈
                        if (IsChangeSwitchState == true) {
                            setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, '', -1, '', '', Result.OnOFFState, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                    }
                }
                else {
                    if ($("#H_DeviceMac").val() == Result.DeviceMac) {
                        $('#detector-b3-switch-text').text('已关');
                        $('#detector-b3-switch-img').attr('src', './image/关闭.png');
                    }
                }
            }
        }
        function DeviceOFFLine(Result, Mac, MacJHQ) {
            if ($("#H_Type_" + Mac).val() == "1") {
                $("#s_AutoPM25").text("0");
                $("#s_CheckPM25").text("设备未连接");
                $("#div_ONOFFTxt").text("已关");
                $("#i_ONOFFState").attr("src", "./image/关闭.png");
                $("#span_PM25_Txt").text('');
                if ($("#H_CompanyID_" + Mac).val() == 6) {
                    $('#div_PM25Notice').text("");
                }
                AnimSwitch('OFFLine');
            }
            else if ($("#H_Type_" + Mac).val() == "2" || $("#H_Type_" + Mac).val() == "11") {
                //关闭净化器
                //b1设备
                if ($("#H_PGID").val() == 23) {
                    setB1AllData('', '0', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1');
                }
                else if ($("#H_CompanyID_" + Mac).val() == 7) {
                    $('#sange-jinghuaqi-center-lvwang-sytext').text('连接状态');
                    $('#sange-jinghuaqi-center-lvwang-text').text('未连接');
                    $('#div_sange_switch').text('已关');
                    $('div_sange_switch_Image').attr('src', './image/关闭.png');
                    $('#div_sange_windspeed').text('风速0');
                    $('#div_sange_mode').text('智能关');
                }
                else {
                    $("#div_cleaner_switch").text("已关");
                    $(".imgButtons0-img").children().eq(3).attr("src", "./image/关闭.png");
                    $('#p_Txt').text('连接状态');
                    $('#p_Per').text('未连接');
                }
            }
            else if ($("#H_Type_" + Mac).val() == "1-2" || $("#H_Type_" + Mac).val() == "3-2" || $("#H_Type_" + Mac).val() == "4-2" || $("#H_Type_" + Mac).val() == "5-2" || $("#H_Type_" + Mac).val() == "6-2" || $("#H_Type_" + Mac).val() == "7-2" || $("#H_Type_" + Mac).val() == "8-2") {

                if (Mac == Result.DeviceMac) {
                    setB3RelationExhibition([], 0);
                    $('#relation-b3-judge-content-text').text('');
                    $('#relation-b3-pm25-title-text').text('');
                    $('#relation-b3-pm25-content-text').text('未连接');
                    $('#relation-b3-inside-pm25-text').text('');
                    $('#relation-b3-detector-switch-text').text('已关');
                    $('#relation-b3-detector-switch-back-div').css('background-color', '#3f3c51');
                }
                else if (MacJHQ == Result.DeviceMac) {
                    $('#relation-b3-lvwang-text').text('未连接').css("font-size", "2.5em");
                    $('#relation-b3-jinghuaqi-switch-text').text('已关');
                    $('#relation-b3-jinghuaqi-switch-back-div').css('background-color', '#2a2b36');
                }
            }
            else if ($("#H_Type_" + Mac).val() == "10") {
                if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                    bBXinFengChangeStatus(0);
                }
            }
                ///B3-R
            else if ($("#H_Type_" + Mac).val() == "12" || $("#H_Type_" + Mac).val() == "13") {
                if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                    setB3RAllData("", 0, -1, -1, -1, -1, -1, -1, '', -1, '', '', Result.OnOFFState, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                }
            }
            else {
                if (Result.DeviceMac == $("#H_DeviceMac").val()) {
                    setB3Exhibition([], 0);
                    $('#detector-b3-pm25-content-text').text('未连接');
                    $("#detector-b3-pm25-title-text").text('');
                    $("#detector-b3-pm25-judge-text").text('');
                    $('#detector-b3-inside-pm25-text').text('');
                    $('#detector-b3-switch-text').text('已关');
                    $('#detector-b3-switch-img').attr('src', './image/关闭.png');
                }
            }
        }
        function SetCO2Content(co2) {
            if (co2 >= 0 && co2 <= 1000) {
                return "空气清新";
            } else if (co2 > 1000 && co2 <= 2000) {
                return "空气浑浊";
            } else if (co2 > 2000 && co2 <= 5000) {
                return "空气缺氧";
            } else if (co2 > 5000) {
                return "严重缺氧";
            }
            else {
                return "--";
            }
        }
        function SetTVOCContent(tvoc) {
            if (tvoc >= 0 && tvoc <= 0.6) {
                return "安全";
            } else if (tvoc > 0.6 && tvoc <= 1.8) {
                return "超标";
            } else if (tvoc > 1.8 && tvoc <= 9.99) {
                return "严重超标";
            } else if (tvoc > 9.99) {
                return "严重超标";
            } else {
                return "--";
            }
        }
        function SetTemperatureContent(temp) {
            if (temp < -20) {
                return "酷寒";
            } else if (temp >= -20 && temp < -10) {
                return "严寒";
            } else if (temp >= -10 && temp < 0) {
                return "中寒";
            } else if (temp >= 0 && temp < 10) {
                return "微寒";
            } else if (temp >= 10 && temp < 20) {
                return "凉爽";
            } else if (temp >= 20 && temp < 26) {
                return "温暖";
            } else if (temp >= 26 && temp < 33) {
                return "微热";
            } else if (temp >= 33 && temp < 37) {
                return "炎热";
            } else if (temp >= 37) {
                return "酷热";
            } else {
                return "--";
            }
        }
        function SetHumidityContent(humi) {
            if (humi < 20) {
                return "极干";
            } else if (humi >= 20 && humi < 30) {
                return "干燥";
            } else if (humi >= 30 && humi < 40) {
                return "略干";
            } else if (humi >= 40 && humi < 56) {
                return "理想";
            } else if (humi >= 56 && humi < 67) {
                return "湿润";
            } else if (humi >= 67 && humi < 80) {
                return "潮湿";
            } else if (humi >= 80) {
                return "极潮";
            } else {
                return "--";
            }
        }
        function SetPM25Content(pm25) {
            if (pm25 >= 0 && pm25 <= 35) {
                return "优";
            } else if (pm25 > 35 && pm25 <= 75) {
                return "良";
            } else if (pm25 > 75 && pm25 <= 115) {
                return "轻度污染";
            } else if (pm25 > 115 && pm25 <= 150) {
                return "中度污染";
            } else if (pm25 > 150 && pm25 <= 250) {
                return "重度污染";
            } else if (pm25 > 250) {
                return "严重污染";
            } else {
                return "- -";
            }
        }
        ///设置设备开关
        function SetDeviceOnOFF(state, Index) {
            var i = $.inArray($("#H_DeviceMac").val() + "_" + $("#H_DeviceMac1").val(), macArray);

            ws = wsArray[macArray[i]];
            if (ws) {
                if ($("#H_Type").val() == "1") {
                    ws.send($("#H_ProjectName").val() + ",2,DeviceONOFF," + $("#H_DeviceMac").val() + "," + state);
                }
                else if ($("#H_Type").val() == "2") {
                    ws.send($("#H_ProjectName").val() + ",2,DeviceONOFF," + $("#H_DeviceMac1").val() + "," + state);
                }
                else if ($("#H_Type").val() == "1-2" || $("#H_Type").val() == "3-2" || $("#H_Type").val() == "4-2" || $("#H_Type").val() == "5-2" || $("#H_Type").val() == "6-2" || $("#H_Type").val() == "7-2" || $("#H_Type").val() == "8-2") {
                    if (Index == 0) {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceONOFF," + $("#H_DeviceMac").val() + "," + state);
                    }
                    else {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceONOFF," + $("#H_DeviceMac1").val() + "," + state);
                    }
                }
                else {
                    ws.send($("#H_ProjectName").val() + ",2,DeviceONOFF," + $("#H_DeviceMac").val() + "," + state);
                }
            }
        }
        ///风速等级20160805B3R发送指定风速
        function SetWindSpeed(SIndex) {
            var i = $.inArray($("#H_DeviceMac").val() + "_" + $("#H_DeviceMac1").val(), macArray)
            ws = wsArray[macArray[i]];
            if (ws) {
                if (SIndex == undefined) {
                    if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceWindSpeedONOFF," + $("#H_DeviceMac1").val());
                    }
                    else {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceWindSpeedONOFF," + $("#H_DeviceMac").val());
                    }
                }
                else {
                    if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceWindSpeedONOFF," + $("#H_DeviceMac1").val() + "," + SIndex);
                    }
                    else {
                        ws.send($("#H_ProjectName").val() + ",2,DeviceWindSpeedONOFF," + $("#H_DeviceMac").val() + "," + SIndex);
                    }
                }
            }
        }
        ///模式  
        function SetDeviceMode(state) {
            var i = $.inArray($("#H_DeviceMac").val() + "_" + $("#H_DeviceMac1").val(), macArray)
            ws = wsArray[macArray[i]];
            if (ws) {
                if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                    ws.send($("#H_ProjectName").val() + ",2,DeviceMode," + $("#H_DeviceMac1").val() + "," + state);
                }
                else {
                    ws.send($("#H_ProjectName").val() + ",2,DeviceMode," + $("#H_DeviceMac").val() + "," + state);
                }
            }
        }
        ///模式  
        function SetSleepMode(state) {
            var i = $.inArray($("#H_DeviceMac").val() + "_" + $("#H_DeviceMac1").val(), macArray)
            ws = wsArray[macArray[i]];
            if (ws) {
                ws.send($("#H_ProjectName").val() + ",2,SleepMode," + $("#H_DeviceMac1").val() + "," + state);
            }
        }
        //旁通模式
        function SetPTMode(state) {
            var i = $.inArray($("#H_DeviceMac").val() + "_" + $("#H_DeviceMac1").val(), macArray)
            ws = wsArray[macArray[i]];
            if (ws) {
                ws.send($("#H_ProjectName").val() + ",2,PTMode," + $("#H_DeviceMac1").val() + "," + state);
            }
        }

        ///连接设备
        function LinkDeviceFun() {

            WeixinJSBridge.invoke('configWXDeviceWiFi', '', function (res) {
                //alert(JSON.stringify(res));
                var Result = eval(res);
                if (Result.err_msg == "configWXDeviceWiFi:ok") {

                    ///获取地理位置并发送给服务器更新设备经纬度
                    wx.getLocation({
                        success: function (data) {
                            ///更新经纬度
                            var ReResult = eval(data);
                            var latitude = ReResult.latitude; // 纬度，浮点数，范围为90 ~ -90
                            var longitude = ReResult.longitude; // 经度，浮点数，范围为180 ~ -180。
                            if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                                UpdatePos(latitude, longitude, $("#H_DeviceMac1").val());
                            }
                            else {
                                UpdatePos(latitude, longitude, $("#H_DeviceMac").val());
                            }
                            //if ($("#H_DeviceMac").val() == "") {
                            //    UpdatePos(latitude, longitude, $("#H_DeviceMac1").val());
                            //}
                            //else {
                            //    UpdatePos(latitude, longitude, $("#H_DeviceMac").val());
                            //}
                        },
                        cancel: function (data) {
                            showToast("您好，建议您打开地理位置共享以方便我们更好的为您服务");
                        }
                    });
                }
                else {
                    showToast("您好，建议您打开地理位置共享以方便我们更好的为您服务");
                }
            });
            $(".ShowDialg").dialog('close');
        }
        function UpdatePos(latitude, longitude, DeviceMac) {
            var H_OpenID = $("#H_OpenID").val();
            $.ajax({
                url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                data: {
                    OpType: 'UpdatePos',
                    OpenID: H_OpenID,
                    DeviceMac: DeviceMac,
                    Lat: latitude,
                    Lon: longitude
                },
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    var ReResult = eval(data);
                    if (ReResult.result == "0") {
                        showToast(ReResult.Reason);
                    }
                    else {
                        if ($("#H_Type").val() == "1") {
                            $("#div_Position").text('位置：' + ReResult.Reason);
                        }
                        else if ($("#H_Type").val() == "3" || $("#H_Type").val() == "4" || $("#H_Type").val() == "5" || $("#H_Type").val() == "6" || $("#H_Type").val() == "7" || $("#H_Type").val() == "8") {
                            $("#detector-b3-area-text").text('位置：' + ReResult.Reason);
                        }
                        else {
                            $("#relation-b3-area-text").text('位置：' + ReResult.Reason);
                        }
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
            });
        }
        ///更多
        function More() {
            if (ShowDemo == "0") {
                showToast("体验设备，不支持该功能");
                return;
            }
            var Tmep = '';
            var DeviceType = $("#H_Type").val();

            if (DeviceType == "2" || DeviceType == "11") {
                Tmep = $("#H_DeviceMac1").val();
            }
            else {
                Tmep = $("#H_DeviceMac").val();
            }
            window.location.href = "More.aspx?DeviceType=" + DeviceType + "&OpenID=" + $("#H_OpenID").val() + "&ID=" + Tmep + "&rn=" + Math.random();
        }
        ///分享设备
        function Share() {
            if (ShowDemo == "0") {
                showToast("体验设备，不支持该功能");
                return;
            }
            var DeviceMac;
            var DeviceName;
            if ($("#H_Type").val() == "2" || $("#H_Type").val() == "11") {
                //B1
                if ($("#H_PGID").val() == 23) {
                    DeviceMac = $("#H_DeviceMac1").val();
                    DeviceName = $('#b1-page-device-name').text();
                }
                else {
                    DeviceMac = $("#H_DeviceMac1").val();
                    DeviceName = $('#sange-jinghuaqi-page-device-name').text();
                    if (DeviceName == "") {
                        DeviceName = $('#sJHQ_DeviceName').text();
                    }
                }
            }
            else if ($("#H_Type").val() == "1") {
                DeviceName = $('#s_DeviceName').text();
                DeviceMac = $("#H_DeviceMac").val();
            }
            else if ($("#H_Type").val() == "3" || $("#H_Type").val() == "4" || $("#H_Type").val() == "5" || $("#H_Type").val() == "6" || $("#H_Type").val() == "7" || $("#H_Type").val() == "8") {
                DeviceName = $('#detector-b3-page-device-name').text();
                DeviceMac = $("#H_DeviceMac").val();
            }
            else if ($("#H_Type").val() == "10") {
                DeviceName = $('#xinfeng-ab-page-device-name').text();
                DeviceMac = $("#H_DeviceMac").val();
            }
            else if ($("#H_Type").val() == "12") {
                DeviceName = $('#b3r-page-device-name').text();
                DeviceMac = $("#H_DeviceMac").val();
            }
            else {
                DeviceName = "关联设备";
                DeviceMac = $("#H_DeviceMac").val();
            }
            var OpenID = $("#H_OpenID").val();
            $.ajax({
                url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                data: {
                    OpType: 'ShareDevice',
                    OpenID: OpenID,
                    DeviceMac: DeviceMac
                },
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    var ReResult = eval(data);
                    if (ReResult.result == "0") {
                        //alert(ReResult.Reason);
                    } else {
                        window.location.href = "ShareDevice.aspx?ID=" + DeviceMac + "&WID=" + $("#H_WID").val() + "&rn=" + Math.random() + "&DeviceName=" + escape(DeviceName);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
            });
        }
        ///更新设置时间
        function SetONOFFTime() {
            var DeviceMac = $("#H_DeviceMac").val();
            var OnTime = $("#inp_Ontime").val();
            var OffTime = $("#inp_Offtime").val();
            var ONOFFState = 0;
            if ($(".switch1").text().indexOf("开") > -1) {
                ONOFFState = 1;
            }

            $.ajax({
                url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                data: {
                    OpType: 'SetTime',
                    DeviceMac: DeviceMac,
                    OnTime: OnTime,
                    OffTime: OffTime,
                    ONOFFState: ONOFFState,
                    ProjectName: $("#H_ProjectName").val()
                },
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    var ReResult = eval(data);
                    if (ReResult.result == "1") {
                        $("#detector-b3-dingshi-open-time").text("开机时间：" + OnTime);
                        $("#detector-b3-dingshi-close-time").text("关机时间：" + OffTime);
                        aBXinFengSetDingShi(ONOFFState, OnTime, OffTime);
                        $("#s_OnTime").text("开机时间：" + OnTime);
                        $("#s_OFFTime").text("关机时间：" + OffTime);
                        $("#H_ONTime_" + $("#H_DeviceMac").val()).val(OnTime);
                        $("#H_OFFTime_" + $("#H_DeviceMac").val()).val(OffTime);
                        setB3RAllData('', 1, -1, -1, -1, -1, -1, -1, '', ONOFFState, OnTime, OffTime, -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
            });
        }
        ///是否使用开关机状态
        function SetOnOFFState(State) {
            var DeviceMac = $("#H_DeviceMac").val();
            $.ajax({
                url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                data: {
                    OpType: 'IsONOFF',
                    DeviceMac: DeviceMac,
                    State: State,
                    ProjectName: $("#H_ProjectName").val()
                },
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    var ReResult = eval(data);
                    if (ReResult.result == "0") {
                        showToast("状态修改失败");
                    } else {
                        aBXinFengSetDingShi(State, "", "");
                        if (State == 1) {
                            $("#detector-b3-dingshi-open-time").css("color", "#FFFEFF");
                            $("#detector-b3-dingshi-close-time").css("color", "#FFFEFF");
                            $("#s_OnTime").css("color", "#FFFEFF");
                            $("#s_OFFTime").css("color", "#FFFEFF");
                            $('#H_ONOFFState_' + DeviceMac).val(State);
                            setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", State, "", "", -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                        else {
                            $("#detector-b3-dingshi-open-time").css("color", "#4a475b");
                            $("#detector-b3-dingshi-close-time").css("color", "#4a475b");
                            $("#s_OFFTime").css("color", "#4a475b");
                            $("#s_OnTime").css("color", "#4a475b");
                            $('#H_ONOFFState_' + DeviceMac).val(State);
                            setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", State, "", "", -1, -1, -1, $("#H_ProjectName").val(), -1, -1, -1);
                        }
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
            });
        }
        function Ws_DeviceExist(prject, mac) {
            Send_DeviceExist(prject, mac);
            intime = setInterval("Send_DeviceExist('" + prject + "','" + mac + "')", 1000 * 60);
        }
        function Send_DeviceExist(prject, mac) {
            var i = $.inArray(mac + "_" + mac, macArray);
            ws = wsArray[macArray[i]];
            if (ws) {
                ws.send(prject + ",2,Ws_DeviceExist," + mac);
            }
        }


    </script>

</head>
<body
	style="overflow-y: auto; overflow-x: hidden; margin: 0px; padding: 0px; background-color: rgb(55, 52, 70);">
	<form method="post"
		action="http://wechat.bjhike.com/app/DeviceList/MyDeviceList.aspx?PID=1&amp;CID=1&amp;WID=1&amp;OpenID=obwIJt5SACpBbCxy_w7q9HMphFCI&amp;rn=18901"
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwULLTE4MTQwNjAzOTVkZOnTIec8mjehOSNko9Pfv7hB3wi5pkxed1mXD274RWxH">
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="18E8C896"> <input
				type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEdAAsVHdmACsnNIyQoBhqfL8AwlYtJ/krVEGimljW4JnzF/KmUtLpWxgZ65DEhS0RsVCuhzrmU8+0rwcASdjGeRScMAsYJj6KzO+dAEs0tIdw+QTaujqFJwc3wJ0Y7ux14whE+v9W8+1SYbU/YJA1qu2vSiYHJw8EOq8KncQjn4Vr6IVUg+sxOAoyd8bqIa5EpJDZ9aRGV2IxgYyEOy56myBup/affKdZ08zf7VjJzpioK1GGaQW57TbcCTBQPzkdUn9FL/7BTLEjqvfyJL0E0z9Qe">
		</div>
		<div
			style="width: 100%; height: 0px; background-color: #21b79a; position: relative">
			<div id="toastId2" class="toasttj2"
				style="display: none; opacity: 0; z-index: 1003; font-size: 1.37em; position: fixed; bottom: 25%; width: 100%; opacity: 0; height: 24px; display: none; transition: opacity 1s ease-out;"></div>
		</div>

		<div class="page2"
			style="width: 100%; position: absolute; z-index: 20; visibility: visible; height: 568px; display: none; background-color: rgb(55, 52, 70);">
			<div class="header"
				style="height: 8%; background-color: rgb(62, 59, 79); color: rgb(156, 153, 173)">
				<div class="col-xs-8" style="height: 100%;">
					<div id="s_DeviceName"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1em; font-weight: bolder; margin-top: -10px;">安小安</div>
				</div>

				<div class="col-xs-4" style="height: 100%; text-align: right;">
					<img alt="" src="./image/向上收起.png"
						style="height: 55%; margin-top: 10%; width: 25px;"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>


			<div class="anim"
				style="height: 50%; text-align: center; background-color: rgb(55, 52, 70);">
				<img id="rootimg1" alt="" class="rzr_dt_11"
					src="./image/动态SB1.png"
					style="height: 94%; margin-top: 3%; z-index: 10; width: 267px;">
				<img alt="" class="rzr_dt_21" src="./image/动态SB2.png"
					style="position: absolute; z-index: 11; width: 247px; top: 65px; left: 37px;">
				<img alt="" class="rzr_dt_31" src="./image/动态SB3.png"
					style="position: absolute; z-index: 12; width: 227px; top: 75px; left: 47px;">
				<img alt="" class="rzr_dt_41" src="./image/动态关闭.png"
					style="position: absolute; z-index: 13; width: 267px; top: 55px; left: 27px;">
				<p class="rzr_dt_label11"
					style="text-align: center; position: absolute; width: 100%; font-size: 1.3em; color: rgb(47, 145, 172); z-index: 14; top: 114.333px;">室内PM2.5</p>
				<p class="rzr_dt_label21"
					style="text-align: center; position: absolute; width: 100%; font-size: 4em; font-weight: 100; color: rgb(38, 217, 249); z-index: 15; top: 125.263px;">
					<span id="s_CheckPM25" style="border-bottom: 1px solid #242134;">280</span>
				</p>
				<p class="rzr_dt_label31_2"
					style="text-align: center; position: absolute; width: 100%; font-size: 1.3em; color: rgb(38, 216, 252); z-index: 18; top: 212.059px;">
					<span id="span_PM25_Txt" style="padding: 4px 5px 4px 10px;"></span>
				</p>
				<p class="rzr_dt_label31"
					style="text-align: center; position: absolute; width: 100%; font-size: 1em; color: rgb(38, 216, 252); z-index: 16; top: 245.714px;">
					<span
						style="border-radius: 15px; background-color: black; padding: 4px 10px 4px 10px;">室外PM2.5：<span
						id="s_AutoPM25">255</span></span>
				</p>
			</div>
			<div class="TimesForm" style="height: 10%;">
				<div class="TimesForm-address" style="width: 100%;">
					<div style="width: 50%; float: left; text-align: left">
						<div class="col-xs-12" id="div_PM25Notice"></div>
					</div>
					<div style="width: 50%; float: left">
						<div class="col-xs-12" id="div_Position"></div>
					</div>
				</div>
				<div
					style="width: 100%; height: 60%; background-color: #2d2a3c; vertical-align: middle; font-size: 1em">
					<div id="s_OnTime"
						style="width: 40%; float: left; padding-left: 3%; margin-top: 7.04px;">
						开机时间：20：38</div>
					<div id="device-on-off-split"
						style="width: 20%; text-align: center; color: rgb(19, 19, 24); float: left; margin-top: 7.04px;">|</div>
					<div id="s_OFFTime"
						style="width: 40%; float: right; padding-right: 3%; text-align: right; margin-top: 7.04px;">
						关机时间：19：00</div>
				</div>
			</div>
			<div class="footer"
				style="height: 32%; background-color: #323040; border: none; color: rgb(37, 217, 249)">
				<div style="width: 100%; height: 50%;">
					<table style="height: 100%; width: 100%; text-align: center;">
						<tbody>
							<tr style="height: 100%; width: 100%;">
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;">
										<div style="height: 75%; width: 100%;">
											<img src="./image/连网1.png" style="width: 45%;" alt="">
										</div>
										<div style="height: 15%; width: 100%;">连接网络</div>
									</div>
								</td>
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;"
										onclick="Share()">
										<div style="height: 75%; width: 100%;">
											<img src="./image/分享2.png" style="width: 45%;" alt="">
										</div>
										<div style="height: 15%; width: 100%;">分享</div>
									</div>
								</td>
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;"
										onclick="More()">
										<div style="height: 75%; width: 100%;">
											<img src="./image/更多1.png" style="width: 45%;" alt="">
										</div>
										<div style="height: 15%; width: 100%;">更多</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div style="width: 100%; height: 50%;">
					<table style="height: 100%; width: 100%; text-align: center;">
						<tbody>
							<tr style="height: 100%; width: 100%;">
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;">
										<div style="height: 75%; width: 100%;">
											<img id="i_ONOFFState" src="./image/关闭.png"
												style="width: 45%;" alt="">
										</div>
										<div id="div_ONOFFTxt" style="height: 15%; width: 100%;">已关</div>
									</div>
								</td>
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;">
										<div style="height: 75%; width: 100%;">
											<img src="./image/定时.png" style="width: 45%;" alt="">
										</div>
										<div style="height: 15%; width: 100%;">定时</div>
									</div>
								</td>
								<td style="width: 33%; height: 100%;">
									<div class="imgButtons"
										style="width: 90%; height: 90%; margin: 5% auto; padding-top: 5%; padding-bottom: 5%; border-radius: 10px;">
										<div style="height: 75%; width: 100%;">
											<img src="./image/历史数据1.png" style="width: 45%;" alt="">
										</div>
										<div style="height: 15%; width: 100%;">历史数据</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<input type="hidden" name="H_OpenID" id="H_OpenID"
			value="obwIJt5SACpBbCxy_w7q9HMphFCI"> <input type="hidden"
			name="H_WID" id="H_WID" value="1"> <input type="hidden"
			name="H_DeviceID" id="H_DeviceID"> <input type="hidden"
			name="H_DeviceMac" id="H_DeviceMac" value=""> <input
			type="hidden" name="H_DeviceMac1" id="H_DeviceMac1" value="">
		<input type="hidden" name="H_ProjectName" id="H_ProjectName">
		<input type="hidden" name="H_CompanyID" id="H_CompanyID"> <input
			type="hidden" name="H_Type" id="H_Type"> <input type="hidden"
			name="H_IsMaster" id="H_IsMaster"> <input type="hidden"
			name="H_PGID" id="H_PGID">

		<div id="AspHidden">
			<input id="H_OpenID_D0BAE4095251" type="hidden"><input
				id="H_WID_D0BAE4095251" type="hidden"><input
				id="H_DeviceID_D0BAE4095251" type="hidden"
				value="gh_c761bca0bcb4_4015357877fccf3d"><input
				id="H_DeviceMac_D0BAE4095251" type="hidden" value="D0BAE4095251"><input
				id="H_DeviceMac1_D0BAE4095251" type="hidden" value="D0BAE4095251"><input
				id="H_ProjectName_D0BAE4095251" type="hidden" value="C5_JHQ"><input
				id="H_CompanyID_D0BAE4095251" type="hidden" value="22"><input
				id="H_Type_D0BAE4095251" type="hidden" value="2"><input
				id="H_IsMaster_D0BAE4095251" type="hidden" value="0"><input
				id="H_CustomManage_D0BAE4095251" type="hidden" value="1"><input
				id="H_OpenID_D0BAE40952D3" type="hidden"><input
				id="H_WID_D0BAE40952D3" type="hidden"><input
				id="H_DeviceID_D0BAE40952D3" type="hidden"
				value="gh_c761bca0bcb4_67f3128b9f4c4020"><input
				id="H_DeviceMac_D0BAE40952D3" type="hidden" value="D0BAE40952D3"><input
				id="H_DeviceMac1_D0BAE40952D3" type="hidden" value="D0BAE40952D3"><input
				id="H_ProjectName_D0BAE40952D3" type="hidden" value="C5_JHQ"><input
				id="H_CompanyID_D0BAE40952D3" type="hidden" value="22"><input
				id="H_Type_D0BAE40952D3" type="hidden" value="2"><input
				id="H_IsMaster_D0BAE40952D3" type="hidden" value="0"><input
				id="H_CustomManage_D0BAE40952D3" type="hidden" value="1"><input
				id="H_OpenID_C893464AE12A" type="hidden"><input
				id="H_WID_C893464AE12A" type="hidden"><input
				id="H_DeviceID_C893464AE12A" type="hidden"><input
				id="H_DeviceMac_C893464AE12A" type="hidden" value="C893464AE12A"><input
				id="H_DeviceMac1_C893464AE12A" type="hidden"><input
				id="H_ProjectName_C893464AE12A" type="hidden" value="B3_L3"><input
				id="H_CompanyID_C893464AE12A" type="hidden" value="1"><input
				id="H_Type_C893464AE12A" type="hidden" value="8"><input
				id="H_IsMaster_C893464AE12A" type="hidden" value="0"><input
				id="H_CustomManage_C893464AE12A" type="hidden" value="1">
		</div>
		<script type="text/javascript">
            document.getElementById("s_DeviceName").style.marginTop = -(document.getElementById("s_DeviceName").offsetHeight / 2) + "px";

            document.getElementById("s_OnTime").style.marginTop = (($(window).height() * 0.1 * 0.6 - document.getElementById("s_OnTime").offsetHeight) / 2) + "px";
            document.getElementById("device-on-off-split").style.marginTop = (($(window).height() * 0.1 * 0.6 - document.getElementById("device-on-off-split").offsetHeight) / 2) + "px";
            document.getElementById("s_OFFTime").style.marginTop = (($(window).height() * 0.1 * 0.6 - document.getElementById("s_OFFTime").offsetHeight) / 2) + "px";

            //样式参数(此处参数切勿改动)
            //动画状态
            var animState = false;
            var height = document.documentElement.clientHeight;
            $(".page2").css("height", height + "px");
            //header
            $(".header img").css("width", $(".header img").css("height"));
            var headerheight = $(".header").css("height");
            $(".header span").css("line-height", headerheight);
            //anim
            $(".rzr_dt_11").css("width", $(".rzr_dt_11").css("height"));
            var imgHeight = parseInt($(".rzr_dt_11").css("height").split("px")[0]);
            var imgWidth = parseInt($(".rzr_dt_11").css("width").split("px")[0]);
            var imgPosTop = document.getElementById("rootimg1").offsetTop;
            var imgPosLeft = document.getElementById("rootimg1").offsetLeft;

            $(".rzr_dt_21").css("width", imgWidth - 20 + "px").css("width", imgHeight - 20 + "px").css("top", imgPosTop + 10 + "px").css("left", imgPosLeft + 10 + "px");
            $(".rzr_dt_31").css("width", imgWidth - 40 + "px").css("width", imgHeight - 40 + "px").css("top", imgPosTop + 20 + "px").css("left", imgPosLeft + 20 + "px");
            $(".rzr_dt_41").css("width", imgWidth + "px").css("width", imgHeight + "px").css("top", imgPosTop + "px").css("left", imgPosLeft + "px");

            //设置兼容性
            function SetPhoneStyle() {
                //IPHONE4
                if (height <= 480) {
                    $(".rzr_dt_label11").css("top", imgPosTop + imgHeight / 4.8 + "px");
                    $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4.2 + "px");
                    $(".rzr_dt_label31_2").css("top", imgPosTop + imgHeight / 1.8 + "px");
                    $(".rzr_dt_label31").css("top", imgPosTop + imgHeight / 1.5 + "px");

                    $(".rzr_dt_label11").css("font-size", "1.2em");
                    $(".rzr_dt_label21").css("font-size", "3em");
                    $(".rzr_dt_label31_2").css("font-size", "1em");
                    $(".rzr_dt_label31").css("font-size", "1em");
                }
                    //IPHONE5
                else if (height <= 568) {
                    $(".rzr_dt_label11").css("top", imgPosTop + imgHeight / 4.5 + "px");
                    $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 3.8 + "px");
                    $(".rzr_dt_label31_2").css("top", imgPosTop + imgHeight / 1.7 + "px");
                    $(".rzr_dt_label31").css("top", imgPosTop + imgHeight / 1.4 + "px");
                    $(".rzr_dt_label11").css("font-size", "1.3em");
                    $(".rzr_dt_label21").css("font-size", "4em");
                    $(".rzr_dt_label31_2").css("font-size", "1.3em");
                    $(".rzr_dt_label31").css("font-size", "1em");
                }
                    //IPHONE6
                else if (height <= 667) {
                    $(".rzr_dt_label11").css("top", imgPosTop + imgHeight / 5 + "px");
                    $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    $(".rzr_dt_label31_2").css("top", imgPosTop + imgHeight / 1.9 + "px");
                    $(".rzr_dt_label31").css("top", imgPosTop + imgHeight / 1.5 + "px");
                    $(".rzr_dt_label11").css("font-size", "1.4em");
                    $(".rzr_dt_label21").css("font-size", "4.5em");
                    $(".rzr_dt_label31_2").css("font-size", "1.4em");
                    $(".rzr_dt_label31").css("font-size", "1.1em");
                }
                    //IPHONE6PLUS/平板
                else {
                    $(".rzr_dt_label11").css("top", imgPosTop + imgHeight / 5 + "px");
                    $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    $(".rzr_dt_label31_2").css("top", imgPosTop + imgHeight / 2 + "px");
                    $(".rzr_dt_label31").css("top", imgPosTop + imgHeight / 1.55 + "px");
                    $(".rzr_dt_label11").css("font-size", "1.5em");
                    $(".rzr_dt_label21").css("font-size", "5em");
                    $(".rzr_dt_label31_2").css("font-size", "1.5em");
                    $(".rzr_dt_label31").css("font-size", "1.1em");
                }

                ////TimesForm
                if (height <= 480) {
                }
                    //Iphone5
                else if (height <= 568) {
                }
                    //Iphone6
                else if (height <= 667) {
                    $(".TimesForm").children().eq(1).css("font-size", "1.0em");

                }
                    //Iphone6Plus，平板
                else {
                    $(".TimesForm").children().eq(0).css("font-size", "0.8em");
                    $(".TimesForm").children().eq(1).css("font-size", "1.2em");
                }

                //footer
                //Iphone4
                if (height <= 480) {
                    $(".imgButtons").css("font-size", "0.8em");

                    $(".imgButtons").each(function () {
                        $(this).children().eq(1).css("line-height", "180%");
                    });
                }
                    //Iphone5
                else if (height <= 568) {
                    $(".imgButtons").each(function () {
                        $(this).children().eq(0).children().css("width", "45%");
                    });
                }
                    //Iphone6
                else if (height <= 667) {
                    $(".imgButtons").each(function () {
                        $(this).children().eq(0).children().css("width", "45%");
                    });
                }
                    //其它屏幕（Iphone6plus,平板）
                else {
                    $(".imgButtons").each(function () {
                        $(this).children().eq(0).children().css("width", "42%");
                    });
                }
            }

            //设置界面按钮
            function SetFomrButton() {
                $(".imgButtons").each(function (index) {
                    //TODO:按钮1
                    if (index == 3) {
                        $(this).click(function () {
                            ///中幅客人不会操作设备
                            if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                                if ($("#H_CompanyID").val() == 4) {
                                    showToast("您不是主人，不能控制设备");
                                } else {
                                    showToast("主人限制权限，不能控制设备");
                                }
                                return;
                            }

                            if ($(this).children().eq(1).text() == "已关") {
                                if ($("#s_CheckPM25").text() == "设备未连接") {
                                    showToast("设备未连接");
                                    return;
                                }
                                //开启设备
                                SetDeviceOnOFF(1, 0);
                            }
                            else {
                                //关闭设备
                                SetDeviceOnOFF(0, 0);
                            }
                        });
                    }

                    //TODO:按钮2
                    if (index == 0) {
                        $(this).click(function () {
                            OpenWifiForm();
                        });
                    }

                    if (index == 4) {
                        $(this).click(function () {
                            ///中幅客人不会操作设备
                            if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                                if ($("#H_CompanyID").val() == 4) {
                                    showToast("您不是主人，不能控制设备");
                                } else {
                                    showToast("主人限制权限，不能控制设备");
                                }
                                return;
                            }
                            OpenTimeForm();
                        });
                    }
                    if (index == 5) {
                        $(this).click(function () {
                            window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=PM25&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
                        });
                    }
                });
            }
            var Temp;
            //动画开关（true/false）
            function AnimSwitch(state) {
                if (state == 'SwitchON') {
                    $(".rzr_dt_41").css("visibility", "hidden");
                    $(".rzr_dt_11").css("visibility", "visible");
                    $(".rzr_dt_21").css("visibility", "visible");
                    $(".rzr_dt_31").css("visibility", "visible");
                    $(".rzr_dt_label11").css("visibility", "visible");
                    $(".rzr_dt_label31").css("visibility", "visible");
                    var pmFontSize = "5em";
                    //IPHONE4
                    if (height <= 480) {
                        pmFontSize = "3em";
                    } else if (height <= 568) {
                        pmFontSize = "4em";
                    } else if (height <= 667) {
                        pmFontSize = "4.5em";
                    } else {
                        pmFontSize = "5em";
                    }
                    $(".rzr_dt_label21").css("font-size", pmFontSize).children().css("border-bottom", "1px solid #242134");


                    if (height <= 480) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4.2 + "px");
                    }
                    else if (height <= 568) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 3.8 + "px");
                    }
                    else if (height <= 667) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    }
                    else {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    }
                }
                else if (state == 'SwitchOFF') {
                    $(".rzr_dt_41").css("visibility", "visible");
                    $(".rzr_dt_11").css("visibility", "hidden");
                    $(".rzr_dt_21").css("visibility", "hidden");
                    $(".rzr_dt_31").css("visibility", "hidden");
                    var pmFontSize = "5em";

                    //IPHONE4
                    if (height <= 480) {
                        pmFontSize = "3em";
                    } else if (height <= 568) {
                        pmFontSize = "4em";
                    } else if (height <= 667) {
                        pmFontSize = "4.5em";
                    } else {
                        pmFontSize = "5em";
                    }
                    $(".rzr_dt_label21").css("font-size", pmFontSize).children().css("border-bottom", "1px solid #242134");

                    if (height <= 480) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4.2 + "px");
                    }
                    else if (height <= 568) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 3.8 + "px");
                    }
                    else if (height <= 667) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    }
                    else {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 4 + "px");
                    }
                }
                else if (state == 'OFFLine') {
                    $(".rzr_dt_41").css("visibility", "visible");
                    $(".rzr_dt_11").css("visibility", "hidden");
                    $(".rzr_dt_21").css("visibility", "hidden");
                    $(".rzr_dt_31").css("visibility", "hidden");
                    if (height <= 480) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 2.25 + "px")
                            .css("font-size", "1.6em")
                            .children()
                            .css("border-bottom", "none");
                    }
                    else if (height <= 568) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 2.25 + "px")
                            .css("font-size", "1.6em")
                            .children()
                            .css("border-bottom", "none");
                    }
                    else if (height <= 667) {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 2.2 + "px")
                            .css("font-size", "1.6em")
                            .children()
                            .css("border-bottom", "none");
                    }
                    else {
                        $(".rzr_dt_label21").css("top", imgPosTop + imgHeight / 2.1 + "px")
                            .css("font-size", "1.6em")
                            .children()
                            .css("border-bottom", "none");
                    }

                    $(".rzr_dt_label11").css("visibility", "hidden");
                    $(".rzr_dt_label31").css("visibility", "hidden");
                }
                if (state != "OFFLine") {
                    $("#s_" + $("#H_DeviceMac").val()).html("&nbsp;&nbsp;在线");
                    $("#img_" + $("#H_DeviceMac").val()).attr("src", "./image/在线.png");
                }
                else {
                    $("#s_" + $("#H_DeviceMac").val()).html("&nbsp;&nbsp;离线");
                    $("#img_" + $("#H_DeviceMac").val()).attr("src", "./image/离线.png");
                }
                animState = state;
                window.clearInterval(Temp);
                Temp = window.setInterval(function () {
                    if (animState) {
                        $(".rzr_dt_31").fadeToggle("fast", "linear", function () {
                            $(".rzr_dt_21").fadeToggle("fast", "linear", function () {
                                $(".rzr_dt_11").fadeToggle("fast", "linear", function () {
                                })
                            })
                        })
                    }
                }, 600);
            }

            //执行函数
            SetPhoneStyle();

            SetFomrButton();

            //切换到设备展开窗口
            function TabEquipmentOpenForm() {
                $(".page1").hide();
                $("body").css("overflow-y", "hidden");
                $(".page2").slideDown(500);
            }

            //切换到检测仪b3
            function TabEquipmentB3Form() {
                $(".detector-b3-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $(".fb-dialog").modal();
                $("body").css("overflow-y", "hidden");
                $(".detector-b3-page").slideDown(300);
                $(".fb-dialog").modal('hide');
                document.getElementById("detector-b3-area-back-div").style.marginLeft = (screenWidth - (document.getElementById("detector-b3-area-logo").offsetWidth + document.getElementById("detector-b3-area-text").offsetWidth + screenWidth / 10)) + "px";
            }
            //切换到设备列表窗口
            function TabEquipmentListForm() {
                window.clearInterval(intime);
                $(".page2").slideUp(500, function () {
                    $(".page2").css("visibility", "visible");
                    $(".page1").show();
                });

                $(".page0").slideUp(500, function () {
                    $(".page0").css("visibility", "visible");
                    $(".page1").show();
                });

                $(".detector-b3-page").slideUp(300, function () {
                    $(".detector-b3-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".sange-jinghuaqi-page").slideUp(300, function () {
                    $(".sange-jinghuaqi-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".relation-page").slideUp(300, function () {
                    $(".relation-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".relation-b3-page").slideUp(300, function () {
                    $(".relation-b3-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".xinfeng-ab-page").slideUp(300, function () {
                    $(".xinfeng-ab-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".b3r-page").slideUp(300, function () {
                    b3r_animationRun = false; //停止动画
                    $(".b3r-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                $(".b1-page").slideUp(300, function () {
                    b1_animationRun = false; //停止动画
                    $(".b1-page").css("visibility", "visible");
                    $(".device-list-page").show();
                });

                ///设置当前显示的设备为空
                $("#H_DeviceMac").val("");
                $("#H_DeviceMac1").val("");
                //初始化快速响应参数
                IsChangeSwitchState = true;
                IsChangeSpeedState = true;
                IsChangeModeState = true;
                IsChangeSleepState = true;
                clearInterval(KeepStateTmp);
                KeepStateTmp = 0;
                i = 0;


                $("body").css("overflow-y", "auto");
            }
            //切换到净化器
            function TabEqupmentJhqForm() {
                $(".page1").hide();
                $("body").css("overflow-y", "hidden");
                $(".page0").slideDown(500);
            }

            //切换到关联
            function TabEqupmentGlForm() {
                $(".relation-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".relation-page").slideDown(300);
            }
            //切换b3联动
            function TabEquipmentB3RelationForm() {
                $(".relation-b3-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".fb-dialog").modal();
                $(".relation-b3-page").slideDown(300);
                $(".fb-dialog").modal('hide');
                document.getElementById('relation-b3-area-back-div').style.marginLeft = (screenWidth - (document.getElementById('relation-b3-area-logo').offsetWidth + document.getElementById('relation-b3-area-text').offsetWidth + screenWidth / 15)) + 'px';
            }
            //切换到三个爸爸净化器
            function TabEqupmentSanGeJhqForm() {
                $(".sange-jinghuaqi-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".sange-jinghuaqi-page").slideDown(300);
            }

            //切换到安本新风
            function TabEqupmentAbXinFengForm() {
                $(".xinfeng-ab-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".xinfeng-ab-page").slideDown(300);
                //setSanGeClickAdaption();
            }

        </script>

		<div class="page1"
			style="width: 100%; height: 100%; position: absolute; top: 0px; overflow-x: hidden;">
			<div id="mainmenu"
				style="padding-left: 2%; padding-right: 2%; width: 100%;">
			</div>
		</div>

		<!--Dialog 新增弹窗定时界面-->
		<div class="modal fade bs-example-modal-lg ShowDialg">
			<div class="modal-dialog modal-lg">
				<div class="modal-content ShowDialg_content"
					style="margin: 80px 20px 0px 20px;">
					<div class="modal-body">
						<div class="Dialog-page">
							<div class="ShowDialg-Header">
								<h3 class="modal-title" id="myModalLabel"></h3>
								<hr>
							</div>
							<div class="ShowDialg-Body"></div>
						</div>
					</div>
					<div id="ShowDialg-Buttons" class="ShowDialg-Buttons"></div>
				</div>
			</div>
		</div>
		<!--定时窗口界面内容元素-->
		<div class="timesinfo" style="display: none; color: #ffffff;">
			<table style="width: 100%;">
				<tbody>
					<tr>
						<td
							style="vertical-align: middle; font-size: 18px; width: 30%; text-align: right; color: #ffffff;">定时：
						</td>
						<td>
							<table
								style="width: 75px; background-color: #fff; border-radius: 5px; font-size: 23px; color: #000; height: 40px;">
								<tbody>
									<tr>
										<td class="switch1"
											style="width: 50%; text-align: left; padding-left: 5px;"
											onmousemove="Switch1Button()">开</td>
										<td class="switch2"
											style="width: 50%; text-align: right; padding-right: 5px;"
											onmousemove="Switch2Button()"><span
											style="padding: 2px 12px 2px 12px; background-color: rgb(85, 82, 103); border-radius: 5px;">&nbsp;</span></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td style="height: 15px;"></td>
					</tr>
					<tr>
						<td
							style="vertical-align: top; font-size: 18px; width: 30%; text-align: right; padding-top: 5px; color: #ffffff;">开机：
						</td>
						<td>
							<div class="form-group">
								<div class="input-group date form_time col-md-5" data-date=""
									data-date-format="hh:ii" data-link-field="dtp_input3"
									data-link-format="hh:ii">
									<input class="form-control" size="14" type="text" value=""
										id="inp_Ontime" readonly=""> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-time"> <img
											src="./image/选择日期.png"
											style="float: left; width: 25px; height: 25px; margin-top: -20px; margin-left: -5px;">
									</span>
									</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td
							style="vertical-align: top; font-size: 18px; width: 30%; text-align: right; padding-top: 5px; color: #ffffff;">关机：
						</td>
						<td>
							<div class="form-group">
								<div class="input-group date form_time col-md-5" data-date=""
									data-date-format="hh:ii" data-link-field="dtp_input3"
									data-link-format="hh:ii">
									<input class="form-control" size="14" type="text" value=""
										id="inp_Offtime" readonly=""> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-time"> <img
											src="./image/选择日期.png"
											style="float: left; width: 25px; height: 25px; margin-top: -20px; margin-left: -5px;">
									</span>
									</span>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- B3 fb-dialog -->
		<div class="modal fade fb-dialog" tabindex="-1" role="dialog"
			aria-labelledby="myLargeModalLabel"></div>

		<script type="text/javascript">
            function OpenDialog(op) {
                $(".ShowDialg").modal({ backdrop: 'static', keyboard: false });
                var data = eval(op);
                if (data.type == "Round") {
                    $(".ShowDialg_content").css("border-radius", "10px");
                }
                else {
                    $(".ShowDialg_content").css("border-radius", "0px");
                }
                $(".ShowDialg_content").css("background-color", data.background);
                $(".modal-title").html(data.title);
                $(".ShowDialg-Body").html(data.body);
                $(".ShowDialg-Buttons").html("");
                for (var i = 0; i < data.buttons.length; i++) {
                    var button = document.createElement("input");
                    button.value = data.buttons[i].text;
                    button.type = button;
                    if (data.buttons.length > 1) {
                        button.style.width = "50%";
                        button.style.height = "50px";
                        button.style.fontSize = "25px";
                        button.style.border = "none";
                        button.type = "button";
                        button.setAttribute("data-dismiss", "modal");
                        button.style.backgroundColor = data.buttons[i].background;
                        button.style.color = data.buttons[i].color;
                        button.onclick = data.buttons[i].click;
                    }
                    else {
                        button.style.width = "100%";
                        button.style.height = "50px";
                        button.style.fontSize = "25px";
                        button.style.border = "none";
                        button.type = "button";
                        button.style.backgroundColor = data.buttons[i].background;
                        button.style.color = data.buttons[i].color;
                        button.onclick = data.buttons[i].click;
                    }
                    document.getElementById("ShowDialg-Buttons").appendChild(button);
                }
            }

            //打开连接网络弹窗
            function OpenWifiForm() {
                var s = 3;
                if ($("#H_CompanyID").val() == '3') {
                    s = 5;
                }
                if (document.documentElement.clientHeight >= 736) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:27px;height:27px;' />&nbsp;&nbsp;<span style='font-size:27px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:22px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:22px;color:#DBDBDC;">2 . 长按设备上的WIFI按钮' + s + '秒以上</p><p style="font-size:22px;color:#DBDBDC;">3 . 听到"嘀"声后点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 667) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:25px;height:25px;' />&nbsp;&nbsp;<span style='font-size:23px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:19px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:19px;color:#DBDBDC;">2 . 长按设备上的WIFI按钮' + s + '秒以上</p><p style="font-size:19px;color:#DBDBDC;">3 . 听到"嘀"声后点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 568) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上的WIFI按钮' + s + '秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 听到"嘀"声后点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上的WIFI按钮' + s + '秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 听到"嘀"声后点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
            }

            function OpenB3Form() {
                if (document.documentElement.clientHeight >= 736) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:27px;height:27px;' />&nbsp;&nbsp;<span style='font-size:27px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:22px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:22px;color:#DBDBDC;">2 . 长按设备上方的白色配置按钮3秒以上</p><p style="font-size:22px;color:#DBDBDC;">3 . 设备上灯光快速闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 667) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:25px;height:25px;' />&nbsp;&nbsp;<span style='font-size:23px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:19px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:19px;color:#DBDBDC;">2 . 长按设备上方的白色配置按钮3秒以上</p><p style="font-size:19px;color:#DBDBDC;">3 . 设备上灯光快速闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 568) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上方的白色配置按钮3秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 设备上灯光快速闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请连接设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上方的白色配置按钮3秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 设备上灯光快速闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
            }

            function OpenB5SForm() {
                if (document.documentElement.clientHeight >= 736) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:27px;height:27px;' />&nbsp;&nbsp;<span style='font-size:27px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:22px;color:#DBDBDC;">1 . 请打开设备电源</p><p style="font-size:22px;color:#DBDBDC;">2 . 长按设备上的功能键3秒以上</p><p style="font-size:22px;color:#DBDBDC;">3 . 当设备屏幕上的WIFI图标闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 667) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:25px;height:25px;' />&nbsp;&nbsp;<span style='font-size:23px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:19px;color:#DBDBDC;">1 . 请打开设备电源</p><p style="font-size:19px;color:#DBDBDC;">2 . 长按设备上的功能键3秒以上</p><p style="font-size:19px;color:#DBDBDC;">3 . 当设备屏幕上的WIFI图标闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else if (document.documentElement.clientHeight >= 568) {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请打开设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上的功能键3秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 当设备屏幕上的WIFI图标闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
                else {
                    OpenDialog({
                        type: "Straight",
                        title: "<div style='text-align:center;'><img src='./image/形状-15.png' alt='连接网络' style='width:20px;height:20px;' />&nbsp;&nbsp;<span style='font-size:18px;color:#DBDBDC;'>连接网络提醒</span></div>",
                        body: '<p style="font-size:15px;color:#DBDBDC;">1 . 请打开设备电源</p><p style="font-size:15px;color:#DBDBDC;">2 . 长按设备上的功能键3秒以上</p><p style="font-size:15px;color:#DBDBDC;">3 . 当设备屏幕上的WIFI图标闪烁时点击下一步</p>',
                        background: "#373446",
                        buttons:
                            [
                                { background: "#7ebf52", color: "#fff", text: "取消", click: function () { } },
                                { background: "#808080", color: "#fff", text: "下一步", click: function () { LinkDeviceFun(); } }
                            ]
                    });
                }
            }

            //打开定时窗口
            function OpenTimeForm() {
                OpenDialog({
                    type: "Straight",
                    title: "<h3 style='text-align:center;color:#ffffff'>定时</h3>",
                    body: $(".timesinfo").html(),
                    background: "#373446",
                    buttons:
                        [
                            { background: "#808080", color: "#fff", text: "取消", click: function () { } },
                            { background: "#7ebf52", color: "#fff", text: "确定", click: function () { SetONOFFTime(); } }
                        ]
                });

                $("#inp_Ontime").val($("#H_ONTime_" + $("#H_DeviceMac").val()).val());
                $("#inp_Offtime").val($("#H_OFFTime_" + $("#H_DeviceMac").val()).val());
                SetTimeShow();
            }

            $.fn.datetimepicker.dates['zh-CN'] = {
                days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
                daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
                daysMin: ["日", "一", "二", "三", "四", "五", "六", "日"],
                months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                today: "今天",
                suffix: [],
                meridiem: ["AM", "PM"]
            };

            function SetTimeShow() {
                $('.form_time').datetimepicker(
                    {
                        language: 'zh-CN',
                        weekStart: 1,
                        todayBtn: 1,
                        autoclose: 1,
                        todayHighlight: 1,
                        startView: 1,
                        minView: 0,
                        maxView: 1,
                        forceParse: 0
                    }
                );
            }

            function Switch1Button() {
                if ($(".switch1").text() != "开") {
                    $(".switch2").html('<span style="padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;">&nbsp;</span>');
                    $(".switch1").html("开");
                    //开启设备定时
                    SetOnOFFState(1);
                }
            }

            function Switch2Button() {
                if ($(".switch2").text() != "关") {
                    $(".switch1").html('<span style="padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;">&nbsp;</span>');
                    $(".switch2").html("关");
                    //关闭设备定时
                    SetOnOFFState(0);
                }
            }

        </script>

		<!--净化器-->
		<div class="page0"
			style="height: 568px; display: none; visibility: visible;">
			<!--头部-->
			<div
				style="background-color: #3e3b4f; width: 100%; height: 8%; color: rgb(156, 153, 173)">
				<div class="col-xs-9" style="height: 100%">
					<div id="sJHQ_DeviceName"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1em; font-weight: bolder; margin-top: 0px;">
					</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>

			<!--动画-->
			<div class="anim" id="jinghuaqi-center-circle-back-div">
				<img id="rootimg2" alt="" class="rzr_dt_12"
					src="./image/动态4.png" style="width: 267px; display: inline;">
				<img alt="" class="rzr_dt_22" src="./image/动态3.png"
					style="width: 247px; top: 65px; left: 37px; display: block;">
				<img alt="" class="rzr_dt_32" src="./image/动态2.png"
					style="width: 227px; top: 75px; left: 47px; display: block;">
				<div id="jinghuaqi-water-back-div"
					style="position: absolute; overflow: hidden; z-index: 13; border-radius: 1000px; height: 207px; width: 207px; top: 85px; left: 57px; background-color: rgb(55, 52, 70);">
					<div id="jinghuaqi-water-back-div1"
						style="overflow: hidden; background-color: #373446; z-index: 13; border-radius: 1000px; width: 100%; height: 100%">
						<img id="jinghuaqi-water-img" src="./image/water.png"
							style="z-index: 12; height: 100%; margin-top: -90%; margin-left: -102.958px;">
					</div>
				</div>
				<p class="rzr_dt_label12" id="p_Txt" style="top: 147.069px;">滤网剩余</p>
				<p class="rzr_dt_label22" id="p_Per" style="top: 166.25px;">100%</p>
			</div>

			<!--文字按钮-->
			<div class="fontsButton2" style="line-height: 57px;">
				<p>
					<span onclick="lvTxt()">更换滤网</span><a
						href="http://wechat.bjhike.com/app/DeviceList/MyDeviceList.aspx?PID=1&amp;CID=1&amp;WID=1&amp;OpenID=obwIJt5SACpBbCxy_w7q9HMphFCI&amp;rn=18901#"><span
						onclick="ChangeTxt()">更换说明</span></a>
				</p>
			</div>

			<!--底部菜单按钮-->
			<div class="footer">
				<!--第一行菜单-->
				<div>
					<table>
						<tbody>
							<tr>
								<td>
									<!--按钮2-->
									<div class="imgButtons0">
										<div class="imgButtons0-img">
											<img src="./image/连网1.png" alt="" style="width: 45%;">
										</div>
										<div class="imgButtons0-text">连接网络</div>
									</div>
								</td>
								<td>
									<!--按钮4-->
									<div class="imgButtons0" onclick="Share()">
										<div class="imgButtons0-img">
											<img src="./image/分享2.png" alt="" style="width: 45%;">
										</div>
										<div class="imgButtons0-text">分享</div>
									</div>
								</td>
								<td>
									<!--按钮6-->
									<div class="imgButtons0" onclick="More()">
										<div class="imgButtons0-img">
											<img src="./image/更多1.png" alt="" style="width: 45%;">
										</div>
										<div class="imgButtons0-text">更多</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--第二行菜单-->
				<div>
					<table>
						<tbody>
							<tr>
								<td>
									<!--按钮1-->
									<div class="imgButtons0">
										<div class="imgButtons0-img">
											<img src="./image/关闭.png" alt="" style="width: 45%;">
										</div>
										<div id="div_cleaner_switch" class="imgButtons0-text">已关</div>
									</div>
								</td>
								<td>
									<!--按钮3-->
									<div class="imgButtons0">
										<div class="imgButtons0-img">
											<img id="Img_WindSpeed" src="./image/风速1.png" alt=""
												style="width: 45%;">
										</div>
										<div class="imgButtons0-text" id="div_WindSpeed">风速1</div>
									</div>
								</td>
								<td>
									<!--按钮5-->
									<div class="imgButtons0" id="div_sleepmode_jhq">
										<div class="imgButtons0-img">
											<img id="Img_SleepMode" src="./image/模式1.png"
												style="width: 45%;">
										</div>
										<div class="imgButtons0-text" id="div_SleepMode">睡眠关</div>
									</div>
									<div class="imgButtons0" id="div_ptmode_jhq">
										<div class="imgButtons0-img">
											<img id="Img_PTMode" src="./image/模式1.png"
												style="width: 45%;">
										</div>
										<div class="imgButtons0-text" id="div_PTMode">旁通开</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<!--设备界面[设备列表2展开JS]-->
		<script src="./js/设备列表JS2.js"></script>
		<script type="text/javascript">
            document.getElementById("sJHQ_DeviceName").style.marginTop = -(document.getElementById("sJHQ_DeviceName").offsetHeight / 2) + "px";
            setJHQAdaption1();
            setWaterAnim2();
            setLvWangPercent(100);
            ///更换滤网
            function lvTxt() {
                var CID = $('#H_CompanyID').val();
                if (CID == 3) {
                    window.location.href = 'http://m.airquality.com.cn';

                } else if (CID == 26) {
                    window.location.href = 'http://wap.koudaitong.com/v2/feature/9f4wy07k';
                }
                else {
                    window.location.href = 'http://weidian.com/?userid=333215726&wfr=c';
                }
            }
            ///更换说明
            function ChangeTxt() {
                var CID = $("#H_CompanyID").val();
                if (CID == 3) {
                    window.location.href = 'http://wechat.bjhike.com/www/3/KJ300F-02A说明书.pdf';
                } else if (CID == 26) {
                    window.location.href = 'http://wechat.bjhike.com/www/26/宁波东大更换说明.pdf';
                } else {
                    window.location.href = 'http://wechat.bjhike.com/app/DeviceList/introduce.aspx';
                }
            }

            //设置按钮
            $(".imgButtons0").each(function (index) {
                $(this).mouseover(function () {
                    $(this).css("background-color", "#282536");
                }).mouseout(function () {
                    $(this).css("background-color", "");
                });

                //净化器开关
                if (index == 3) {
                    $(this).click(function () {
                        ///中幅客人不会操作设备
                        if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                            if ($("#H_CompanyID").val() == 4) {
                                showToast("您不是主人，不能控制设备");
                            } else {
                                showToast("主人限制权限，不能控制设备");
                            }
                            return;
                        }

                        if ($(this).children().eq(1).text() == "已关") {
                            $("#H_Switch_" + $("#H_DeviceMac1").val()).val('1');
                            SetDeviceOnOFF(1, 0);
                        }
                        else {
                            $("#H_Switch_" + $("#H_DeviceMac1").val()).val('0');
                            SetDeviceOnOFF(0, 0);
                        }
                    });
                }
                    //链接网络
                else if (index == 0) {
                    $(this).click(function () {
                        OpenWifiForm();
                    });
                }
                    ///风速设置 1234
                else if (index == 4) {
                    $(this).click(function () {
                        ///中幅客人不会操作设备
                        if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                            if ($("#H_CompanyID").val() == 4) {
                                showToast("您不是主人，不能控制设备");
                            } else {
                                showToast("主人限制权限，不能控制设备");
                            }
                            return;
                        }
                        SetWindSpeed();
                    });
                }
                    ///睡眠开关   旁通开关
                else if (index == 5) {
                    $(this).click(function () {
                        ///中幅客人不会操作设备
                        if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                            if ($("#H_CompanyID").val() == 4) {
                                showToast("您不是主人，不能控制设备");
                            } else {
                                showToast("主人限制权限，不能控制设备");
                            }
                            return;
                        }
                        var Mode = $(this).children().eq(1).text().replace("睡眠", "");
                        if (Mode == "开") {
                            //设置睡眠关
                            SetSleepMode(0);
                        }
                        else {
                            //设置睡眠开
                            SetSleepMode(1);
                        }
                    });
                }
                else if (index == 6) {
                    $(this).click(function () {
                        //旁通开关逻辑
                        if ($("#H_CompanyID").val() == 24 && $("#H_Type").val() == 11) {

                            var Mode = $(this).children().eq(1).text().replace("旁通", "");
                            if (Mode == "开") {
                                //设置旁通关
                                SetPTMode(0);
                            }
                            else {
                                //设置旁通开
                                SetPTMode(1);
                            }
                        }
                    });
                }
            });

        </script>


		<div class="detector-b3-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">
			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="detector-b3-page-device-name"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1.5em; font-weight: bolder; color: rgb(242, 255, 255); margin-top: -15px;">空气净化器</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>

			<div id="detector-b3-circle-big-back-div"
				style="width: 100%; height: 52%; margin-top: 2%; text-align: left; position: relative;">
				<div style="width: 100%; height: 55%">

					<img id="detector-b3-circle-bg-circle"
						style="position: absolute; z-index: 2; width: 146.025px; height: 146.025px; margin-left: 87.1px; margin-top: 8.1px;"
						src="./image/b3-color-circle-bg.png">
					<div id="detector-b3-pm-back-div"
						style="position: absolute; z-index: 3; color: rgb(39, 215, 248); text-align: center; width: 102.2px; height: 102px; margin-left: 109px; margin-top: 30.1px;">
						<div id="detector-b3-pm25-title-text"
							style="height: 20%; font-size: 1em;">室内PM2.5</div>
						<div id="detector-b3-pm25-content-text"
							style="font-size: 2em; height: 35%">0</div>
						<div id="detector-b3-pm25-judge-text"
							style="font-size: 1em; height: 20%"></div>
						<div id="detector-b3-split-line"
							style="height: 1px; background-color: #000000; width: 90%; margin-left: 5%; margin-top: 2px;"></div>
						<div id="detector-b3-inside-pm25-text"
							style="font-size: 0.8em; margin-top: 3%; border-radius: 20px; background-color: #252330; padding-top: 2px; padding-bottom: 2px;">室外PM2.5：0</div>
					</div>
					<canvas id="detector-b3-page-center-canvas" width="500"
						height="500"
						style="position: absolute; z-index: 1; height: 162.25px; width: 162px; margin-left: 79px;">
                    
                </canvas>
				</div>

				<div id="detector-b3-other-big-back-div"
					style="height: 45%; width: 100%; position: relative; color: #28acec;">

					<div id="detector-b3-other-temp-big-back-div"
						style="width: 24%; height: 100%; float: left; margin-left: 2%;">

						<img class="detector-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 6.65px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="detector-b3-other-data-title-class"
								style="margin-top: 17.99px; font-size: 1em;">温度</div>
							<div class="detetor-b3-other-data-data-class"
								id="div_Temperature" style="font-size: 1.3em;">0</div>
							<div class="detector-b3-other-data-unit-class"
								style="font-size: 1em">℃</div>
						</div>
						<div class="detector-b3-other-judge-text-class"
							id="div_Temperature_Content"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 83.3px;">--</div>

					</div>

					<div id="detector-b3-other-humi-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="detector-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 6.65px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="detector-b3-other-data-title-class"
								style="margin-top: 17.99px; font-size: 1em;">湿度</div>
							<div class="detetor-b3-other-data-data-class" id="div_Humidity"
								style="font-size: 1.3em;">0</div>
							<div class="detector-b3-other-data-unit-class"
								style="font-size: 1em">%</div>
						</div>
						<div class="detector-b3-other-judge-text-class"
							id="div_Humidity_Content"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 83.3px;">--</div>

					</div>

					<div id="detector-b3-other-co2-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="detector-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 6.65px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="detector-b3-other-data-title-class"
								style="margin-top: 17.99px; font-size: 1em;">二氧化碳</div>
							<div class="detetor-b3-other-data-data-class" id="div_co2"
								style="font-size: 1.3em;">0</div>
							<div class="detector-b3-other-data-unit-class"
								style="font-size: 1em">ppm</div>
						</div>
						<div class="detector-b3-other-judge-text-class"
							id="div_co2_Content"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 83.3px;">--</div>

					</div>

					<div id="detector-b3-other-tvoc-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="detector-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 6.65px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="detector-b3-other-data-title-class" id="div_tvoc_txt"
								style="margin-top: 17.99px; font-size: 1em;">TVOC</div>
							<div class="detetor-b3-other-data-data-class" id="div_tvoc"
								style="font-size: 1.3em;">0.0</div>
							<div class="detector-b3-other-data-unit-class" id="div_tvoc_unit"
								style="font-size: 1em">mg/m³</div>
						</div>
						<div class="detector-b3-other-judge-text-class"
							id="div_tvoc_Content"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 83.3px;">--</div>

					</div>

				</div>
			</div>
			<div id="detector-b3-area-back-big-div"
				style="width: 100%; height: 4%; color: #a8a4B9;">
				<div id="detector-b3-area-back-div"
					style="height: 100%; position: relative; margin-left: 202px;">
					<img id="detector-b3-area-logo" src="./image/向上收起.png"
						style="position: relative; height: 16px; margin-top: 1.5px;">
					<span id="detector-b3-area-text"
						style="margin-left: 5px; top: 50%; position: absolute; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; margin-top: -10px;">位置：暂无</span>
				</div>
			</div>
			<div style="background-color: #2d2a3c; height: 5%; color: #ffffff">
				<div id="detector-b3-device-dingshi-text-big-back"
					style="height: 100%; position: relative;">
					<div id="detector-b3-device-dingshi-text-little-back"
						style="width: 100%; position: absolute; top: 10%;">
						<div id="detector-b3-dingshi-open-time" class="col-xs-5"
							style="text-align: center; overflow: hidden; white-space: nowrap;">开机时间：20：38</div>
						<div id="detector-b3-dingshi-split-line" class="col-xs-2"
							style="text-align: center; color: #000000">|</div>
						<div id="detector-b3-dingshi-close-time" class="col-xs-5"
							style="text-align: center; overflow: hidden; white-space: nowrap;">关机时间：19：00</div>
					</div>
				</div>
			</div>

			<div style="height: 29%; color: #25d9f9">
				<div style="height: 50%; position: relative;">
					<div id="detector-b3-page-device-control-row1"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" id="div_LinkWIFI" style="text-align: center"
							onclick="OpenWifiForm()">
							<img style="width: 50%;" src="./image/连网1.png">
							<div style="margin-top: 5%">连接网络</div>
						</div>
						<div class="col-xs-4" style="text-align: center" onclick="Share()">
							<img style="width: 50%;" src="./image/分享2.png">
							<div style="margin-top: 5%">分享</div>
						</div>
						<div class="col-xs-4" style="text-align: center" id="bxl_more_div"
							onclick="More()">
							<img style="width: 50%;" src="./image/更多1.png">
							<div style="margin-top: 5%">更多</div>
						</div>
					</div>
				</div>

				<div style="height: 50%; position: relative;">
					<div id="detector-b3-page-device-control-row2"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" style="text-align: center"
							onclick="detectorB3SwitchBtnClick()">
							<img id="detector-b3-switch-img" style="width: 50%;"
								src="./image/关闭.png">
							<div id="detector-b3-switch-text" style="margin-top: 5%">已关</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="ShowTime()">
							<img style="width: 50%;" src="./image/定时.png">
							<div style="margin-top: 5%">定时</div>
						</div>

						<div class="col-xs-4" style="text-align: center"
							onclick="HistoryBtnClick()">
							<img style="width: 50%;" src="./image/历史数据1.png">
							<div style="margin-top: 5%">历史数据</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script> //检测仪b3
            setB3PageAdaption();
            var b3TypeArray;
            setB3Canvas();

            function ShowTime() {
                if (ShowDemo == "0") {
                    showToast("体验设备，不支持该功能");
                    return;
                }
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }

                OpenTimeForm();
            }
            function detectorB3HistoryBtnClick() {
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=PM25&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }
            //b3开关按钮点击
            function detectorB3SwitchBtnClick() {
                if (ShowDemo == "0") {
                    showToast("体验设备，不支持该功能");
                    return;
                }
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }

                if ($("#detector-b3-switch-text").text() == "已关") {
                    SetDeviceOnOFF(1, 0);
                } else {
                    SetDeviceOnOFF(0, 0);
                }
            }

        </script>

		<!--- 历史数据dialog --->
		<div class="modal fade history-dialog" tabindex="-1" role="dialog"
			aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog modal-lg history-content-div"
				style="height: 345.6px; margin-top: 20%;">
				<div class="modal-content"
					style="background-color: #373446; width: 90%; height: 100%; margin-left: 5%; border-radius: 1px; text-align: center; color: #ffffff;">
					<div id="history-dialog-title"
						style="width: 100%; height: 34.56px; margin-top: 17.28px; text-align: center; font-size: 2em;">历史数据</div>
					<div id="history-dialog-select-text"
						style="width: 100%; height: 34.56px; margin-top: 6.912px; text-align: center; font-size: 1.5em;">&nbsp;&nbsp;&nbsp;请选择要查看的历史数据：</div>
					<div id="history-dialog-pm-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 6.912px; border: 1px solid rgb(71, 68, 86); position: absolute; border-radius: 3px; font-size: 1.5em; background-color: rgb(127, 190, 83);"
						onclick="historyDialogPMBtnClick()">
						<div class="history-dialog-data-title-little-back-div"
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">PM2.5</div>
					</div>
					<div id="history-dialog-temp-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 44.928px; border: 1px solid rgb(71, 68, 86); border-radius: 3px; font-size: 1.5em; position: absolute;"
						onclick="historyDialogTempBtnClick()">
						<div
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">温&nbsp;&nbsp;&nbsp;&nbsp;度</div>
					</div>
					<div id="history-dialog-humi-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 82.944px; border: 1px solid rgb(71, 68, 86); border-radius: 3px; font-size: 1.5em; position: absolute;"
						onclick="historyDialogHumiBtnClick()">
						<div
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">湿&nbsp;&nbsp;&nbsp;&nbsp;度</div>
					</div>
					<div id="history-dialog-pa-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 120.96px; border: 1px solid rgb(71, 68, 86); border-radius: 3px; font-size: 1.5em; position: absolute;"
						onclick="historyDialogPaBtnClick()">
						<div
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">甲&nbsp;&nbsp;&nbsp;&nbsp;醛</div>
					</div>
					<div id="history-dialog-co2-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 158.976px; border: 1px solid rgb(71, 68, 86); border-radius: 3px; font-size: 1.5em; position: absolute;"
						onclick="historyDialogCo2BtnClick()">
						<div
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">二氧化碳</div>
					</div>
					<div id="history-dialog-tvoc-title"
						style="width: 60%; margin-left: 20%; height: 27.648px; margin-top: 196.992px; border: 1px solid rgb(71, 68, 86); border-radius: 3px; font-size: 1.5em; position: absolute;"
						onclick="historyDialogTvocBtnClick()">
						<div
							style="width: 100%; position: absolute; top: 50%; height: 30px; margin-top: -15px">TVOC</div>
					</div>
				</div>
			</div>
		</div>

		<script>
            var screenWidth = $(window).width();
            //适配历史数据Dialog
            setHistoryDialogAdaption();

            function HistoryBtnClick() {
                var ProjectID = $("#H_Type").val();
                if (ProjectID == "1" || ProjectID == "3" || ProjectID == "1-2" || ProjectID == "3-2") {
                    var historyDataTypeArray = ['pm'];
                    setHistoryDialogType(historyDataTypeArray);
                }
                else if (ProjectID == "4" || ProjectID == "4-2") {
                    var historyDataTypeArray = ['pm', 'pa'];
                    setHistoryDialogType(historyDataTypeArray);
                }
                else if (ProjectID == "5" || ProjectID == "5-2") {
                    var historyDataTypeArray = ['pm', 'tvoc'];
                    setHistoryDialogType(historyDataTypeArray);
                }
                else if (ProjectID == "6" || ProjectID == "6-2") {
                    var historyDataTypeArray = ['pm', 'co2'];
                    setHistoryDialogType(historyDataTypeArray);
                }
                else if (ProjectID == "7" || ProjectID == "7-2") {
                    var historyDataTypeArray = ['pm', 'temp', 'humi'];
                    setHistoryDialogType(historyDataTypeArray);
                }
                else if (ProjectID == "8" || ProjectID == "8-2") {
                    var historyDataTypeArray = ['pm', 'temp', 'humi', 'co2', 'tvoc'];
                    setHistoryDialogType(historyDataTypeArray);
                }

                $(".history-dialog").modal();
            }

            function historyDialogPMBtnClick() {
                historyDialogAllBtnClick("#history-dialog-pm-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=PM25&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

            function historyDialogTempBtnClick() {
                historyDialogAllBtnClick("#history-dialog-temp-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=Temperature&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

            function historyDialogHumiBtnClick() {
                historyDialogAllBtnClick("#history-dialog-humi-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=Humidity&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

            function historyDialogPaBtnClick() {
                historyDialogAllBtnClick("#history-dialog-pa-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=PA&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

            function historyDialogCo2BtnClick() {
                historyDialogAllBtnClick("#history-dialog-co2-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=CO2&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

            function historyDialogTvocBtnClick() {
                historyDialogAllBtnClick("#history-dialog-tvoc-title");
                window.location.href = "History_Report.aspx?DeviceMac=" + $("#H_DeviceMac").val() + "&Type=TVOC&OpenID=" + $("#H_OpenID").val() + "&CID=" + $("#H_CompanyID").val() + "&WID=" + $("#H_WID").val();
            }

        </script>


		<div class="relation-b3-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">

			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="relation-b3-page-title-mode"
						style="position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1.2em; font-weight: bolder; color: rgb(168, 164, 185); margin-top: -11.5px;">智能模式</div>
					<div id="relation-b3-page-title-img-back-div"
						style="margin-left: 78px;">

						<img id="relation-b3-page-title-img1"
							style="position: absolute; z-index: 1; height: 70%; top: 10%;"
							src="./image/关联动态1.png"> <img
							id="relation-b3-page-title-img2"
							style="position: absolute; z-index: 2; height: 70%; top: 10%; visibility: hidden;"
							src="./iamge/关联动态2.png">

					</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>

			<div id="relation-b3-circle-big-back-div"
				style="width: 100%; height: 48%; margin-top: 2%; text-align: left; position: relative;">
				<div style="width: 100%; height: 65%">

					<img id="relation-b3-circle-bg-circle"
						style="position: absolute; z-index: 2; width: 110.16px; height: 110.16px; margin-left: 92.5px; margin-top: 7.5px;"
						src="./image/b3-color-circle-bg.png">
					<div id="relation-b3-pm-back-div"
						style="position: absolute; z-index: 3; color: rgb(39, 215, 248); text-align: center; width: 77px; height: 77px; margin-left: 121.5px; margin-top: 24px;">
						<div id="relation-b3-pm25-title-text"
							style="height: 20%; font-size: 1em;">室内PM2.5</div>
						<div id="relation-b3-pm25-content-text"
							style="font-size: 2em; height: 50%;">--</div>
						<div id="relation-b3-judge-content-text"
							style="font-size: 1em; height: 15%">轻度污染</div>
						<div id="relation-b3-inside-pm25-text"
							style="font-size: 0.8em; margin-top: 3%; border-radius: 20px; background-color: #252330; padding-top: 2px; padding-bottom: 2px;">室外PM2.5：--</div>
					</div>
					<canvas id="relation-b3-page-center-canvas" width="500"
						height="500"
						style="position: absolute; z-index: 1; height: 149.6px; width: 150px; margin-left: 85px;">
                    
                </canvas>
				</div>

				<div id="relation-b3-other-big-back-div"
					style="height: 35%; width: 100%; position: relative; color: #28acec;">

					<div id="relation-b3-other-temp-big-back-div"
						style="width: 24%; height: 100%; float: left; margin-left: 2%;">

						<img class="relation-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 4.8px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="relation-b3-other-data-title-class"
								style="margin-top: 23.88px; font-size: 1em;">温度</div>
							<div class="relation-b3-other-data-data-class"
								style="font-size: 1.3em;" id="div_relation_b3_Temperature">--</div>
						</div>

					</div>

					<div id="relation-b3-other-humi-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="relation-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 4.8px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="relation-b3-other-data-title-class"
								style="margin-top: 23.88px; font-size: 1em;">湿度</div>
							<div class="relation-b3-other-data-data-class"
								style="font-size: 1.3em;" id="div_relation_b3_Humidity">--</div>
						</div>

					</div>

					<div id="relation-b3-other-co2-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="relation-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 4.8px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="relation-b3-other-data-title-class"
								style="margin-top: 23.88px; font-size: 1em;">二氧化碳</div>
							<div class="relation-b3-other-data-data-class"
								style="font-size: 1.3em;" id="div_relation_b3_co2">--</div>
						</div>

					</div>

					<div id="relation-b3-other-tvoc-big-back-div"
						style="width: 24%; height: 100%; float: left;">

						<img class="relation-b3-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 4.8px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="relation-b3-other-data-title-class"
								id="div_relation_b3_tvoc_txt"
								style="margin-top: 23.88px; font-size: 1em;">TVOC</div>
							<div class="relation-b3-other-data-data-class"
								style="font-size: 1.3em;" id="div_relation_b3_tvoc">--</div>
						</div>

					</div>

				</div>
			</div>

			<div id="relation-b3-lvwang-big-back-big-div"
				style="background-color: #2d2a3c; width: 100%; height: 12%; color: #a8a4B9;">
				<div class="col-xs-4"
					style="height: 100%; padding: 0px 10px 0px 0px;">
					<div id="relation-b3-lvwang-title-text"
						style="width: 100%; position: absolute; top: 50%; text-align: right; font-size: 1.8em; font-weight: bolder; color: rgb(33, 183, 154); line-height: 1; margin-top: -25px;">
						滤网&nbsp;&nbsp;<br> 剩余&nbsp;&nbsp;
					</div>
				</div>

				<div id="relation-b3-lvwang-little-back-div" class="col-xs-4"
					style="height: 100%; padding: 0px;">
					<div id="relation-b3-lvwang-text"
						style="width: 100%; position: absolute; top: 50%; text-align: center; font-size: 3.5em; font-weight: bolder; color: rgb(33, 183, 154); margin-top: -35px;">90%</div>
				</div>

				<div class="col-xs-4"
					style="height: 100%; padding: 0px 0px 0px 10px;">
					<div id="relation-b3-lvwang-change-back-div" class="col-xs-8"
						style="text-align: center; height: 30%; border-radius: 3px; margin-top: 14.0296px; color: rgb(255, 255, 255); padding: 0px; background-color: rgb(33, 183, 154);"
						onclick="relationB3ChangeLvWangBtnClick()">
						<div id="relation-b3-lvwang-change-text"
							style="width: 100%; position: absolute; top: 50%; text-align: center; padding: 0px; margin-top: -10px;">更换滤网</div>
					</div>
					<div class="col-xs-8"
						style="background-color: #21b79a; text-align: center; height: 30%; border-radius: 3px; margin-top: 2%; color: #fff; padding: 0px"
						onclick="relationB3ChangeLvWangExpainBtnClick()">
						<div id="relation-b3-lvwang-change-explain-text"
							style="width: 100%; position: absolute; top: 50%; text-align: center; padding: 0px; margin-top: -10px;">更换说明</div>
					</div>
				</div>
			</div>

			<div id="relation-b3-area-back-big-div"
				style="width: 100%; height: 5%; color: #a8a4B9;">
				<div id="relation-b3-area-back-div"
					style="height: 100%; position: relative; margin-left: 212.667px;">
					<img id="relation-b3-area-logo" src="./image/向上收起.png"
						style="position: relative; height: 16px; margin-top: 4px;">
					<span id="relation-b3-area-text"
						style="margin-left: 5px; top: 50%; position: absolute; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; margin-top: -10px;">位置：暂无</span>
				</div>
			</div>

			<div id="relation-b3-control-back-big-div"
				style="background-color: #2d2a3c; width: 100%; height: 25%; color: #a8a4B9;">

				<div
					style="height: 12%; position: relative; color: #a8a4B9; font-size: 0.8em">
					<div
						style="width: 17%; height: 80%; margin-left: 7%; float: left; position: relative; text-align: center">
						<div id="relation-b3-jinghuaqi-title-text"
							style="width: 100%; position: absolute; padding-top: 1%; padding-bottom: 8%; border-radius: 0px 0px 8px 8px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">净化器</div>
					</div>
					<div
						style="width: 17%; height: 80%; margin-left: 52%; float: left; position: relative; text-align: center">
						<div id="relation-b3-detector-title-text"
							style="width: 100%; position: absolute; padding-top: 2%; padding-bottom: 8%; border-radius: 0px 0px 8px 8px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">检测仪</div>
					</div>
				</div>

				<div style="height: 44%; position: relative; color: #a8a4B9;">
					<div id="relation-b3-control-row2-back-div"
						style="width: 100%; position: absolute; font-size: 0.9em">
						<div id="relation-b3-jinghuaqi-switch-back-div"
							style="text-align: center; width: 17%; margin-left: 7%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="relationB3JingHuqQiSwitchBtnClick()">
							<img style="width: 45%;"
								src="./image/relation-jinghuaqi-switch-btn.png">
							<div id="relation-b3-jinghuaqi-switch-text"
								style="margin-top: 5%">已关</div>
						</div>
						<div
							style="text-align: center; width: 17%; margin-left: 6%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="relationB3UnrelationBtnClick()">
							<img style="width: 45%;"
								src="./image/b3-btn-new-unrelation.png">
							<div style="margin-top: 5%">解除关联</div>
						</div>
						<div
							style="text-align: center; width: 17%; margin-left: 6%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="relationB3HistoryBtnClick()">
							<img style="width: 45%;"
								src="./image/b3-btn-new-history.png">
							<div style="margin-top: 5%">历史数据</div>
						</div>
						<div id="relation-b3-detector-switch-back-div"
							style="text-align: center; width: 17%; margin-left: 6%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="relationB3DetectorSwitchBtnClick()">
							<img style="width: 45%;"
								src="./image/relation-detector-c5-switch-btn.png">
							<div id="relation-b3-detector-switch-text" style="margin-top: 5%">已关</div>
						</div>
					</div>
				</div>
				<div style="height: 44%; position: relative; color: #a8a4B9;">
					<div id="relation-b3-control-row3-back-div"
						style="width: 100%; position: absolute; font-size: 0.9em">
						<div
							style="text-align: center; width: 17%; margin-left: 7%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="OpenWifiForm();">
							<img style="width: 45%;"
								src="./image/relation-detector-c5-connectinternet-btn.png">
							<div style="margin-top: 5%">连接网络</div>
						</div>
						<div
							style="text-align: center; width: 17%; margin-left: 6%; float: left; background-color: #3f3c51; padding-top: 2%; padding-bottom: 1%; border-radius: 5px"
							onclick="Share()">
							<img style="width: 45%;"
								src="./image/relation-detector-c5-share-btn.png">
							<div style="margin-top: 5%">分享</div>
						</div>
					</div>
				</div>

			</div>

			<script>
                setB3RelationAdaption();
                setB3RelationCanvas();
                function relationB3ChangeLvWangBtnClick() {
                    lvTxt();
                }

                function relationB3ChangeLvWangExpainBtnClick() {
                    ChangeTxt();
                }

                function Remove(DeviceMac, DeviceMac1) {
                    if ($("#H_IsMaster_" + DeviceMac).val() == 0 && $("#H_IsMaster_" + DeviceMac1).val() == 0) {
                        showToast("您不是主人，不能解除关联");
                        return;
                    }

                    $.ajax({
                        url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                        data: {
                            OpType: "Remove",
                            OpenID: $("#H_OpenID").val(),
                            DeviceMac: DeviceMac,
                            ProjectName: $("#H_ProjectName").val()
                        },
                        type: 'post',
                        dataType: 'json',
                        success: function (data) {
                            var ReResult = eval(data);
                            if (ReResult.result == "1") {
                                window.location.href = "MyDeviceList.aspx?CID=" + $("#H_CompanyID").val() + "&OpenID=" + $("#H_OpenID").val() + "&WID=" + $("#H_WID").val() + "&rn=" + Math.random();
                            }
                            else {
                                //alert(ReResult.Reason);
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            //alert(XMLHttpRequest.status);
                            //alert(XMLHttpRequest.readyState);
                            //alert(textStatus);
                        }
                    });
                }

                //b3关联净化器开关按钮点击
                function relationB3JingHuqQiSwitchBtnClick() {
                    ///中幅客人不会操作设备
                    if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                        if ($("#H_CompanyID").val() == 4) {
                            showToast("您不是主人，不能控制设备");
                        } else {
                            showToast("主人限制权限，不能控制设备");
                        }
                        return;
                    }

                    if ($("#relation-b3-jinghuaqi-switch-text").text() == "已关") {
                        SetDeviceOnOFF(1, 1);
                    } else {
                        SetDeviceOnOFF(0, 1);
                    }
                }

                //b3联动解除关联按钮点击
                function relationB3UnrelationBtnClick() {
                    Remove($("#H_DeviceMac").val(), $("#H_DeviceMac1").val());
                }

                //b3联动历史数据按钮点击
                function relationB3HistoryBtnClick() {
                    HistoryBtnClick();
                }

                //b3关联检测仪b3开关按钮点击
                function relationB3DetectorSwitchBtnClick() {
                    ///中幅客人不会操作设备
                    if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                        if ($("#H_CompanyID").val() == 4) {
                            showToast("您不是主人，不能控制设备");
                        } else {
                            showToast("主人限制权限，不能控制设备");
                        }
                        return;
                    }

                    if ($("#relation-b3-detector-switch-text").text() == "已关") {
                        SetDeviceOnOFF(1, 0);
                    } else {
                        SetDeviceOnOFF(0, 0);
                    }
                }

                //b3关联动画开关状态
                var relationB3AnimState = false;

                //打开b3关联动画特效
                function OpenB3GuanlianAnim() {
                    $("#relation-b3-page-title-img1").css("visibility", "visible").attr("src", "./image/关联动态1.png");
                    relationB3AnimState = true;
                }

                //关闭b3关联动画特效
                function CloseB3GuanlianAnim() {
                    $("#relation-b3-page-title-img1").css("visibility", "visible").attr("src", "./image/未关联.png");
                    relationB3AnimState = false;
                }

                window.setInterval(function () {
                    if (relationB3AnimState) {
                        if ($("#relation-b3-page-title-img1").css("visibility") == "visible") {
                            $("#relation-b3-page-title-img1").css("visibility", "hidden");
                            $("#relation-b3-page-title-img2").css("visibility", "visible");
                        }
                        else {
                            $("#relation-b3-page-title-img1").css("visibility", "visible");
                            $("#relation-b3-page-title-img2").css("visibility", "hidden");
                        }
                    }
                    else {
                        $("#relation-b3-page-title-img2").css("visibility", "hidden");
                    }
                }, 300);
            </script>

		</div>

		<!--- 三个爸爸净化器 --->
		<script src="./image/devicelist-sange-jinghuaqi-page.js"></script>
		<div class="sange-jinghuaqi-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">
			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="sange-jinghuaqi-page-device-name"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1em; font-weight: bolder; color: rgb(242, 255, 255); margin-top: 0px;"></div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>

			<div id="sange-jinghuaqi-center-circle-back-div"
				style="height: 50%; text-align: left; position: relative;">
				<img id="sange-jinghuaqi-twinkle-cicle-level3"
					style="position: absolute; height: 94%; z-index: 10; margin-top: 8.52px; margin-left: 27px; display: none;"
					src="./iamge/动态4.png"> <img
					id="sange-jinghuaqi-twinkle-cicle-level2"
					style="position: absolute; height: 88%; z-index: 11; margin-top: 17.04px; margin-left: 35px; display: none;"
					src="./image/动态3.png"> <img
					id="sange-jinghuaqi-twinkle-cicle-level1"
					style="position: absolute; height: 82%; z-index: 12; margin-top: 25.56px; margin-left: 44px; display: block; opacity: 0.715;"
					src="./image/动态2.png">
				<div id="sange-jinghuaqi-water-back-div"
					style="position: absolute; overflow: hidden; z-index: 13; border-radius: 1000px; height: 215.84px; width: 215.84px; margin-top: 34.08px; margin-left: 52px; background-color: rgb(55, 52, 70);">
					<div id="sange-jinghuaqi-water-back-div1"
						style="overflow: hidden; background-color: #373446; z-index: 13; border-radius: 1000px; width: 100%; height: 100%">
						<img id="sange-jinghuaqi-water-img" src="./image/water.png"
							style="z-index: 12; height: 100%; margin-top: -90%; margin-left: -108.565px;">
					</div>
				</div>
				<div id="sange-jinghuaqi-center-lvwang-back-div"
					style="position: absolute; z-index: 14; height: 40%; text-align: center; width: 136.8px; margin-left: 91.5px; margin-top: 99.4px;">
					<div id="sange-jinghuaqi-center-lvwang-sytext"
						style="color: #ffffff; font-size: 1.5em">滤网剩余</div>
					<div id="sange-jinghuaqi-center-lvwang-text"
						style="color: #ffffff; font-size: 3em">100%</div>
				</div>
			</div>
			<div id="sange-jinghuaqi-lvwang-back-div"
				style="height: 8%; font-size: 1.2em; color: #ffffff; text-align: center; padding-top: 4%;">
				<span
					style="border-radius: 20px 0px 0px 20px; border: 1px solid #474456; padding: 5px 5px 5px 10px;"
					onclick='window.location.href="weidian.com/?userid=333215726&amp;wfr=c'>更换滤网</span>
				<a href="http://wechat.bjhike.com/app/DeviceList/introduce.aspx"
					style="color: #ffffff; text-decoration: none;"><span
					style="border-radius: 0px 20px 20px 0px; border: 1px solid #474456; padding: 5px 10px 5px 5px; margin-left: -5px">更换说明</span></a>
			</div>

			<div
				style="height: 32%; color: #25d9f9; margin-top: 2%; background-color: #322f40">
				<div style="height: 50%; position: relative;">
					<div id="sange-jinghuaqi-page-device-control-row1"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" style="text-align: center"
							onclick="OpenWifiForm()">
							<img style="width: 50%;" src="./images/连网1.png">
							<div style="margin-top: 5%">连接网络</div>
						</div>
						<div class="col-xs-4" style="text-align: center" onclick="Share()">
							<img style="width: 50%;" src="./image/分享2.png">
							<div style="margin-top: 5%">分享</div>
						</div>
						<div class="col-xs-4" style="text-align: center" onclick="More()">
							<img style="width: 50%;" src="./image/更多1.png">
							<div style="margin-top: 5%">更多</div>
						</div>
					</div>
				</div>

				<div style="height: 50%; position: relative;">
					<div id="sange-jinghuaqi-page-device-control-row2"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" style="text-align: center"
							onclick="sanGeJingHuqQiSwitchBtnClick()">
							<img style="width: 50%;" src="./image/关闭.png"
								id="div_sange_switch_Image">
							<div style="margin-top: 5%" id="div_sange_switch">已关</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="sanGeJingHuaQiSpeedBtnClick()">
							<img style="width: 50%;" src="./image/风速1.png">
							<div style="margin-top: 5%" id="div_sange_windspeed">风速1</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="sanGeJingHuaQiModeBtnClick()">
							<img style="width: 50%;" src="./image/模式1.png">
							<div style="margin-top: 5%" id="div_sange_mode">智能关</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
            //净化器页面适配
            setSanGeJingHuaQiPageAdaption();
            //设置水波动画和滤网剩余量时调用，参数为0-100
            setSanGeWaterAnimAndLvWangPercent(100);

            //三个爸爸净化器开关按钮点击
            function sanGeJingHuqQiSwitchBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }

                if ($("#div_sange_switch").text() == "已关") {
                    $("#H_Switch_" + $("#H_DeviceMac1").val()).val('1');
                    SetDeviceOnOFF(1, 0);
                }
                else {
                    $("#H_Switch_" + $("#H_DeviceMac1").val()).val('0');
                    SetDeviceOnOFF(0, 0);
                }
            }

            //三个爸爸净化器风速按钮点击
            function sanGeJingHuaQiSpeedBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                SetWindSpeed();
            }

            //三个爸爸净化器模式按钮点击
            function sanGeJingHuaQiModeBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                var Mode = $("#div_sange_mode").text().replace("智能", "");
                if (Mode == "开") {
                    //设置睡眠关
                    SetDeviceMode(0);
                }
                else {
                    //设置睡眠开
                    SetDeviceMode(1);
                }
            }

        </script>
		<!--- ab新风 --->
		<div class="xinfeng-ab-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">
			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="xinfeng-ab-page-device-name"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1.5em; font-weight: bolder; color: #f2ffff">安本新风机</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>

			<div id="xinfeng-ab-center-back-div"
				style="height: 42%; text-align: left; position: relative;">
				<div id="xinfeng-ab-pm25-logo-back"
					style="height: 20%; text-align: center; padding-top: 3%;">
					<img style="height: 50%;" src="./image/ab_xf_logo_pm25.png">
				</div>
				<div id="xinfeng-ab-outside-pm25-back"
					style="height: 10%; text-align: center;">
					<div
						style="background-color: #000000; border-radius: 50px; width: 34%; margin-left: 33%; padding-top: 1%; padding-bottom: 1%; color: #b0b0ba;">
						<img style="height: 20px;"
							src="./image/ab_xf_outside_logo_pm25.png"><span
							id="xinfeng-ab-page-outside-pm25" style="margin-left: 5%;">室外：300</span>
					</div>
				</div>
				<div
					style="width: 100%; height: 70%; text-align: center; color: #b0b0ba;">
					<div
						style="width: 100%; height: 70%; z-index: 101; text-align: center; position: absolute;">
						<img id="xinfeng-ab-pm25-judge-back-img"
							style="height: 90%; margin-top: 3%; z-index: 100;"
							src="./image/ab_xf_pm25_judge_level1.png">
					</div>
					<div style="width: 100%; height: 72%; z-index: 102;">
						<div style="height: 50%;"></div>
						<span id="xinfeng-ab-page-inside-pm25"
							style="top: 200px; color: #b0b0ba; font-size: 3em;">0</span>
					</div>
					<div style="width: 100%; z-index: 1003; position: absolute;">
						<span id="xinfeng-ab-page-inside-pm25-judge"
							style="top: 200px; color: #000; font-size: 2em;">优</span>
					</div>
					<div
						style="text-align: right; width: 100%; z-index: 1004; padding-top: 5%; padding-right: 5%;">
						<span id="xinfeng-ab-page-outside-area"
							style="top: 200px; color: #b0b0ba;">北京市海淀区</span>
					</div>
				</div>
			</div>

			<div id="xinfeng-ab-horzontal-split-line-back"
				style="width: 100%; height: 1%; position: relative;">
				<img style="width: 100%;"
					src="./image/ab_xf_v_horizontal_split_line.png">
			</div>
			<div id="xinfeng-ab-other-data-back"
				style="height: 16%; margin-top: 2%; text-align: left; position: relative;">

				<div class="col-xs-3"
					style="padding: 0px; height: 100%; text-align: center;">
					<img style="width: 90%;" src="./image/ab_xf_logo_co2.png">
					<p id="xinfeng-ab-page-inside-co2"
						style="color: #b0b0ba; font-size: 1.8em; margin-top: 5px; height: 35%;">1600</p>
					<p id="xinfeng-ab-page-inside-co2-judge" style="color: #b0b0ba;">空气浑浊</p>
					<img
						style="height: 100%; position: absolute; right: 0px; top: 0px;"
						src="./image/ab_xf_vertical_split_line.png">
				</div>
				<div class="col-xs-3"
					style="padding: 0px; height: 100%; text-align: center;">
					<img style="width: 90%;" src="./image/ab_xf_logo_tvoc.png">
					<p id="xinfeng-ab-page-inside-tvoc"
						style="color: #b0b0ba; font-size: 1.8em; margin-top: 5px; height: 35%;">0.00</p>
					<p id="xinfeng-ab-page-inside-tvoc-judge" style="color: #b0b0ba;">安全</p>
					<img
						style="height: 100%; position: absolute; right: 0px; top: 0px;"
						src="./image/ab_xf_vertical_split_line.png">
				</div>
				<div class="col-xs-3"
					style="padding: 0px; height: 100%; text-align: center;">
					<img style="width: 90%;" src="./iamge/ab_xf_logo_temp.png">
					<p id="xinfeng-ab-page-inside-temp"
						style="color: #b0b0ba; font-size: 1.8em; margin-top: 5px; height: 35%;">20.0</p>
					<p id="xinfeng-ab-page-inside-temp-judge" style="color: #b0b0ba;">温暖</p>
					<img
						style="height: 100%; position: absolute; right: 0px; top: 0px;"
						src="./iamge/ab_xf_vertical_split_line.png">
				</div>
				<div class="col-xs-3"
					style="padding: 0px; height: 100%; text-align: center;">
					<img style="width: 90%;" src="./iamge/ab_xf_logo_humi.png">
					<p id="xinfeng-ab-page-inside-humi"
						style="color: #b0b0ba; font-size: 1.8em; margin-top: 5px; height: 35%;">43.5</p>
					<p id="xinfeng-ab-page-inside-humi-judge" style="color: #b0b0ba;">理想</p>
					<img
						style="height: 100%; position: absolute; right: 0px; top: 0px;"
						src="./iamge/ab_xf_vertical_split_line.png">
				</div>


			</div>



			<div style="height: 33%; color: #25d9f9; background-color: #322f40">
				<div style="height: 50%; position: relative;">
					<div id="xinfeng-ab-page-device-control-row2"
						style="width: 100%; position: absolute; top: 50%;">

						<div class="col-xs-4" style="text-align: center"
							onclick="aBXinFengSwitchBtnClick()">
							<img id="xinfeng-ab-switch-img" style="width: 50%;"
								src="./image/关闭.png">
							<div id="xinfeng-ab-switch-text" style="margin-top: 5%">已关</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="aBXinFengShareBtnClick()">
							<img id="xinfeng-ab-share-img" style="width: 50%;"
								src="./image/分享2.png">
							<div id="xinfeng-ab-share-text" style="margin-top: 5%">分享</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="aBXinFengMoreBtnClick()">
							<img id="xinfeng-ab-more-img" style="width: 50%;"
								src="./image/更多1.png">
							<div id="xinfeng-ab-more-text" style="margin-top: 5%">更多</div>
						</div>
					</div>
				</div>

				<div style="height: 50%; position: relative;">
					<div id="xinfeng-ab-page-device-control-row1"
						style="width: 100%; position: absolute; top: 50%;">


						<div class="col-xs-4" style="text-align: center"
							onclick="aBXinFengModeBtnClick()">
							<img id="xinfeng-ab-mode-img" style="width: 50%;"
								src="./image/模式1.png">
							<div id="xinfeng-ab-mode-text" style="margin-top: 5%">自动</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
            setAbXinFengPageAdaption();

            function aBXinFengDingShiBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                ShowTime();
            }
            //安本新风分享按钮点击
            function aBXinFengShareBtnClick() {
                Share();
            }

            //安本新风更多按钮点击
            function aBXinFengMoreBtnClick() {
                More();
            }

            //安本新风开关按钮点击
            function aBXinFengSwitchBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                if ($("#xinfeng-ab-switch-text").text() == "已关") {
                    SetDeviceOnOFF(1, 0);
                } else {
                    SetDeviceOnOFF(0, 0);
                }
            }

            //安本新风风速按钮点击
            function aBXinFengSpeedBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                SetWindSpeed();
            }

            //安本新风模式按钮点击
            function aBXinFengModeBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                if ($("#xinfeng-ab-mode-text").text() == "自动") {
                    //设置关
                    SetDeviceMode(0);
                }
                else {
                    //设置开
                    SetDeviceMode(1);
                }
            }

            //设置在线离线状态
            function bBXinFengChangeStatus(state) {
                if (state == 1) {
                    $("#xinfeng-ab-pm25-logo-back").css("visibility", "visible");
                    $("#xinfeng-ab-outside-pm25-back").css("visibility", "visible");
                    $("#xinfeng-ab-page-inside-pm25").css("visibility", "visible");
                    $("#xinfeng-ab-page-inside-pm25-judge").css("visibility", "visible");
                    $("#xinfeng-ab-page-outside-area").css("visibility", "visible");
                    $("#xinfeng-ab-horzontal-split-line-back").css("visibility", "visible");
                    $("#xinfeng-ab-other-data-back").css("visibility", "visible");

                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level1.png");
                } else {
                    $("#xinfeng-ab-pm25-logo-back").css("visibility", "hidden");
                    $("#xinfeng-ab-outside-pm25-back").css("visibility", "hidden");
                    $("#xinfeng-ab-page-inside-pm25").css("visibility", "hidden");
                    $("#xinfeng-ab-page-inside-pm25-judge").css("visibility", "hidden");
                    $("#xinfeng-ab-page-outside-area").css("visibility", "hidden");
                    $("#xinfeng-ab-horzontal-split-line-back").css("visibility", "hidden");
                    $("#xinfeng-ab-other-data-back").css("visibility", "hidden");

                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_unconnect.png");
                    $("#xinfeng-ab-switch-img").attr("src", "./image/关闭.png");
                    $("#xinfeng-ab-switch-text").html("已关");
                }
            }
            //根据Pm2.5设置背景和文字
            function aBXinFengChangeBackAndJudeTextByPm25(pm25) {
                if (pm25 <= 35) {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level1.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("优");
                } else if (pm25 <= 75) {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level2.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("良");
                } else if (pm25 <= 115) {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level3.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("轻度");
                } else if (pm25 <= 150) {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level4.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("中度");
                } else if (pm25 <= 250) {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level5.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("重度");
                } else {
                    $("#xinfeng-ab-pm25-judge-back-img").attr("src", "./image/ab_xf_pm25_judge_level6.png");
                    $("#xinfeng-ab-page-inside-pm25-judge").html("严重");
                }
            }
            //设置数值，不想设置某个值传-1
            function aBXinFengSetData(outside_pm25, outside_area, inside_pm25, inside_co2, inside_tvoc, inside_temp, inside_humi) {
                if (outside_pm25 != -1) {
                    $("#xinfeng-ab-page-outside-pm25").html("室外：" + outside_pm25);
                }
                if (outside_area != -1) {
                    $("#xinfeng-ab-page-outside-area").html(outside_area);
                }
                if (inside_pm25 != -1) {
                    $("#xinfeng-ab-page-inside-pm25").html(inside_pm25);
                    aBXinFengChangeBackAndJudeTextByPm25(inside_pm25);
                }
                if (inside_co2 != -1) {
                    $("#xinfeng-ab-page-inside-co2").html(inside_co2);
                    $("#xinfeng-ab-page-inside-co2-judge").html(SetCO2Content(inside_co2));
                }

                if (inside_tvoc != -1) {
                    $("#xinfeng-ab-page-inside-tvoc").html(inside_tvoc);
                    $("#xinfeng-ab-page-inside-tvoc-judge").html(SetTVOCContent(inside_tvoc));
                }

                if (inside_temp != -1) {
                    $("#xinfeng-ab-page-inside-temp").html(inside_temp);
                    $("#xinfeng-ab-page-inside-temp-judge").html(SetTemperatureContent(inside_temp));
                }
                if (inside_humi != -1) {
                    $("#xinfeng-ab-page-inside-humi").html(inside_humi);
                    $("#xinfeng-ab-page-inside-humi-judge").html(SetHumidityContent(inside_humi));
                }
            }

            //设置开关01
            function aBXinFengSetSwitch(switchState) {
                if (switchState == 0) {
                    $("#xinfeng-ab-switch-img").attr("src", "./image/关闭.png");
                    $("#xinfeng-ab-switch-text").html("已关");
                } else if (switchState == 1) {
                    $("#xinfeng-ab-switch-img").attr("src", "./image/打开.png");
                    $("#xinfeng-ab-switch-text").html("已开");
                }
            }

            //设置风速123
            function aBXinFengSetSpeed(speed) {
                if (speed == 1) {
                    $("#xinfeng-ab-speed-text").html("风速1");
                } else if (speed == 2) {
                    $("#xinfeng-ab-speed-text").html("风速2");
                } else if (speed == 3) {
                    $("#xinfeng-ab-speed-text").html("风速3");
                }
            }

            //设置模式01
            function aBXinFengSetMode(mode) {
                if (mode == 0) {
                    $("#xinfeng-ab-mode-text").html("手动");
                } else if (mode == 1) {
                    $("#xinfeng-ab-mode-text").html("自动");
                }
            }
            //设置定时默认值
            function aBXinFengSetDialogDingshi(dialogDingshi) {
                if (dialogDingshi == true) {
                    $(".switch2").html('<span style="padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;">&nbsp;</span>');
                    $(".switch1").html("开");
                } else {
                    $(".switch1").html('<span style="padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;">&nbsp;</span>');
                    $(".switch2").html("关");
                }
            }

            //设置定时true false
            function aBXinFengSetDingShi(dingshi, openTime, closeTime) {
                if (dingshi == 1) {
                    $("#xinfeng-ab-dingshi-open-time").css("color", "#ffffff");
                    $("#xinfeng-ab-dingshi-split-line").css("color", "#ffffff");
                    $("#xinfeng-ab-dingshi-close-time").css("color", "#ffffff");
                } else {
                    $("#xinfeng-ab-dingshi-open-time").css("color", "#494554");
                    $("#xinfeng-ab-dingshi-split-line").css("color", "#494554");
                    $("#xinfeng-ab-dingshi-close-time").css("color", "#494554");
                }
                if (openTime != "" && closeTime != "") {
                    $("#xinfeng-ab-dingshi-open-time").html("开机时间：" + openTime);
                    $("#xinfeng-ab-dingshi-close-time").html("关机时间：" + closeTime);
                }
            }

        </script>

		<!-- b3r -->
		<div class="b3r-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">
			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="b3r-page-device-name"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-weight: bolder; color: rgb(242, 255, 255); font-size: 1.7rem; margin-top: -12px;">B3R</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>
			<div id="b3r-area-back-big-div"
				style="width: 100%; height: 4%; color: #a8a4B9; margin-left: -5%;">
				<div class="col-xs-6" id="b3r-area-back-div"
					style="height: 100%; position: relative; text-align: left; padding-left: 30px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; padding-right: 52px;">
					<img id="b3r-area-logo" src="./image/location.png"
						style="position: relative; height: 14.4px; margin-top: 2.5px;">
					<span id="b3r-area-text"
						style="margin-left: 5px; top: 50%; position: absolute; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; font-size: 1.3rem; margin-top: -9px;">暂无</span>
				</div>
			</div>
			<div id="b3r-circle-big-back-div"
				style="width: 100%; height: 30%; margin-top: 2%; text-align: left; position: relative;">
				<div style="width: 100%; height: 100%; margin-left: -24%;">

					<img id="b3r-circle-bg-circle"
						style="position: absolute; z-index: 2; width: 154.638px; height: 154.638px; margin-left: 82.6px; margin-top: 8.6px;"
						src="./image/b3-color-circle-bg.png">
					<div id="b3r-pm-back-div"
						style="position: absolute; z-index: 3; color: rgb(39, 215, 248); text-align: center; width: 107.8px; height: 108px; margin-left: 106px; margin-top: 31.6px;">
						<div id="b3r-pm25-title-text"
							style="height: 20%; font-size: 1.2rem;">室内PM2.5</div>
						<div id="b3r-pm25-content-text"
							style="font-size: 2.5rem; height: 35%">0</div>
						<div id="b3r-pm25-judge-text"
							style="font-size: 1.2rem; height: 20%">空气质量优</div>
						<div id="b3r-split-line"
							style="height: 1px; background-color: #000000; width: 90%; margin-left: 5%; margin-top: 2px;"></div>
						<div id="b3r-inside-pm25-text"
							style="font-size: 1rem; margin-top: 3%; border-radius: 20px; background-color: #252330; padding-top: 2px; padding-bottom: 2px;">室外PM2.5：0</div>
					</div>
					<canvas id="b3r-page-center-canvas" width="500" height="500"
						style="position: absolute; z-index: 1; height: 171.82px; width: 172px; margin-left: 74px;">
                    
                </canvas>
				</div>
				<div class=" b3r-circle-right">
					<p>
						<span>初效滤网剩余</span> <span class="b3r-circle-right-line"> <em
							id="lvwangInitial">0天</em> <a
							href="http://wechat.bjhike.com/app/DeviceList/MyDeviceList.aspx?PID=1&amp;CID=1&amp;WID=1&amp;OpenID=obwIJt5SACpBbCxy_w7q9HMphFCI&amp;rn=18901#"
							class="change01">更换滤网</a>
						</span>

					</p>
					<p>
						<span>静电集尘器</span> <span class="b3r-circle-right-line"> <em
							id="dustCollector">113天</em> <a
							href="http://wechat.bjhike.com/app/DeviceList/MyDeviceList.aspx?PID=1&amp;CID=1&amp;WID=1&amp;OpenID=obwIJt5SACpBbCxy_w7q9HMphFCI&amp;rn=18901#"
							class="change02">更换滤网</a>
						</span>

					</p>
					<p>
						<span>高效滤网剩余</span> <span class="b3r-circle-right-line"> <em
							id="lvwangEfficient">113天</em> <a
							href="http://wechat.bjhike.com/app/DeviceList/MyDeviceList.aspx?PID=1&amp;CID=1&amp;WID=1&amp;OpenID=obwIJt5SACpBbCxy_w7q9HMphFCI&amp;rn=18901#"
							class="change03">更换滤网</a>
						</span>

					</p>
				</div>
			</div>

			<ul class="b3r-parameter" style="height: 15%;">
				<li>
					<p class="b3r-parameter-top">温度</p>
					<p class="b3r-parameter-middle">
						<span class="number" id="b3r-temp-content">0</span> <span
							class="Unit">℃</span>
					</p>
					<p class="b3r-parameter-bottom" id="b3r-temp-judge">微寒</p>
				</li>
				<li>
					<p class="b3r-parameter-top">湿度</p>
					<p class="b3r-parameter-middle">
						<span class="number" id="b3r-humi-content">0</span> <span
							class="Unit">%</span>
					</p>
					<p class="b3r-parameter-bottom" id="b3r-humi-judge">极干</p>
				</li>
				<li>
					<p class="b3r-parameter-top">二氧化碳</p>
					<p class="b3r-parameter-middle">
						<span class="number" id="b3r-co2-content">0</span> <span
							class="Unit">ppm</span>
					</p>
					<p class="b3r-parameter-bottom" id="b3r-co2-judge">空气清新</p>
				</li>
				<li>
					<p class="b3r-parameter-top">TVOC</p>
					<p class="b3r-parameter-middle">
						<span class="number" id="b3r-tvoc-content">0</span> <span
							class="Unit">mg/m³</span>
					</p>
					<p class="b3r-parameter-bottom" id="b3r-tvoc-judge">安全</p>
				</li>
			</ul>
			<div style="background-color: #2d2a3c; height: 5%;">
				<div id="b3r-device-dingshi-text-big-back"
					style="height: 100%; position: relative; color: #fff;">
					<div id="b3r-device-dingshi-text-little-back"
						style="width: 100%; position: absolute; top: 38%; margin-top: 4px;">
						<div id="b3r-dingshi-open-time" class="col-xs-5"
							style="text-align: center; font-size: 1.3rem;">开机时间：00：00</div>
						<div id="b3r-dingshi-split-line" class="col-xs-2"
							style="text-align: center; font-size: 1.3rem;">|</div>
						<div id="b3r-dingshi-close-time" class="col-xs-5"
							style="text-align: center; font-size: 1.3rem;">关机时间：00：00</div>
					</div>
				</div>
			</div>

			<div style="height: 29%; color: #25d9f9">
				<div style="height: 50%; position: relative;">
					<div id="b3r-page-device-control-row1"
						style="width: 100%; position: absolute; top: 50%; margin-top: -28px;">
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rSwitchBtnClick()">
							<img id="b3r-switch-img" style="width: 70%;"
								src="./image/关闭.png">
							<div id="b3r-switch-text"
								style="margin-top: 5%; font-size: 1.3rem;">已关</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rSpeedBtnClick()">
							<img id="b3r-speed-img" style="width: 70%;"
								src="./image/风速1.png">
							<div id="b3r-speed-text"
								style="margin-top: 5%; font-size: 1.3rem;">风速1</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rModeBtnClick()">
							<img id="b3r-mode-img" style="width: 70%;"
								src="./image/模式1.png">
							<div id="b3r-mode-text"
								style="margin-top: 5%; font-size: 1.3rem;">手动</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rDingShiBtnClick()">
							<img style="width: 70%;" src="./image/定时.png">
							<div style="margin-top: 5%; font-size: 1.3rem;">定时</div>
						</div>

					</div>
				</div>

				<div style="height: 50%; position: relative;">
					<div id="b3r-page-device-control-row2"
						style="width: 100%; position: absolute; top: 50%; margin-top: -37px;">
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rConectInternetBtnClick()">
							<img style="width: 70%;" src="./image/连网1.png">
							<div style="margin-top: 5%; font-size: 1.3rem;">连接网络</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rShareBtnClick()">
							<img style="width: 70%;" src="./image/分享2.png">
							<div style="margin-top: 5%; font-size: 1.3rem;">分享</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rHistoryBtnClick()">
							<img style="width: 70%;" src="./image/历史数据1.png">
							<div style="margin-top: 5%; font-size: 1.3rem;">历史</div>
						</div>
						<div class="col-xs-3" style="text-align: center"
							onclick="b3rMoreBtnClick()">
							<img style="width: 70%;" src="./image/更多1.png">
							<div style="margin-top: 5%; font-size: 1.3rem;">更多</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<script> //b3r
            setB3RPageAdaption();
            //设置B3R下面四个圈显与否，需要传一个数组，数组形式为["temp","humi","co2","tvoc"]，比如要显示温度和二氧化碳，请传["temp","co2"]，如果要显示湿度、二氧化碳和TVOC，请传["humi","co2","tvoc"]。
            var b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
            setB3RExhibition(b3rTypeArray, 1, true);

            //切换b3r
            function TabEquipmentB3RForm() {
                $(".b3r-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".fb-dialog").modal();
                $(".b3r-page").slideDown(300);
                $(".fb-dialog").modal('hide');
                setB3RCanvas();
            }

            //b3r连接网络按钮点击
            function b3rConectInternetBtnClick() {
                OpenWifiForm();
            }

            //b3r定时点击
            function b3rDingShiBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                ShowTime();
            }

            //b3r分享按钮点击
            function b3rShareBtnClick() {
                Share();
            }

            //B3R历史按钮点击
            function b3rHistoryBtnClick() {
                var b3rHistoryDataTypeArray = ["pm", "temp", "humi", "co2", "tvoc"];
                setHistoryDialogType(b3rHistoryDataTypeArray);
                $(".history-dialog").modal();
            }

            //b3r开关按钮点击
            function b3rSwitchBtnClick() {
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }

                //20160810 B3R离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                if ($("#b3r-switch-text").text() == "已关") {
                    KeepState("Switch");
                    setB3RSwtich(1);
                    //开启设备
                    SetDeviceOnOFF(1, 0);
                } else {
                    KeepState("Switch");
                    setB3RSwtich(0);
                    //关闭设备
                    SetDeviceOnOFF(0, 0);
                }
            }

            //b3r风速按钮点击
            function b3rSpeedBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                //20160810 B3R离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                //20160805 B3R开关关闭不允许操作其他按钮
                if ($("#b3r-switch-text").text() == "已关") {
                    showToast("开关关闭不允许操作");
                    return;
                }
                //20160805 B3R自动模式下不允许操作风速
                if ($("#b3r-mode-text").text() == "自动") {
                    showToast("自动模式下不允许操作风速");
                    return;
                }
                var speedNo = document.getElementById("b3r-speed-text");
                var SNumber = speedNo.innerHTML.replace("风速", "");

                if (SNumber == 3) {
                    SNumber = 1
                }
                else {
                    SNumber++;
                }
                KeepState("Speed");
                setB3RSpeed(SNumber);
                SetWindSpeed(SNumber);
            }

            //b3r模式按钮点击
            function b3rModeBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                //20160810 B3R离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                //20160805 B3R开关关闭不允许操作其他按钮
                if ($("#b3r-switch-text").text() == "已关") {
                    showToast("开关关闭不允许操作");
                    return;
                }
                var Mode = $("#b3r-mode-text").text();

                if (Mode == "自动") {
                    KeepState("Mode");
                    setB3RMode(0);
                    //设置睡眠关
                    SetDeviceMode(0);
                }
                else {
                    KeepState("Mode");
                    setB3RMode(1);
                    //设置睡眠开
                    SetDeviceMode(1);
                }
            }

            //b3r更多按钮点击
            function b3rMoreBtnClick() {
                More();
            }
            //处理反馈状态等待5秒后
            var IsChangeSwitchState = true;
            var IsChangeSpeedState = true;
            var IsChangeModeState = true;
            var IsChangeSleepState = true;
            var KeepStateTmp = 0;
            var i = 0;
            /**
            StatePara 
            */
            function KeepState(StatePara) {
                if (KeepStateTmp != 0) {
                    clearInterval(KeepStateTmp);
                    KeepStateTmp = 0;
                }
                i = 0;
                if (KeepStateTmp == 0) {
                    IsChangeSwitchState = true;
                    IsChangeSpeedState = true;
                    IsChangeModeState = true;
                    IsChangeSleepState = true;

                    KeepStateTmp = setInterval(function () { SetChangeStateValue(StatePara); }, 1);
                }
            }

            function SetChangeStateValue(StatePara) {
                if (StatePara == "Switch") {
                    IsChangeSwitchState = false;
                } else if (StatePara == "Speed") {
                    IsChangeSpeedState = false;
                } else if (StatePara == "Mode") {
                    IsChangeModeState = false;
                } else if (StatePara == "Sleep") {
                    IsChangeSleepState = false;
                }
                i++;
                if (i > 4000) {
                    clearInterval(KeepStateTmp);
                    if (StatePara == "Switch") {
                        IsChangeSwitchState = true;
                    } else if (StatePara == "Speed") {
                        IsChangeSpeedState = true;
                    } else if (StatePara == "Mode") {
                        IsChangeModeState = true;
                    } else if (StatePara == "Sleep") {
                        IsChangeSleepState = true;
                    }
                }
            }
        </script>
		<script type="text/javascript">
            $(function () {
                $(".b3r-circle-right-line .change01").click(function () {
                    layer.open({
                        title: '更换初效滤网',
                        content: '<input type="password" id="FilterPasswd" name="" placeholder="输入更换滤网密码">',
                        btn: ['确定', '取消'],
                        yes: function (index) {
                            SetTotalTime($("#H_DeviceMac").val(), 0, $("#FilterPasswd").val());
                            layer.close(index);
                        }
                    });
                })
                $(".b3r-circle-right-line .change02").click(function () {
                    layer.open({
                        title: '更换静电集成器滤网',
                        content: '<input type="password" name="" id="FilterPasswd1" placeholder="输入更换滤网密码">',
                        btn: ['确定', '取消'],
                        yes: function (index) {
                            SetTotalTime($("#H_DeviceMac").val(), 1, $("#FilterPasswd1").val());
                            layer.close(index);
                        }
                    });
                })
                $(".b3r-circle-right-line .change03").click(function () {
                    layer.open({
                        title: '更换高效滤网',
                        content: '<input type="password" name="" id="FilterPasswd2" placeholder="输入更换滤网密码">',
                        btn: ['确定', '取消'],
                        yes: function (index) {
                            SetTotalTime($("#H_DeviceMac").val(), 2, $("#FilterPasswd2").val());
                            //location.reload();
                            layer.close(index);
                        }
                    });
                })
            });

            function SetTotalTime(DeviceMac, FilterType, FilterPasswd) {
                $.ajax({
                    url: '../GetRegInfo.ashx?rn=' + Math.random(),// 跳转到 action    
                    data: {
                        OpType: "SetTotalTime",
                        FilterType: FilterType,
                        FilterPasswd: FilterPasswd,
                        DeviceMac: DeviceMac
                    },
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        var ReResult = eval(data);
                        if (ReResult.result == "1") {
                            var tmp = parseInt(ReResult.Reason / 60 / 24);
                            if (FilterType == 0) {
                                setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", -1, "", "", -1, -1, -1, $("#H_ProjectName").val(), tmp, -1, -1);
                            }
                            else if (FilterType == 1) {
                                setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", -1, "", "", -1, -1, -1, $("#H_ProjectName").val(), -1, tmp, -1);
                            }
                            else if (FilterType == 2) {
                                setB3RAllData("", 1, -1, -1, -1, -1, -1, -1, "", -1, "", "", -1, -1, -1, $("#H_ProjectName").val(), -1, -1, tmp);
                            }
                        }
                        else {
                            alert(ReResult.Reason);
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        //alert(XMLHttpRequest.status);
                        //alert(XMLHttpRequest.readyState);
                        //alert(textStatus);
                    }
                });
            }

        </script>

		<!-- b1 -->
		<div class="b1-page"
			style="width: 100%; height: 100%; position: absolute; visibility: visible; display: none; background-color: rgb(55, 52, 70);">
			<div style="background-color: #3e3b4f; width: 100%; height: 8%">
				<div class="col-xs-9" style="height: 100%">
					<div id="b1-page-device-name"
						style="width: 100%; position: absolute; top: 50%; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left; font-size: 1.5em; font-weight: bolder; color: rgb(242, 255, 255); margin-top: -15px;">B1</div>
				</div>
				<div class="col-xs-3" style="text-align: right; height: 100%">
					<img style="height: 55%; margin-top: 15%;" alt=""
						src="./image/向上收起.png"
						onclick="javsscript:TabEquipmentListForm()">
				</div>
			</div>
			<div id="b1-circle-big-back-div"
				style="width: 100%; height: 52%; margin-top: 2%; text-align: left; position: relative;">
				<div style="width: 100%; height: 55%">

					<img id="b1-circle-bg-circle"
						style="position: absolute; z-index: 2; width: 154.638px; height: 154.638px; margin-left: 82.6px; margin-top: 8.6px;"
						src="./image/b3-color-circle-bg.png">
					<div id="b1-pm-back-div"
						style="position: absolute; z-index: 3; color: rgb(39, 215, 248); text-align: center; width: 107.8px; height: 108px; margin-left: 106px; margin-top: 31.6px;">
						<div id="b1-pm25-title-text" style="height: 20%;">室内PM2.5</div>
						<div id="b1-pm25-content-text" style="font-size: 2em; height: 35%">0</div>
						<div id="b1-pm25-judge-text" style="font-size: 1em; height: 20%">空气质量优</div>
						<div id="b1-split-line"
							style="height: 1px; background-color: #000000; width: 90%; margin-left: 5%; margin-top: 2px;"></div>
						<div id="b1-inside-pm25-text"
							style="font-size: 0.8em; margin-top: 3%; border-radius: 20px; background-color: #252330; padding-top: 2px; padding-bottom: 2px;">室外PM2.5：0</div>
					</div>
					<canvas id="b1-page-center-canvas" width="500" height="500"
						style="position: absolute; z-index: 1; height: 171.82px; width: 172px; margin-left: 74px;">
                    
                </canvas>
				</div>
				<div id="b1-other-big-back-div"
					style="height: 40%; width: 100%; position: relative; color: #28acec;">
					<div id="b1-other-temp-big-back-div"
						style="width: 76.8px; height: 100%; float: left; margin-left: 55.4667px; visibility: hidden;">

						<img class="b1-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 5.95px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="b1-other-data-title-class"
								style="margin-top: 17.57px;">温度</div>
							<div id="b1-temp-content" class="b1-other-data-data-class"
								style="font-size: 1.3em;">0</div>
							<div class="b1-other-data-unit-class" style="font-size: 1em">℃</div>
						</div>
						<div id="b1-temp-judge" class="b1-other-judge-text-class"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 81.9px;">微寒</div>

					</div>

					<div id="b1-other-humi-big-back-div"
						style="width: 76.8px; height: 100%; float: left; visibility: hidden; margin-left: 55.4667px;">

						<img class="b1-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 5.95px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="b1-other-data-title-class"
								style="margin-top: 17.57px;">湿度</div>
							<div id="b1-humi-content" class="b1-other-data-data-class"
								style="font-size: 1.3em;">0</div>
							<div class="b1-other-data-unit-class" style="font-size: 1em">%</div>
						</div>
						<div id="b1-humi-judge" class="b1-other-judge-text-class"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 81.9px;">极干</div>

					</div>

					<div id="b1-other-co2-big-back-div"
						style="width: 0px; height: 100%; float: left; visibility: hidden;">

						<img class="b1-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 5.95px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="b1-other-data-title-class"
								style="margin-top: 17.57px;">二氧化碳</div>
							<div id="b1-co2-content" class="b1-other-data-data-class"
								style="font-size: 1.3em;">0</div>
							<div class="b1-other-data-unit-class" style="font-size: 1em">ppm</div>
						</div>
						<div id="b1-co2-judge" class="b1-other-judge-text-class"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 81.9px;">空气清新</div>

					</div>

					<div id="b1-other-tvoc-big-back-div"
						style="width: 0px; height: 100%; float: left; visibility: hidden;">

						<img class="b1-other-bg-circle-class"
							style="position: absolute; z-index: 2; width: 22%; margin-left: 1%; margin-top: 5.95px;"
							src="./image/b3-blue-circle-bg.png">
						<div
							style="position: absolute; z-index: 3; text-align: center; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; width: 24%; height: 100%;">
							<div class="b1-other-data-title-class"
								style="margin-top: 17.57px;">TVOC</div>
							<div id="b1-tvoc-content" class="b1-other-data-data-class"
								style="font-size: 1.3em;">0.0</div>
							<div class="b1-other-data-unit-class" style="font-size: 1em">mg/m³</div>
						</div>
						<div id="b1-tvoc-judge" class="b1-other-judge-text-class"
							style="font-size: 1em; width: 100%; text-align: center; margin-top: 81.9px;">安全</div>

					</div>

				</div>
			</div>

			<div id="b1-area-back-big-div"
				style="width: 100%; height: 4%; margin-top: -8%; color: #a8a4B9;">
				<div class="col-xs-2"
					style="height: 100%; position: relative; visibility: hidden;">
					<!--<span id="b1-lvwang-text0" style="margin-left:5px;top:50%;position:absolute;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;"></span>-->
				</div>
				<div class="col-xs-10" id="b1-area-back-div"
					style="height: 100%; position: relative; text-align: right; padding-right: 98px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
					<img id="b1-area-logo" src="./image/location.png"
						style="position: relative; height: 16px;"> <span
						id="b1-area-text"
						style="margin-left: 5px; position: absolute; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">位置：暂无</span>
				</div>
			</div>
			<div id="b1-lvwang-big-back-big-div"
				style="background-color: #2d2a3c; width: 100%; height: 12%; color: #a8a4B9;">
				<div class="col-xs-4"
					style="height: 100%; padding: 0px 0px 0px 0px;">
					<div id="b1-lvwang-title-text"
						style="width: 100%; position: absolute; top: 50%; text-align: center; font-size: 1.8em; font-weight: bolder; color: rgb(33, 183, 154); line-height: 1; margin-top: -25px;">
						滤&nbsp;网<br> 剩&nbsp;余
					</div>
				</div>
				<div id="b1-lvwang-little-back-div" class="col-xs-4"
					style="height: 100%; padding: 0px;">
					<div id="b1-lvwang-text"
						style="width: 100%; position: absolute; top: 50%; text-align: center; font-size: 3.5em; font-weight: bolder; color: rgb(33, 183, 154); margin-top: -35px;">100%</div>
				</div>
				<div class="col-xs-4"
					style="height: 100%; padding: 0px 0px 0px 0px; text-align: center;">
					<div id="b1-lvwang-change-back-div" class="col-xs-8"
						style="text-align: center; height: 30%; border-radius: 3px; margin-top: 10.224px; color: rgb(255, 255, 255); padding: 0px; margin-left: 16%; background-color: rgb(33, 183, 154);"
						onclick="b1ChangeLvWangBtnClick()">
						<div id="b1-lvwang-change-text"
							style="width: 100%; position: absolute; top: 50%; text-align: center; padding: 0px; margin-top: -10px;">更换滤网</div>
					</div>
					<div class="col-xs-8"
						style="background-color: #21b79a; text-align: center; height: 30%; border-radius: 3px; margin-top: 6%; color: #fff; padding: 0px; margin-left: 16%;"
						onclick="b1ChangeLvWangExpainBtnClick()">
						<div id="b1-lvwang-change-explain-text"
							style="width: 100%; position: absolute; top: 50%; text-align: center; padding: 0px; margin-top: -10px;">更换说明</div>
					</div>
				</div>
			</div>
			<div style="height: 26%; color: #25d9f9">
				<div style="height: 50%; position: relative;">
					<div id="b1-page-device-control-row1"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" style="text-align: center"
							onclick="b1ConectInternetBtnClick()">
							<img style="width: 50%;" src="./image/连网1.png">
							<div style="margin-top: 5%">连接网络</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="b1ShareBtnClick()">
							<img style="width: 50%;" src="./image/分享2.png">
							<div style="margin-top: 5%">分享</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="b1MoreBtnClick()">
							<img style="width: 50%;" src="./image/更多1.png">
							<div style="margin-top: 5%">更多</div>
						</div>
					</div>
				</div>

				<div style="height: 50%; position: relative;">
					<div id="b1-page-device-control-row2"
						style="width: 100%; position: absolute; top: 50%; margin-top: -31px;">
						<div class="col-xs-4" style="text-align: center"
							onclick="b1SwitchBtnClick()">
							<img id="b1-switch-img" style="width: 50%;"
								src="./image/关闭.png">
							<div id="b1-switch-text" style="margin-top: 5%">已关</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="b1SpeedBtnClick()">
							<img id="b1-speed-img" style="width: 50%;"
								src="./image/风速1.png">
							<div id="b1-speed-text" style="margin-top: 5%">风速1</div>
						</div>
						<div class="col-xs-4" style="text-align: center"
							onclick="b1ModeBtnClick()">
							<img id="b1-mode-img" style="width: 50%;"
								src="./image/模式1.png">
							<div id="b1-mode-text" style="margin-top: 5%">手动</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script> //b1
            setB1PageAdaption();
            //设置b1下面四个圈显与否，需要传一个数组，数组形式为["temp","humi","co2","tvoc"]，比如要显示温度和二氧化碳，请传["temp","co2"]，如果要显示湿度、二氧化碳和TVOC，请传["humi","co2","tvoc"]。
            var b1TypeArray_ = ["temp", "humi"];
            setB1Exhibition(b1TypeArray_, 1, true);

            //切换b1
            function TabEquipmentB1Form() {
                $(".b1-page").css("visibility", "visible");
                $(".device-list-page").hide();
                $("body").css("overflow-y", "hidden");
                $(".fb-dialog").modal();
                $(".b1-page").slideDown(300);
                $(".fb-dialog").modal('hide');
                setB1Canvas();
            }

            //b1更换滤网按钮点击
            function b1ChangeLvWangBtnClick() {
                lvTxt();
            }

            //b1更换滤网说明按钮点击
            function b1ChangeLvWangExpainBtnClick() {
                ChangeTxt();
            }

            //b1连接网络按钮点击
            function b1ConectInternetBtnClick() {
                OpenWifiForm();
            }

            //b1分享按钮点击
            function b1ShareBtnClick() {
                Share();
            }

            //var rs = 0;
            //b1更多按钮点击
            function b1MoreBtnClick() {
                More();
            }

            //b1开关按钮点击
            function b1SwitchBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                //20160810 B1离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                if ($("#b1-switch-text").text() == "已关") {
                    SetDeviceOnOFF(1, 0);
                } else {
                    SetDeviceOnOFF(0, 0);
                }
            }

            //b1风速按钮点击
            function b1SpeedBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                //20160810 B1离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                SetWindSpeed();
            }

            //b1模式按钮点击
            function b1ModeBtnClick() {
                ///中幅客人不会操作设备
                if ($("#H_IsMaster").val() == 0 && $("#H_CustomManage_" + $("#H_DeviceMac").val()).val() == 0) {
                    if ($("#H_CompanyID").val() == 4) {
                        showToast("您不是主人，不能控制设备");
                    } else {
                        showToast("主人限制权限，不能控制设备");
                    }
                    return;
                }
                //20160810 B1离线状态不允许操作
                if ($("#H_Online_" + $("#H_DeviceMac").val()).val() == 0) {
                    showToast("离线状态不允许操作");
                    return;
                }
                if ($("#b1-mode-text").text() == "自动") {
                    //设置关
                    SetDeviceMode(0);
                }
                else {
                    //设置开
                    SetDeviceMode(1);
                }
            }

            //setB1AllData(deviceName, onlineState, pm25, temp, humi, pm25_outside, lvwang, area, openOrClose, speed, mode);

        </script>

		<script>
            var ShowDemo = '1';
            //-------------------设备列表---------------------
            window.onload = function () {
                $(".sange-jinghuaqi-page").css("visibility", "hidden");
                $(".detector-page").css("visibility", "hidden");
                $(".detector-b3-page").css("visibility", "hidden");
                $(".relation-b3-page").css("visibility", "hidden");
                $(".xinfeng-ab-page").css("visibility", "hidden");
                $(".b3r-page").css("visibility", "hidden");

                TabEquipmentListForm();

 $('#AspHidden').append( "<input ID='H_OpenID_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_WID_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_DeviceID_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_DeviceMac_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_DeviceMac1_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_ProjectName_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_CompanyID_C893464AE12A' type='hidden'>");
 $('#AspHidden').append( "<input ID='H_Type_C893464AE12A' type='hidden'>");
 $('#AspHidden').append("<input ID='H_IsMaster_C893464AE12A' type='hidden'>");
 $('#AspHidden').append("<input ID='H_CustomManage_C893464AE12A' type='hidden'>");
             $('#H_IsMaster_C893464AE12A').val('0');
             $('#H_CustomManage_C893464AE12A').val('1');
EquipmentList({logo: './image/图标B3.png' , name: '空气净化器', mac: 'C893464AE12A', pm25: '34',shebei: 'C893464AE12A'    , online: true    , onlinelogo: './image/在线.png'    , dropdownlogo: './image/下拉.png', dropdownclick: function (text) { 
             Ws_DeviceExist('B3_L3', 'C893464AE12A');
             $('#H_Type').val('8');
             $('#H_DeviceMac').val('C893464AE12A');
             $('#H_DeviceMac1').val('C893464AE12A');
             $('#H_ProjectName').val('B3_L3');
             $('#detector-b3-page-device-name').text('空气净化器');
             $('#H_CompanyID').val('1');
             $('#H_IsMaster').val('0');
             $('#detector-b3-area-text').text('位置：河南郑州管城回族区');
             if ($('#H_ONOFFState_C893464AE12A').val() == '1') {
                     $('#detector-b3-dingshi-open-time').css('color', '#FFFEFF');
                     $('#detector-b3-dingshi-close-time').css('color', '#FFFEFF');
                     $('.switch2').html("<span style='padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;'>&nbsp;</span>");
                     $('.switch1').html('开');
             }
             else if ($('#H_ONOFFState_C893464AE12A').val() == '0') {
                     $('#detector-b3-dingshi-open-time').css('color', '#4a475b');
                     $('#detector-b3-dingshi-close-time').css('color', '#4a475b');
                     $('.switch1').html("<span style='padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;'>&nbsp;</span>");
                     $('.switch2').html('关');
             }
            else {
                     $('#detector-b3-dingshi-open-time').css('color', '#FFFEFF');
                     $('#detector-b3-dingshi-close-time').css('color', '#FFFEFF');
                     $('.switch2').html("<span style='padding:2px 12px 2px 12px;background-color:rgb(85,82,103);border-radius:5px;'>&nbsp;</span>");
                     $('.switch1').html('开');
            }
             if ($('#H_ONTime_C893464AE12A').val() != '' || $('#H_OFFTime_C893464AE12A').val() != '') {
                     $('#detector-b3-dingshi-open-time').text('开机时间：'+$('#H_ONTime_C893464AE12A').val());
                     $('#detector-b3-dingshi-close-time').text('关机时间：'+$('#H_OFFTime_C893464AE12A').val());
             }
            else {
                     $('#detector-b3-dingshi-open-time').text('开机时间：');
                     $('#detector-b3-dingshi-close-time').text('关机时间：');
                     $('#H_ONTime_C893464AE12A').val('');
                     $('#H_OFFTime_C893464AE12A').val('');
            }
                 if ($('#H_OutPm25_C893464AE12A').val() != '' || $('#H_InPm25_C893464AE12A').val() != '') {
                         $('#detector-b3-pm25-title-text').css("visibility", "visible").text('室内PM2.5');                         $('#detector-b3-inside-pm25-text').text('室外PM2.5：'+$('#H_OutPm25_C893464AE12A').val());
                         $('#detector-b3-pm25-content-text').text($('#H_InPm25_C893464AE12A').val());
                         $('#detector-b3-pm25-judge-text').text(SetPM25Content($('#H_InPm25_C893464AE12A').val()));
                 }
                 else{
                         $('#detector-b3-pm25-title-text').css("visibility", "visible").text('室内PM2.5');                         $('#detector-b3-pm25-content-text').text('34');
                         $('#detector-b3-inside-pm25-text').text('室外PM2.5：89');
                         $('#detector-b3-pm25-judge-text').text(SetPM25Content(34));
                 }
                 if ($('#H_Temperature_C893464AE12A').val() != '') {
                         $('#div_Temperature').text($('#H_Temperature_C893464AE12A').val());
                         $('#div_Temperature_Content').text(SetTemperatureContent($('#H_Temperature_C893464AE12A').val()));
                 }
                 else{
                         $('#div_Temperature').text('27.7');
                         $('#div_Temperature_Content').text(SetTemperatureContent(27.7));
                 }
                 if ($('#H_Humidity_C893464AE12A').val() != '') {
                         $('#div_Humidity').text($('#H_Humidity_C893464AE12A').val());
                         $('#div_Humidity_Content').text(SetHumidityContent($('#H_Humidity_C893464AE12A').val()));
                 }
                 else{
                         $('#div_Humidity').text('51.1');
                         $('#div_Humidity_Content').text(SetHumidityContent(51.1));
                 }
                 if ($('#H_CO2_C893464AE12A').val() != '') {
                         $('#div_co2').text($('#H_CO2_C893464AE12A').val());
                         $('#div_co2_Content').text(SetCO2Content($('#H_CO2_C893464AE12A').val()));
                 }
                 else{
                         $('#div_co2').text('419');
                         $('#div_co2_Content').text(SetCO2Content(419));
                 }
                 if ($('#H_TVOC_C893464AE12A').val() != '') {
                         $('#div_tvoc_txt').text('TVOC');
                         $('#div_tvoc').text($('#H_TVOC_C893464AE12A').val());
                         $('#div_tvoc_unit').text('mg/m³');
                         $('#div_tvoc_Content').text(SetTVOCContent($('#H_TVOC_C893464AE12A').val()));
                 }
                 else{
                         $('#div_tvoc_txt').text('TVOC');
                         $('#div_tvoc').text('0.64');
                         $('#div_tvoc_unit').text('mg/m³');
                         $('#div_tvoc_Content').text(SetTVOCContent(0.64));
                 }
             if ($('#H_Online_C893464AE12A').val() == '0') {
                         $('#detector-b3-pm25-content-text').text('未连接');
                         $('#detector-b3-pm25-title-text').text('');
                         $('#detector-b3-pm25-judge-text').text('');
                         $('#detector-b3-inside-pm25-text').text('');
                         $('#detector-b3-switch-text').text('已关');
                         $('#detector-b3-switch-img').attr('src', './image/关闭.png');
             }
            else if($('#H_Online_C893464AE12A').val() == '1'){
                     if($('#H_Switch_C893464AE12A').val()=='1'){
                         $('#detector-b3-switch-text').text('已开');
                         $('#detector-b3-switch-img').attr('src', './image/打开.png');
                     }
                     else if($('#H_Switch_C893464AE12A').val()=='0'){
                         $('#detector-b3-switch-text').text('已关');
                         $('#detector-b3-switch-img').attr('src', './image/关闭.png');
                     }
                     else{
                         $('#detector-b3-switch-text').text('已开');
                         $('#detector-b3-switch-img').attr('src', './image/打开.png');
                     }
              }
             else{
                         $('#detector-b3-switch-text').text('已开');
                         $('#detector-b3-switch-img').attr('src', './image/打开.png');
                 }
             TabEquipmentB3Form();
             if ($('#H_Online_C893464AE12A').val() == '0') {
              setB3Exhibition(['temp', 'humi', 'co2', 'tvoc'],0);
             }
            else if($('#H_Online_C893464AE12A').val() == '1'){
              setB3Exhibition(['temp', 'humi', 'co2', 'tvoc'],1);
             }
             else{
              setB3Exhibition(['temp', 'humi', 'co2', 'tvoc'],1);
             }
             $('#div_LinkWIFI').click(function () {
                     OpenB3Form();
             });
    }
});
             $('#H_Type_C893464AE12A').val('8');
             $('#H_DeviceMac_C893464AE12A').val('C893464AE12A');
             $('#H_ProjectName_C893464AE12A').val('B3_L3');
             $('#detector-b3-page-device-name').text('空气净化器');
             $('#H_CompanyID_C893464AE12A').val('1');






            }

            var readyFunc = function onBridgeReady() {
                wx.hideOptionMenu();
            }

            if (typeof WeixinJSBridge === "undefined") {
                document.addEventListener('WeixinJSBridgeReady', readyFunc, false);
            }
            else {
                readyFunc();
            }

        </script>
		<script src="./js/jweixin-1.0.0.js"></script>
	</form>


</body>
</html>