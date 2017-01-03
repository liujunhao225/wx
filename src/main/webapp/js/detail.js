function switch_open_or_close(){
		console.log("switch");
		var tempval = $("#switch_flag").val();
		if(tempval==1){
			$("#detector-b3-switch-img").attr("src","/wx/image/关闭.png");
			$("#detector-b3-switch-text").html("关闭");
			$("#switch_flag").val(2);
		}else{
			$("#switch_flag").val(1);
			$("#detector-b3-switch-img").attr("src","/wx/image/打开.png");
			$("#detector-b3-switch-text").html("打开");
		}
}

function change_wind(){
	console.log("wind");
	var tempval = $("#wind_flag").val();
	if(tempval==1){
		$("#detector-b3-wind-img").attr("src","/wx/image/2b2.png");
		$("#detector-b3-wind-text").html("低速");
		$("#wind_flag").val(2);
	}else if(tempval == 2){
		$("#wind_flag").val(3);
		$("#detector-b3-wind-img").attr("src","/wx/image/2b1.png");
		$("#detector-b3-wind-text").html("高速");
	}else {
		$("#wind_flag").val(1);
		$("#detector-b3-wind-img").attr("src","/wx/image/2b.png");
		$("#detector-b3-wind-text").html("自动");
	}
}

$(function() {

	$.ajax({
		type : "POST", // 提交方式
		url : "/wx/device/device_list.do",// 路径
		data : {
			"openId" : "oXb3KvhNkqr26hINjPLFEKa0SGHI"
		},// 数据，这里使用的是Json格式进行传输
		success : function(result) {// 返回数据根据结果进行相应的处理
			　
			}
	});
});