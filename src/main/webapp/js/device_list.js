$(function() {

	var url = "/wx/device_list.do";
	$
			.ajax(
					url,
					{
						"openId" : "openId"
					},
					function(data) {
						console.log(data);
						var html = "<div class=\"row\">";
						html += "<div class=\"col-xs-2\" style=\"padding: 0px;\">";

						html += "<img src=\"./image/jhq_w.png\"style=\"width: 100%; margin-top: 18%; margin-left: 50%;\">";

						html += "</div>";
						html += "<div class=\"col-xs-5\" style=\"margin-left: 5%; padding: 5% 0% 5% 10%;\">";
						html += "<div class=\"row\"style=\"color: white; font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;\">";
						html += 名字;
						html += "</div>";
						html += "<div class=\"row\"style=\"color: rgb(168, 165, 185); font-family: 'Microsoft YaHei'; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;\">&nbsp;</div>";
						html += "<div class=\"row\" style=\"font-family: 'Microsoft YaHei'; color: white;\"><img id=\"img_C893464AE12A\" src=\"./image/在线.png\" style=\"width: 15px; height: 13px;\"><span id=\"img_C893464AE12A\" style=\"color: white;\">";
						html += "&nbsp;&nbsp;" + 状态 + "</span>";
						html += "</div>";
						html += "</div>";
						html += "<div class=\"col-xs-3\" style=\"margin-left: -10%;\">";
						html += "<div class=\"row\" style=\"text-align: center; margin-top: 50%;\">";
						html += "<img src=\"./image/pm25.png\" style=\"width: 70%; padding-left: 10px;\">";
						html += "</div>";
						html += "<div id=\"ListPM25_C893464AE12A\" class=\"row\" style=\"text-align: center; border-radius: 100px; margin-top: 5%; margin-left: 20%; margin-right: 20%; font-family: 'Microsoft YaHei'; color: white;\">";
						html += 34 + "</div>"
						html += "</div>";
						html += "<div class=\"col-xs-1\" style=\"padding: 0px; margin-left: 2%;\">"
						html += "<img src=\"./image/下拉.png\" style=\"width: 100%; margin-top: 80%\" onclick=\"showPage();\">"
						html += "</div>";
						html += "</div>";

					});

});