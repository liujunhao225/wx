$(function() {

	$.ajax({
		type : "POST", // 提交方式
		url : "/wx/device/device_list.do",// 路径
		data : {
			"keyCode":$("#key_code").val()
		},// 数据，这里使用的是Json格式进行传输
		success : function(result) {// 返回数据根据结果进行相应的处理
			　var json = $.parseJSON(result);
			console.log(json.list);
			for(var i=0;i<json.list.length;i++){
				
				var tempjob = json.list[i];
				console.log(tempjob.deviceId);
				var temphtml = "<div class=\"row\">";
				 temphtml += "<div class=\"col-xs-2\" style=\"padding: 0px;\">";
				
				 temphtml += "<img src=\"./image/jhq_w.png\"style=\"width: 100%;margin-top: 18%; margin-left: 50%;\">";
				
				 temphtml += "</div>";
				 temphtml += "<div class=\"col-xs-5\" style=\"margin-left: 5%; padding: 5%0% 5% 10%;\">";
				 temphtml += "<div class=\"row\"style=\"color: white; font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap;text-overflow: ellipsis;\">";
				 temphtml += "空气净化器";
				 temphtml += "</div>";
				 temphtml += "<div class=\"row\"style=\"color: rgb(168, 165, 185);font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;\">&nbsp;</div>";
				 temphtml += "<div class=\"row\" style=\"font-family: 'Microsoft YaHei';color: white;\"><img id=\"img_C893464AE12A\" src=\"./image/在线.png\" style=\"width: 15px; height: 13px;\"><span id=\"img_C893464AE12A\" style=\"color: white;\">";
				 temphtml += "&nbsp;&nbsp;" + "开" + "</span>";
				 temphtml += "</div>";
				 temphtml += "</div>";
				 temphtml += "<div class=\"col-xs-3\" style=\"margin-left: -10%;\">";
				 temphtml += "<div class=\"row\" style=\"text-align: center; margin-top:50%;\">";
				 temphtml += "<img src=\"./image/pm25.png\" style=\"width: 70%; padding-left: 10px;\">";
				 temphtml += "</div>";
				 temphtml += "<div id=\"ListPM25_C893464AE12A\" class=\"row\" style=\"text-align: center; border-radius: 100px; margin-top: 5%;margin-left: 20%; margin-right: 20%; font-family: 'Microsoft YaHei';color: white;\">";
				 temphtml += 34 + "</div>"
				 temphtml += "</div>";
				 temphtml += "<div class=\"col-xs-1\" style=\"padding: 0px; margin-left: 2%;\">"
				 temphtml += "<img src=\"./image/下拉.png\" style=\"width: 100%; margin-top:80%\" onclick=\"showPage();\">"
				 temphtml += "</div>";
				 temphtml += "</div>";
				 $("#father_row").append(temphtml);
			}
		}
	});
	// var url = "/wx/device/device_list.do";
	// $.ajax(url, {
	// "openId" : "oXb3KvhNkqr26hINjPLFEKa0SGHI"
	// }, function(data) {
	// alert(data);
	// console.log(data);
	 
	// });

});