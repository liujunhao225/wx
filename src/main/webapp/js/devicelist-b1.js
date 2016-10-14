
//b1页面适配
function setB1PageAdaption() {
    document.getElementById("b1-page-device-name").style.marginTop = -(document.getElementById("b1-page-device-name").offsetHeight / 2) + "px";

    document.getElementById("b1-page-device-control-row1").style.marginTop = -(document.getElementById("b1-page-device-control-row1").offsetHeight / 2) + "px";
    document.getElementById("b1-page-device-control-row2").style.marginTop = -(document.getElementById("b1-page-device-control-row2").offsetHeight / 2) + "px";

    $(".b1-other-bg-circle-class").css("margin-top", ($("#b1-other-big-back-div").height() * 0.05) + "px"); //其他数据背景圆居上
    $(".b1-other-data-title-class").css("margin-top", ($("#b1-other-big-back-div").height() * 0.03 + $(".b1-other-bg-circle-class").width() * 0.2) + "px"); //其他数据title居上
    $(".b1-other-judge-text-class").css("margin-top", ($("#b1-other-big-back-div").height() * 0.1 + $(".b1-other-bg-circle-class").width()) + "px");


    //document.getElementById("b1-area-text").style.marginTop = -(document.getElementById("b1-area-text").offsetHeight / 2) + "px";
    document.getElementById("b1-area-logo").style.height = (document.getElementById("b1-area-text").offsetHeight * 0.8) + "px";
    //document.getElementById("b1-area-logo").style.marginTop = ((document.getElementById("b1-area-back-div").offsetHeight - document.getElementById("b1-area-text").offsetHeight) / 2) + "px";
    document.getElementById("b1-area-back-div").style.paddingRight = (document.getElementById("b1-area-logo").offsetWidth + document.getElementById("b1-area-text").offsetWidth + screenWidth / 20) + "px";

    document.getElementById("b1-page-center-canvas").style.height = (document.getElementById("b1-circle-big-back-div").offsetHeight * 0.55) + "px";
    document.getElementById("b1-page-center-canvas").style.width = document.getElementById("b1-page-center-canvas").offsetHeight + "px";
    document.getElementById("b1-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth) / 2 + "px";
    document.getElementById("b1-circle-bg-circle").style.width = (document.getElementById("b1-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    document.getElementById("b1-circle-bg-circle").style.height = (document.getElementById("b1-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    if (screenHeight <= 480) {
        document.getElementById("b1-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("b1-circle-bg-circle").style.marginTop = ((document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("b1-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("b1-circle-bg-circle").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + "px";
    }
    document.getElementById("b1-pm-back-div").style.width = document.getElementById("b1-circle-bg-circle").offsetWidth * 0.7 + "px";
    document.getElementById("b1-pm-back-div").style.height = document.getElementById("b1-pm-back-div").offsetWidth + "px";
    document.getElementById("b1-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b1-pm-back-div").offsetWidth) / 2 + "px";
    document.getElementById("b1-pm-back-div").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b1-circle-bg-circle").offsetHeight - document.getElementById("b1-pm-back-div").offsetHeight) / 2) + "px";
	
	//b3联动滤网
    document.getElementById("b1-lvwang-title-text").style.marginTop = -(document.getElementById("b1-lvwang-title-text").offsetHeight / 2) + "px";
    document.getElementById("b1-lvwang-text").style.marginTop = -(document.getElementById("b1-lvwang-text").offsetHeight / 2) + "px";
    document.getElementById("b1-lvwang-change-text").style.marginTop = -(document.getElementById("b1-lvwang-change-text").offsetHeight / 2) + "px";
    document.getElementById("b1-lvwang-change-explain-text").style.marginTop = -(document.getElementById("b1-lvwang-change-explain-text").offsetHeight / 2) + "px";
    document.getElementById("b1-lvwang-change-back-div").style.marginTop = screenHeight * 0.12 * 0.15 + "px";
}

function setB1CanvasAdaption() {
    if (screenHeight <= 480) {
        document.getElementById("b1-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("b1-circle-bg-circle").style.marginTop = ((document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("b1-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("b1-circle-bg-circle").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + "px";
    }
}


//var b1_animationRun = false;
//b1画圆圈
function setB1Canvas() {
	//b1_animationRun = true;
    var c = document.getElementById("b1-page-center-canvas");
    var ctx = c.getContext("2d");
    var drawIndex = 0;
    var circleEdgeXArray = [100, 150, 200, 150];
    var circleEdgeYArray = [200, 150, 200, 250];

    var d = 0.0;
    circleRadius = document.getElementById("b1-page-center-canvas").offsetHeight / 2;
    circleCenterX = document.getElementById("b1-page-center-canvas").offsetHeight / 2;
    circleCenterY = document.getElementById("b1-page-center-canvas").offsetHeight / 2;
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
		//if(b1_animationRun == false) {
			//clearInterval(ss);
		//}
		
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

function setB1Exhibition(dataTypeArray, connectState, firstLoad) {
    if (connectState == 0) {
        dataTypeArray = [];
        $("#b1-pm25-content-text").text("未连接");
        $("#b1-pm25-title-text").css("visibility", "hidden");
        $("#b1-pm25-judge-text").css("visibility", "hidden");
        $("#b1-split-line").css("visibility", "hidden");
        $("#b1-inside-pm25-text").css("visibility", "hidden");
    } else {
        //$("#b1-pm25-content-text").text(connectText);
		if(firstLoad == false) {
			$("#b1-pm25-title-text").css("visibility", "visible");
			$("#b1-pm25-judge-text").css("visibility", "visible");
			$("#b1-split-line").css("visibility", "visible");
			$("#b1-inside-pm25-text").css("visibility", "visible");
		}
    }
    if (dataTypeArray.length == 0) {
        $("#b1-other-big-back-div").css("visibility", "hidden");
        $("#b1-other-temp-big-back-div").css("visibility", "hidden");
        $("#b1-other-humi-big-back-div").css("visibility", "hidden");
        $("#b1-other-co2-big-back-div").css("visibility", "hidden");
        $("#b1-other-tvoc-big-back-div").css("visibility", "hidden");

        var backStandard = 0;
        if ((screenHeight * 0.55) < screenWidth) {
            backStandard = screenHeight * 0.55;
        } else {
            backStandard = screenWidth;
        }
        document.getElementById("b1-page-center-canvas").style.height = (backStandard * 0.95) + "px";
        document.getElementById("b1-page-center-canvas").style.width = document.getElementById("b1-page-center-canvas").offsetHeight + "px";
        document.getElementById("b1-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth) / 2 + "px";

        document.getElementById("b1-circle-bg-circle").style.width = (backStandard * 0.95 * 0.9) + "px";
        document.getElementById("b1-circle-bg-circle").style.height = (backStandard * 0.95 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("b1-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("b1-circle-bg-circle").style.marginTop = ((document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("b1-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("b1-circle-bg-circle").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("b1-pm-back-div").style.width = document.getElementById("b1-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("b1-pm-back-div").style.height = document.getElementById("b1-pm-back-div").offsetWidth + "px";
        document.getElementById("b1-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b1-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("b1-pm-back-div").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b1-circle-bg-circle").offsetHeight - document.getElementById("b1-pm-back-div").offsetHeight) / 2) + "px";

    } else {
		if(firstLoad == false) {
			$("#b1-other-big-back-div").css("visibility", "visible");
		}
        $("#b1-other-temp-big-back-div").css("visibility", "hidden");
        $("#b1-other-humi-big-back-div").css("visibility", "hidden");
        $("#b1-other-co2-big-back-div").css("visibility", "hidden");
        $("#b1-other-tvoc-big-back-div").css("visibility", "hidden");
        $("#b1-other-temp-big-back-div").css("margin-left", "0px");

        var backStandard = screenHeight * 0.55;
        document.getElementById("b1-page-center-canvas").style.height = (backStandard * 0.55) + "px";
        document.getElementById("b1-page-center-canvas").style.width = document.getElementById("b1-page-center-canvas").offsetHeight + "px";
        document.getElementById("b1-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth) / 2 + "px";
        document.getElementById("b1-circle-bg-circle").style.width = (backStandard * 0.55 * 0.9) + "px";
        document.getElementById("b1-circle-bg-circle").style.height = (backStandard * 0.55 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("b1-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("b1-circle-bg-circle").style.marginTop = ((document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("b1-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("b1-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("b1-circle-bg-circle").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("b1-pm-back-div").style.width = document.getElementById("b1-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("b1-pm-back-div").style.height = document.getElementById("b1-pm-back-div").offsetWidth + "px";
        document.getElementById("b1-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("b1-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("b1-pm-back-div").style.marginTop = (document.getElementById("b1-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("b1-circle-bg-circle").offsetHeight - document.getElementById("b1-pm-back-div").offsetHeight) / 2) + "px";


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
            $("#b1-other-temp-big-back-div").css("width", "0px");
        } else {
            $("#b1-other-temp-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[1] == 0) {
            $("#b1-other-humi-big-back-div").css("width", "0px");
        } else {
            $("#b1-other-humi-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[2] == 0) {
            $("#b1-other-co2-big-back-div").css("width", "0px");
        } else {
            $("#b1-other-co2-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[3] == 0) {
            $("#b1-other-tvoc-big-back-div").css("width", "0px");
        } else {
            $("#b1-other-tvoc-big-back-div").css("width", (screenWidth * 0.24) + "px");
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
					$("#b1-other-temp-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b1-other-temp-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "humi") {
				if(firstLoad == false) {
					$("#b1-other-humi-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b1-other-humi-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "co2") {
				if(firstLoad == false) {
					$("#b1-other-co2-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b1-other-co2-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "tvoc") {
				if(firstLoad == false) {
					$("#b1-other-tvoc-big-back-div").css("visibility", "visible");
				}
                if (positionCount < positionMarginLeftArray.length) {
                    $("#b1-other-tvoc-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            }
        }
    }
}

function setb1Connect(connectState) {
    if (connectState == 1) {

    } else {

    }
}

function judgeLevelByPM25_b1(pm25) {
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

function judgeLevelByCO2_b1(co2) {
	var result = "空气清新";
	if (co2 <= 1000) {
		result = "空气清新";
	} else if (co2 <= 2000) {
		result = "空气混浊";
	} else if (co2 <= 5000) {
		result = "空气缺氧";
	} else {
		result = "严重缺氧";
	}
	return result;
}

function judgeLevelByTVOC_b1(tvoc) {
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

function judgeLevelByTemp_b1(temp) {
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

function judgeLevelByHumi_b1(humi) {
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

var b1_last_pm25 = 0;

/**
设置B1所有数据
	1.设备名称 ：String类型，不想更改传""
	2.在线状态 ：int类型，1或0，不想更改传-1
	3.pm2.5 ：int类型，不想更改传-1
	4.temp ：float类型，不想更改传-1
	5.humi ：float类型，不想更改传-1
	6.室外pm2.5 ： int类型，不想更改传-1
	7.滤网剩余量 ： int类型，百分比，不想更改传-1
	8.城市 ： String类型，不想更改传""
	9.开关 ：int类型，1或0，不想更改传-1
	10.风速 ：int类型，1或2或3，不想更改传-1
	11.模式 ：1或0, 1自动，0手动，不想更改传-1
*/
function setB1AllData(deviceName, onlineState, pm25, temp, humi, pm25_outside, lvwang, area, openOrClose, speed, mode) {
	//alert("名字设置");
	if(deviceName != "") {
		var deviceNameContent = document.getElementById("b1-page-device-name");
		deviceNameContent.innerHTML = deviceName;
	}
	//alert("PM2.5设置");
	//if(onlineState == 1) {
		if(pm25 != -1) {
			b1_last_pm25 = pm25;
			var pm25Content = document.getElementById("b1-pm25-content-text");
			pm25Content.innerHTML = pm25;
			var pm25Judge = document.getElementById("b1-pm25-judge-text");
			pm25Judge.innerHTML = judgeLevelByPM25_b1(pm25);
		}
	//}
	//alert("在线离线设置");
	if(onlineState == 1) {
		var b1TypeArray = ["temp", "humi"];
		setB1Exhibition(b1TypeArray, 1, false);
	} else {
		var b1TypeArray = ["temp", "humi"];
		setB1Exhibition(b1TypeArray, 0, false);
	}
	
	var pm25Content1 = document.getElementById("b1-pm25-content-text");
	if(pm25Content1.innerHTML != "未连接"){
		pm25Content1.innerHTML = b1_last_pm25;
	}
	
	if(temp != -1) {
		var tempContent = document.getElementById("b1-temp-content");
		tempContent.innerHTML = temp;
		var tempJudge = document.getElementById("b1-temp-judge");
		tempJudge.innerHTML = judgeLevelByTemp_b1(temp);
	}
	if(humi != -1) {
		var humiContent = document.getElementById("b1-humi-content");
		humiContent.innerHTML = humi;
		var humiJudge = document.getElementById("b1-humi-judge");
		humiJudge.innerHTML = judgeLevelByHumi_b1(humi);
	}
	if(pm25_outside != -1) {
		var pm25OutSideContent = document.getElementById("b1-inside-pm25-text");
		pm25OutSideContent.innerHTML = "室外PM2.5：" + pm25_outside;
	}
	if(lvwang != -1) {
		var lvwangContent = document.getElementById("b1-lvwang-text");
		lvwangContent.innerHTML = lvwang + "%";
	}
	if(area != "") {
		var areaContent = document.getElementById("b1-area-text");
		areaContent.innerHTML = "位置：" + area;
		document.getElementById("b1-area-back-div").style.paddingRight = (document.getElementById("b1-area-logo").offsetWidth + document.getElementById("b1-area-text").offsetWidth + screenWidth / 20) + "px";
	}
	if(openOrClose != -1) {
		var openOrCloseImg = document.getElementById("b1-switch-img");
		var openOrCloseText = document.getElementById("b1-switch-text");
		if(openOrClose == 1) {
			openOrCloseImg.src = "./Image/打开.png";
			openOrCloseText.innerHTML = "已开";
		} else {
			openOrCloseImg.src = "./Image/关闭.png";
			openOrCloseText.innerHTML = "已关";
		}
	}
	if(speed != -1) {
		var speedText = document.getElementById("b1-speed-text");
		speedText.innerHTML = "风速" + speed;
	}
	if(mode != -1) {
		var modeText = document.getElementById("b1-mode-text");
		if(mode == 0) {
			modeText.innerHTML = "手动";
		} else {
			modeText.innerHTML = "自动";
		}
	}
}

