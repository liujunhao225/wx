
//B3R页面适配
function setB3RPageAdaption() {
    document.getElementById("b3r-page-device-name").style.marginTop = -(document.getElementById("b3r-page-device-name").offsetHeight / 2) + "px";

    document.getElementById("b3r-page-device-control-row1").style.marginTop = -(document.getElementById("b3r-page-device-control-row1").offsetHeight / 2) + "px";
    document.getElementById("b3r-page-device-control-row2").style.marginTop = -(document.getElementById("b3r-page-device-control-row2").offsetHeight / 2) + "px";

    $(".b3r-other-bg-circle-class").css("margin-top", ($("#b3r-other-big-back-div").height() * 0.05) + "px"); //其他数据背景圆居上
    $(".b3r-other-data-title-class").css("margin-top", ($("#b3r-other-big-back-div").height() * 0.03 + $(".b3r-other-bg-circle-class").width() * 0.2) + "px"); //其他数据title居上
    $(".b3r-other-judge-text-class").css("margin-top", ($("#b3r-other-big-back-div").height() * 0.1 + $(".b3r-other-bg-circle-class").width()) + "px");

	//document.getElementById("b3r-lvwang-text").style.marginTop = -(document.getElementById("b3r-area-text").offsetHeight / 2) + "px";
    document.getElementById("b3r-area-text").style.marginTop = -(document.getElementById("b3r-area-text").offsetHeight / 2) + "px";
    document.getElementById("b3r-area-logo").style.height = (document.getElementById("b3r-area-text").offsetHeight * 0.8) + "px";
    document.getElementById("b3r-area-logo").style.marginTop = ((document.getElementById("b3r-area-back-div").offsetHeight - document.getElementById("b3r-area-text").offsetHeight) / 2) + "px";
    //document.getElementById("b3r-area-back-div").style.marginLeft = (document.getElementById("b3r-area-back-div").offsetWidth - (document.getElementById("b3r-area-logo").offsetWidth + document.getElementById("b3r-area-text").offsetWidth + 5)) + "px";
    document.getElementById("b3r-area-back-div").style.paddingRight = (document.getElementById("b3r-area-logo").offsetWidth + document.getElementById("b3r-area-text").offsetWidth + screenWidth / 20) + "px";
    
    if ((document.getElementById("b3r-device-dingshi-text-little-back").offsetHeight <= 0 || document.getElementById("b3r-device-dingshi-text-big-back").offsetHeight) <= 0) {
        document.getElementById("b3r-device-dingshi-text-little-back").style.marginTop = -(screenHeight * 0.05 * 0.4);
    } else {
        document.getElementById("b3r-device-dingshi-text-little-back").style.marginTop = ((document.getElementById("b3r-device-dingshi-text-little-back").offsetHeight - document.getElementById("b3r-device-dingshi-text-big-back").offsetHeight) / 2) + "px";
    }

    document.getElementById("b3r-page-center-canvas").style.height = (document.getElementById("b3r-circle-big-back-div").offsetHeight * 0.55) + "px";
    document.getElementById("b3r-page-center-canvas").style.width = document.getElementById("b3r-page-center-canvas").offsetHeight + "px";
    document.getElementById("b3r-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth) / 2 + "px";
    document.getElementById("b3r-circle-bg-circle").style.width = (document.getElementById("b3r-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    document.getElementById("b3r-circle-bg-circle").style.height = (document.getElementById("b3r-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    if (screenHeight <= 480) {
        document.getElementById("b3r-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("b3r-circle-bg-circle").style.marginTop = ((document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("b3r-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("b3r-circle-bg-circle").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + "px";
    }
    document.getElementById("b3r-pm-back-div").style.width = document.getElementById("b3r-circle-bg-circle").offsetWidth * 0.7 + "px";
    document.getElementById("b3r-pm-back-div").style.height = document.getElementById("b3r-pm-back-div").offsetWidth + "px";
    document.getElementById("b3r-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b3r-pm-back-div").offsetWidth) / 2 + "px";
    document.getElementById("b3r-pm-back-div").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b3r-circle-bg-circle").offsetHeight - document.getElementById("b3r-pm-back-div").offsetHeight) / 2) + "px";

}

function setB3RCanvasAdaption() {
    if (screenHeight <= 480) {
        document.getElementById("b3r-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("b3r-circle-bg-circle").style.marginTop = ((document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("b3r-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("b3r-circle-bg-circle").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + "px";
    }
}

var b3r_animationRun = false;
//B3R画圆圈
function setB3RCanvas() {
	b3r_animationRun = true;
    var c = document.getElementById("b3r-page-center-canvas");
    var ctx = c.getContext("2d");
    var drawIndex = 0;
    var circleEdgeXArray = [100, 150, 200, 150];
    var circleEdgeYArray = [200, 150, 200, 250];

    var d = 0.0;
    circleRadius = document.getElementById("b3r-page-center-canvas").offsetHeight / 2;
    circleCenterX = document.getElementById("b3r-page-center-canvas").offsetHeight / 2;
    circleCenterY = document.getElementById("b3r-page-center-canvas").offsetHeight / 2;
    for (var i = 0; i < 360; i++) {
        d = d - (2 * Math.PI / 360);
        //alert(d);

        var x = 250 + Math.cos(d) * 225;
        var y = 250 + Math.sin(d) * 225;
        //alert(x);
        circleEdgeXArray[i] = x;
        circleEdgeYArray[i] = y;
    }

    var ss = setInterval(function () {
		/*if(b3r_animationRun == false) {
			clearInterval(ss);
		}*/
		
        ctx.clearRect(0, 0, 500, 500);
        //ctx.translate(x,0);
        drawIndex++;
        if (drawIndex >= 360) {
            drawIndex = 0;
        }

        ctx.strokeStyle = "#ffffff";
        ctx.fillStyle = "#ffffff";

        /*ctx.beginPath();
        ctx.arc(250, 250, 250, 0, Math.PI * 2, true);
        ctx.closePath();
        ctx.stroke();*/

        ctx.beginPath();
        ctx.arc(circleEdgeXArray[drawIndex], circleEdgeYArray[drawIndex], 5, 0, Math.PI * 2, true);
        ctx.closePath();
        ctx.fill();
        if (drawIndex > 120) {
            ctx.beginPath();
            ctx.arc(circleEdgeXArray[drawIndex], circleEdgeYArray[drawIndex], 10, 0, Math.PI * 2, true);
            ctx.closePath();
            ctx.stroke();
        }
        if (drawIndex > 240) {
            ctx.beginPath();
            ctx.arc(circleEdgeXArray[drawIndex], circleEdgeYArray[drawIndex], 15, 0, Math.PI * 2, true);
            ctx.closePath();
            ctx.stroke();
        }

        //ctx.fillRect(x,10,100,50);
        /*if (x > 300) {
            clearInterval(ss);
            x = 0;
        }
        x += 1;*/
    }, 10);
}

function setB3RExhibition(dataTypeArray, connectState, firstLoad) {
    if (connectState == 0) {
        $("#b3r-pm25-content-text").text("未连接");
        $("#b3r-pm25-title-text").css("visibility", "hidden");
        $("#b3r-pm25-judge-text").css("visibility", "hidden");
        $("#b3r-split-line").css("visibility", "hidden");
        $("#b3r-inside-pm25-text").css("visibility", "hidden");
    } else {
        //$("#b3r-pm25-content-text").text(connectText);
		if(firstLoad == false) {
			$("#b3r-pm25-title-text").css("visibility", "visible");
			$("#b3r-pm25-judge-text").css("visibility", "visible");
			$("#b3r-split-line").css("visibility", "visible");
			$("#b3r-inside-pm25-text").css("visibility", "visible");
		}
    }
    if (dataTypeArray.length == 0) {
        $("#b3r-other-big-back-div").css("visibility", "hidden");
        $("#b3r-other-temp-big-back-div").css("visibility", "hidden");
        $("#b3r-other-humi-big-back-div").css("visibility", "hidden");
        $("#b3r-other-co2-big-back-div").css("visibility", "hidden");
        $("#b3r-other-tvoc-big-back-div").css("visibility", "hidden");

        var backStandard = 0;
        if ((screenHeight * 0.55) < screenWidth) {
            backStandard = screenHeight * 0.55;
        } else {
            backStandard = screenWidth;
        }
        document.getElementById("b3r-page-center-canvas").style.height = (backStandard * 0.95) + "px";
        document.getElementById("b3r-page-center-canvas").style.width = document.getElementById("b3r-page-center-canvas").offsetHeight + "px";
        document.getElementById("b3r-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth) / 2 + "px";

        document.getElementById("b3r-circle-bg-circle").style.width = (backStandard * 0.95 * 0.9) + "px";
        document.getElementById("b3r-circle-bg-circle").style.height = (backStandard * 0.95 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("b3r-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("b3r-circle-bg-circle").style.marginTop = ((document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("b3r-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("b3r-circle-bg-circle").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("b3r-pm-back-div").style.width = document.getElementById("b3r-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("b3r-pm-back-div").style.height = document.getElementById("b3r-pm-back-div").offsetWidth + "px";
        document.getElementById("b3r-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b3r-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("b3r-pm-back-div").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b3r-circle-bg-circle").offsetHeight - document.getElementById("b3r-pm-back-div").offsetHeight) / 2) + "px";

    } else {
		if(firstLoad == false) {
			$("#b3r-other-big-back-div").css("visibility", "visible");
		}
        $("#b3r-other-temp-big-back-div").css("visibility", "hidden");
        $("#b3r-other-humi-big-back-div").css("visibility", "hidden");
        $("#b3r-other-co2-big-back-div").css("visibility", "hidden");
        $("#b3r-other-tvoc-big-back-div").css("visibility", "hidden");
        $("#b3r-other-temp-big-back-div").css("margin-left", "0px");

        var backStandard = screenHeight * 0.55;
        document.getElementById("b3r-page-center-canvas").style.height = (backStandard * 0.55) + "px";
        document.getElementById("b3r-page-center-canvas").style.width = document.getElementById("b3r-page-center-canvas").offsetHeight + "px";
        document.getElementById("b3r-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth) / 2 + "px";
        document.getElementById("b3r-circle-bg-circle").style.width = (backStandard * 0.55 * 0.9) + "px";
        document.getElementById("b3r-circle-bg-circle").style.height = (backStandard * 0.55 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("b3r-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("b3r-circle-bg-circle").style.marginTop = ((document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("b3r-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b3r-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("b3r-circle-bg-circle").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("b3r-pm-back-div").style.width = document.getElementById("b3r-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("b3r-pm-back-div").style.height = document.getElementById("b3r-pm-back-div").offsetWidth + "px";
        document.getElementById("b3r-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b3r-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("b3r-pm-back-div").style.marginTop = (document.getElementById("b3r-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b3r-circle-bg-circle").offsetHeight - document.getElementById("b3r-pm-back-div").offsetHeight) / 2) + "px";

        var dataGoneArray = [0, 0, 0, 0];
        for (var i = 0; i < 4; i++) {
            if (dataTypeArray[i] == "temp") {
                dataGoneArray[0] = 1;
            } else if (dataTypeArray[i] == "humi") {
                dataGoneArray[1] = 1;
            } else if (dataTypeArray[i] == "co2") {
                dataGoneArray[2] = 1;
            } else if (dataTypeArray[i] == "tvoc") {
                dataGoneArray[3] = 1;
            }
        }
        if (dataGoneArray[0] == 0) {
            $("#b3r-other-temp-big-back-div").css("width", "0px");
        } else {
            $("#b3r-other-temp-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[1] == 0) {
            $("#b3r-other-humi-big-back-div").css("width", "0px");
        } else {
            $("#b3r-other-humi-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[2] == 0) {
            $("#b3r-other-co2-big-back-div").css("width", "0px");
        } else {
            $("#b3r-other-co2-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[3] == 0) {
            $("#b3r-other-tvoc-big-back-div").css("width", "0px");
        } else {
            $("#b3r-other-tvoc-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }

        var positionMarginLeftArray = new Array();
        if (dataTypeArray.length == 1) {
            positionMarginLeftArray[0] = (screenWidth * 0.5 - screenWidth * 0.24 / 2) + "px";
        } else if (dataTypeArray.length == 2) {
            for (var i = 0; i < 2; i++) {
                positionMarginLeftArray[i] = (screenWidth - screenWidth * 0.24 * 2) / 3 + "px";
            }
        } else if (dataTypeArray.length == 3) {
            for (var i = 0; i < 3; i++) {
                positionMarginLeftArray[i] = (screenWidth - screenWidth * 0.24 * 3) / 4 + "px";
            }
        } else if (dataTypeArray.length == 4) {
            for (var i = 0; i < 4; i++) {
                if (i == 0) {
                    positionMarginLeftArray[i] = (screenWidth * 0.02) + "px";
                } else {
                    positionMarginLeftArray[i] = "0px";
                }
            }
        }

        var positionCount = 0;
        for (var i = 0; i < 4; i++) {
            if (dataTypeArray[i] == "temp") {
				if(firstLoad == false) {
					$("#b3r-other-temp-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b3r-other-temp-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "humi") {
				if(firstLoad == false) {
					$("#b3r-other-humi-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b3r-other-humi-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "co2") {
				if(firstLoad == false) {
					$("#b3r-other-co2-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b3r-other-co2-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "tvoc") {
				if(firstLoad == false) {
					$("#b3r-other-tvoc-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b3r-other-tvoc-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            }
        }
    }
}

function setB3RConnect(connectState) {
    if (connectState == 1) {

    } else {

    }
}

function judgeLevelByPM25(pm25) {
	if(pm25 <= 35) {
		return "空气质量优";
	} else if(pm25 <= 75) {
		return "空气质量良";
	} else if(pm25 <= 115) {
		return "轻度污染";
	} else if(pm25 <= 150) {
		return "中度污染";
	} else if(pm25 <= 250) {
		return "重度污染";
	} else {
		return "严重污染";
	}
}

function judgeLevelByCO2(co2) {
	var result = "空气清新";
	if (co2 <= 1000) {
		result = "空气清新";
	} else if (co2 <= 2000) {
		result = "空气浑浊";
	} else if (co2 <= 5000) {
		result = "空气缺氧";
	} else {
		result = "严重缺氧";
	}
	return result;
}

function judgeLevelByTVOC(tvoc) {
	var result = "理想";
	if (tvoc <= 0.6) {
		result = "安全";
	} else if (tvoc <= 1.8) {
		result = "超标";
	} else if (tvoc <= 9.99) {
		result = "严重超标";
	} else {
		result = "严重超标";
	}
	return result;
}

function judgeLevelByTemp(temp) {
	var result = "酷寒";
	if (temp < -20) {
		result = "酷寒";
	} else if (temp < -10) {
		result = "严寒";
	} else if (temp < 0) {
		result = "中寒";
	} else if (temp < 10) {
		result = "微寒";
	} else if (temp < 20) {
		result = "凉爽";
	} else if (temp < 26) {
		result = "温暖";
	} else if (temp < 33) {
		result = "微热";
	} else if (temp < 37) {
		result = "炎热";
	} else {
		result = "酷热";
	}
	return result;
}

function judgeLevelByHumi(humi) {
	var result = "极干";
	if (humi < 20) {
		result = "极干";
	} else if (humi < 30) {
		result = "干燥";
	} else if (humi < 40) {
		result = "略干";
	} else if (humi < 56) {
		result = "理想";
	} else if (humi < 67) {
		result = "湿润";
	} else if (humi < 80) {
		result = "潮湿";
	} else {
		result = "极潮";
	}
	return result;
}

var b3_last_pm25 = 0;

/**
设置B3R所有数据
	1.设备名称 ：String类型，不想更改传""
	2.在线状态 ：int类型，1或0，不想更改传-1
	3.pm2.5 ：int类型，不想更改传-1
	4.temp ：float类型，不想更改传-1
	5.humi ：float类型，不想更改传-1
	6.co2 ： int类型，不想更改传-1
	7.TVOC ：float类型，不想更改传-1
	8.室外pm2.5 ： int类型，不想更改传-1
	9.滤网剩余量 ： int类型，按天计算，不想更改传-1
	10.城市 ： String类型，不想更改传""
	11.定时开关：int类型，1或0，不想更改传-1
	12.定时开机时间 ： String类型，例如"12:23"，不想更改传""
	13.定时关机时间 ： String类型，例如"12:23"，不想更改传""
	14.开关 ：int类型，1或0，不想更改传-1
	15.风速 ：int类型，1或2或3，不想更改传-1
	16.模式 ：1或0, 1自动，0手动，不想更改传-1
	17.B3R类型 ： "b3r_l3" 或 "b3r_l2"
*****************8.2更改*************************
    去除原来滤网（原第9）
    新增
    1.lvwangInitial：初始滤网剩余
    2.dustCollector：静电集尘器
    3.lvwangEfficient：高效滤网剩余


*/
function setB3RAllData(deviceName, onlineState, pm25, temp, humi, co2, tvoc, pm25_outside, area, dingshiOpenOrClose, dingshiOpenTime, dingshiCloseTime, openOrClose, speed, mode, b3r_type,lvwangInitial , dustCollector,lvwangEfficient) {
	//alert("名字设置");
	if(deviceName != "") {
		var deviceNameContent = document.getElementById("b3r-page-device-name");
		deviceNameContent.innerHTML = deviceName;
	}
	
	//if(onlineState == 1) {
		if(pm25 != -1) {
            b3_last_pm25 = pm25;
			var pm25Content = document.getElementById("b3r-pm25-content-text");
			pm25Content.innerHTML = pm25;
			var pm25Judge = document.getElementById("b3r-pm25-judge-text");
			pm25Judge.innerHTML = judgeLevelByPM25(pm25);
		}
	//}
	
	//alert("在线离线设置");
	/**if(onlineState == 1) {
		var b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
		if(b3r_type == "b3r_l3") {
			b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
		} else if (b3r_type == "b3r_l2") {
			b3rTypeArray = ["temp", "humi"];
		}
		setB3RExhibition(b3rTypeArray, 1, false);
	} else {
		var b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
		if(b3r_type == "b3r_l3") {
			b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
		} else if (b3r_type == "b3r_l2") {
			b3rTypeArray = ["temp", "humi"];
		}
		setB3RExhibition(b3rTypeArray, 0, false);
	}*/

    var b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
    if(b3r_type == "b3r_l3") {
        b3rTypeArray = ["temp", "humi", "co2", "tvoc"];
    } else if (b3r_type == "b3r_l2") {
        b3rTypeArray = ["temp", "humi"];
    }
    setB3RExhibition(b3rTypeArray, onlineState, false);
	
	var pm25Content1 = document.getElementById("b3r-pm25-content-text");
	if(pm25Content1.innerHTML != "未连接"){
		pm25Content1.innerHTML = b3_last_pm25;
	}
	
	if(temp != -1) {
		var tempContent = document.getElementById("b3r-temp-content");
		tempContent.innerHTML = temp;
		var tempJudge = document.getElementById("b3r-temp-judge");
		tempJudge.innerHTML = judgeLevelByTemp(temp);
	}
	if(humi != -1) {
		var humiContent = document.getElementById("b3r-humi-content");
		humiContent.innerHTML = humi;
		var humiJudge = document.getElementById("b3r-humi-judge");
		humiJudge.innerHTML = judgeLevelByHumi(humi);
	}
	if(co2 != -1) {
		var co2Content = document.getElementById("b3r-co2-content");
		co2Content.innerHTML = co2;
		var co2Judge = document.getElementById("b3r-co2-judge");
		co2Judge.innerHTML = judgeLevelByCO2(co2);
	}
	if(tvoc != -1) {
		var tvocContent = document.getElementById("b3r-tvoc-content");
		tvocContent.innerHTML = tvoc;
		var tvocJudge = document.getElementById("b3r-tvoc-judge");
		tvocJudge.innerHTML = judgeLevelByTVOC(tvoc);
	}
	if(pm25_outside != -1) {
		var pm25OutSideContent = document.getElementById("b3r-inside-pm25-text");
		pm25OutSideContent.innerHTML = "室外PM2.5：" + pm25_outside;
	}

	if(lvwangInitial != -1) {
		var lvwangContent = document.getElementById("lvwangInitial");
		lvwangContent.innerHTML = lvwangInitial + "天";
	}
    if(dustCollector != -1) {
        var lvwangContent = document.getElementById("dustCollector");
        lvwangContent.innerHTML = dustCollector + "天";
    }
    if(lvwangEfficient != -1) {
        var lvwangContent = document.getElementById("lvwangEfficient");
        lvwangContent.innerHTML = lvwangEfficient + "天";
    }
	if(area != "") {
		var areaContent = document.getElementById("b3r-area-text");
		areaContent.innerHTML = "位置：" + area;
		document.getElementById("b3r-area-back-div").style.paddingRight = (document.getElementById("b3r-area-logo").offsetWidth + document.getElementById("b3r-area-text").offsetWidth + screenWidth / 20) + "px";
	}
	if(dingshiOpenOrClose != -1) {
		var dingshiBackDiv = document.getElementById("b3r-device-dingshi-text-big-back");
		if(dingshiOpenOrClose == 1) {
			dingshiBackDiv.style.color = "#fff";
		} else {
			dingshiBackDiv.style.color = "#666";
		}
		
		
	}
	if(dingshiOpenTime != "") {
		var dingshiOpenTimeContent = document.getElementById("b3r-dingshi-open-time");
		dingshiOpenTimeContent.innerHTML = "开机时间：" + dingshiOpenTime;
	}
	if(dingshiCloseTime != "") {
		var dingshiCloseTimeContent = document.getElementById("b3r-dingshi-close-time");
		dingshiCloseTimeContent.innerHTML = "关机时间：" + dingshiCloseTime;
	}
	if(openOrClose != -1) {
		var openOrCloseImg = document.getElementById("b3r-switch-img");
		var openOrCloseText = document.getElementById("b3r-switch-text");
		if(openOrClose == 1) {
			openOrCloseImg.src = "./Image/打开.png";
			openOrCloseText.innerHTML = "已开";
		} else {
			openOrCloseImg.src = "./Image/关闭.png";
			openOrCloseText.innerHTML = "已关";
		}
	}
	if(speed != -1) {
		var speedText = document.getElementById("b3r-speed-text");
		speedText.innerHTML = "风速" + speed;
	}
	if(mode != -1) {
		var modeText = document.getElementById("b3r-mode-text");
		if(mode == 1) {
			modeText.innerHTML = "自动";
		} else {
			modeText.innerHTML = "手动";
		}
	}
}

/**
* 设置B3R开关
*/
function setB3RSwtich(openOrClose) {
	if(openOrClose != -1) {
		var openOrCloseImg = document.getElementById("b3r-switch-img");
		var openOrCloseText = document.getElementById("b3r-switch-text");
		if(openOrClose == 1) {
			openOrCloseImg.src = "./Image/打开.png";
			openOrCloseText.innerHTML = "已开";
		} else {
			openOrCloseImg.src = "./Image/关闭.png";
			openOrCloseText.innerHTML = "已关";
		}
	}
}

/**
* 设置B3R风速
*/
function setB3RSpeed(speed) {
	if(speed != -1) {
		var speedText = document.getElementById("b3r-speed-text");
		speedText.innerHTML = "风速" + speed;
	}
}

/**
* 设置B3R模式
*/
function setB3RMode(mode) {
	if(mode != -1) {
		var modeText = document.getElementById("b3r-mode-text");
		if(mode == 1) {
			modeText.innerHTML = "自动";
		} else {
			modeText.innerHTML = "手动";
		}
	}
}

