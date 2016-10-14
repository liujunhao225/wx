
//B3页面适配
function setB3PageAdaption() {
    document.getElementById("detector-b3-page-device-name").style.marginTop = -(document.getElementById("detector-b3-page-device-name").offsetHeight / 2) + "px";

    document.getElementById("detector-b3-page-device-control-row1").style.marginTop = -(document.getElementById("detector-b3-page-device-control-row1").offsetHeight / 2) + "px";
    document.getElementById("detector-b3-page-device-control-row2").style.marginTop = -(document.getElementById("detector-b3-page-device-control-row2").offsetHeight / 2) + "px";

    $(".detector-b3-other-bg-circle-class").css("margin-top", ($("#detector-b3-other-big-back-div").height() * 0.05) + "px"); //其他数据背景圆居上
    $(".detector-b3-other-data-title-class").css("margin-top", ($("#detector-b3-other-big-back-div").height() * 0.03 + $(".detector-b3-other-bg-circle-class").width() * 0.2) + "px"); //其他数据title居上
    $(".detector-b3-other-judge-text-class").css("margin-top", ($("#detector-b3-other-big-back-div").height() * 0.1 + $(".detector-b3-other-bg-circle-class").width()) + "px");

    var otherDataTitleFontSize = "1em";
    var otherDataDataFontSize = "1.3em";
    var otherDataUnitFontSize = "1em";
    if (screenHeight <= 480) {
        otherDataTitleFontSize = "0.8em";
        otherDataDataFontSize = "1em";
        otherDataUnitFontSize = "0.8em";
    } else if (screenHeight <= 720) {
        otherDataTitleFontSize = "1em";
        otherDataDataFontSize = "1.3em";
        otherDataUnitFontSize = "1em";
    } else if (screenHeight <= 1080) {
        otherDataTitleFontSize = "1.1em";
        otherDataDataFontSize = "1.5em";
        otherDataUnitFontSize = "1.1em";
    } else {
        otherDataTitleFontSize = "1.2em";
        otherDataDataFontSize = "1.7em";
        otherDataUnitFontSize = "1.2em";
    }
    $(".detector-b3-other-data-title-class").css("font-size", otherDataTitleFontSize);
    $(".detetor-b3-other-data-data-class").css("font-size", otherDataDataFontSize);
    $(".detector-b3-other-data-unit-class").css("font-size", otherDataUnitFontSize);
    document.getElementById("detector-b3-area-text").style.marginTop = -(document.getElementById("detector-b3-area-text").offsetHeight / 2) + "px";
    document.getElementById("detector-b3-area-logo").style.height = (document.getElementById("detector-b3-area-text").offsetHeight * 0.8) + "px";
    document.getElementById("detector-b3-area-logo").style.marginTop = ((document.getElementById("detector-b3-area-back-div").offsetHeight - document.getElementById("detector-b3-area-text").offsetHeight) / 2) + "px";
    //document.getElementById("detector-b3-area-back-div").style.marginLeft = (document.getElementById("detector-b3-area-back-div").offsetWidth - (document.getElementById("detector-b3-area-logo").offsetWidth + document.getElementById("detector-b3-area-text").offsetWidth + 5)) + "px";
    document.getElementById("detector-b3-area-back-div").style.marginLeft = (screenWidth - (document.getElementById("detector-b3-area-logo").offsetWidth + document.getElementById("detector-b3-area-text").offsetWidth + screenWidth / 10)) + "px";
    //document.getElementById("detector-b3-device-dingshi-text-little-back").style.marginTop = ((document.getElementById("detector-b3-device-dingshi-text-little-back").offsetHeight - document.getElementById("detector-b3-device-dingshi-text-big-back").offsetHeight) / 2) + "px";

    document.getElementById("detector-b3-page-center-canvas").style.height = (document.getElementById("detector-b3-circle-big-back-div").offsetHeight * 0.55) + "px";
    document.getElementById("detector-b3-page-center-canvas").style.width = document.getElementById("detector-b3-page-center-canvas").offsetHeight + "px";
    document.getElementById("detector-b3-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth) / 2 + "px";
    document.getElementById("detector-b3-circle-bg-circle").style.width = (document.getElementById("detector-b3-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    document.getElementById("detector-b3-circle-bg-circle").style.height = (document.getElementById("detector-b3-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    if (screenHeight <= 480) {
        document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.marginTop = ((document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + "px";
    }
    document.getElementById("detector-b3-pm-back-div").style.width = document.getElementById("detector-b3-circle-bg-circle").offsetWidth * 0.7 + "px";
    document.getElementById("detector-b3-pm-back-div").style.height = document.getElementById("detector-b3-pm-back-div").offsetWidth + "px";
    document.getElementById("detector-b3-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("detector-b3-pm-back-div").offsetWidth) / 2 + "px";
    document.getElementById("detector-b3-pm-back-div").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("detector-b3-circle-bg-circle").offsetHeight - document.getElementById("detector-b3-pm-back-div").offsetHeight) / 2) + "px";

    if (screenHeight <= 480) {
        document.getElementById("detector-b3-pm25-title-text").style.fontSize = "0.8em";
        document.getElementById("detector-b3-pm25-content-text").style.fontSize = "1em";
        document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "0.8em";
        document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.5em";
    } else {
        document.getElementById("detector-b3-pm25-title-text").style.fontSize = "1em";
        document.getElementById("detector-b3-pm25-content-text").style.fontSize = "2em";
        document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "1em";
        document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.8em";
    }
}

function setB3CanvasAdaption() {
    //document.getElementById("detector-b3-circle-bg-circle").style.width = (document.getElementById("detector-b3-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    //document.getElementById("detector-b3-circle-bg-circle").style.height = (document.getElementById("detector-b3-circle-big-back-div").offsetHeight * 0.55 * 0.9) + "px";
    if (screenHeight <= 480) {
        document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.marginTop = ((document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
    } else {
        document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + "px";
    }
    
    //if (screenHeight <= 480) {
    //    document.getElementById("detector-b3-pm25-title-text").style.fontSize = "0.8em";
    //    document.getElementById("detector-b3-pm25-content-text").style.fontSize = "1em";
    //    document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "0.8em";
    //    document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.5em";
    //} else {
    //    document.getElementById("detector-b3-pm25-title-text").style.fontSize = "1em";
    //    document.getElementById("detector-b3-pm25-content-text").style.fontSize = "2em";
    //    document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "1em";
    //    document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.8em";
    //}
}

//B3画圆圈
function setB3Canvas() {
    var c = document.getElementById("detector-b3-page-center-canvas");
    var ctx = c.getContext("2d");
    var drawIndex = 0;
    var circleEdgeXArray = [100, 150, 200, 150];
    var circleEdgeYArray = [200, 150, 200, 250];

    var d = 0.0;
    circleRadius = document.getElementById("detector-b3-page-center-canvas").offsetHeight / 2;
    circleCenterX = document.getElementById("detector-b3-page-center-canvas").offsetHeight / 2;
    circleCenterY = document.getElementById("detector-b3-page-center-canvas").offsetHeight / 2;
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

function setB3Exhibition(dataTypeArray, connectState) {
    if (connectState == 0) {
        dataTypeArray = [];
        $("#detector-b3-pm25-judge-text").css("visibility", "hidden");
        $("#detector-b3-split-line").css("visibility", "hidden");
        $("#detector-b3-inside-pm25-text").css("visibility", "hidden");
    } else {
        $("#detector-b3-pm25-judge-text").css("visibility", "visible");
        $("#detector-b3-split-line").css("visibility", "visible");
        $("#detector-b3-inside-pm25-text").css("visibility", "visible");
    }
    if (dataTypeArray.length == 0) {
        $("#detector-b3-other-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-temp-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-humi-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-co2-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-tvoc-big-back-div").css("visibility", "hidden");

        var backStandard = 0;
        if ((screenHeight * 0.55) < screenWidth) {
            backStandard = screenHeight * 0.55;
        } else {
            backStandard = screenWidth;
        }
        document.getElementById("detector-b3-page-center-canvas").style.height = (backStandard * 0.95) + "px";
        document.getElementById("detector-b3-page-center-canvas").style.width = document.getElementById("detector-b3-page-center-canvas").offsetHeight + "px";
        document.getElementById("detector-b3-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth) / 2 + "px";

        document.getElementById("detector-b3-circle-bg-circle").style.width = (backStandard * 0.95 * 0.9) + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.height = (backStandard * 0.95 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("detector-b3-circle-bg-circle").style.marginTop = ((document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("detector-b3-circle-bg-circle").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("detector-b3-pm-back-div").style.width = document.getElementById("detector-b3-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("detector-b3-pm-back-div").style.height = document.getElementById("detector-b3-pm-back-div").offsetWidth + "px";
        document.getElementById("detector-b3-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("detector-b3-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("detector-b3-pm-back-div").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("detector-b3-circle-bg-circle").offsetHeight - document.getElementById("detector-b3-pm-back-div").offsetHeight) / 2) + "px";

        if (screenHeight <= 480) {
            document.getElementById("detector-b3-pm25-title-text").style.fontSize = "1em";
            document.getElementById("detector-b3-pm25-content-text").style.fontSize = "1.5em";
            document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "1em";
            document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.8em";
        } else {
            document.getElementById("detector-b3-pm25-title-text").style.fontSize = "1.5em";
            document.getElementById("detector-b3-pm25-content-text").style.fontSize = "3em";
            document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "1.5em";
            document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "1.2em";
            document.getElementById("detector-b3-pm25-content-text").style.marginTop = 0 + "px";
        }
    } else {
        $("#detector-b3-other-big-back-div").css("visibility", "visible");
        $("#detector-b3-other-temp-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-humi-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-co2-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-tvoc-big-back-div").css("visibility", "hidden");
        $("#detector-b3-other-temp-big-back-div").css("margin-left", "0px");

        var backStandard = screenHeight * 0.55;
        document.getElementById("detector-b3-page-center-canvas").style.height = (backStandard * 0.55) + "px";
        document.getElementById("detector-b3-page-center-canvas").style.width = document.getElementById("detector-b3-page-center-canvas").offsetHeight + "px";
        document.getElementById("detector-b3-page-center-canvas").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth) / 2 + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.width = (backStandard * 0.55 * 0.9) + "px";
        document.getElementById("detector-b3-circle-bg-circle").style.height = (backStandard * 0.55 * 0.9) + "px";
        if (screenHeight <= 480) {
            document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = ((screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + 1) + "px";
            document.getElementById("detector-b3-circle-bg-circle").style.marginTop = ((document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + 1) + "px";
        } else {
            document.getElementById("detector-b3-circle-bg-circle").style.marginLeft = (screenWidth - document.getElementById("detector-b3-page-center-canvas").offsetWidth * 0.9) / 2 + "px";
            document.getElementById("detector-b3-circle-bg-circle").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05) + "px";
        }

        document.getElementById("detector-b3-pm-back-div").style.width = document.getElementById("detector-b3-circle-bg-circle").offsetWidth * 0.7 + "px";
        document.getElementById("detector-b3-pm-back-div").style.height = document.getElementById("detector-b3-pm-back-div").offsetWidth + "px";
        document.getElementById("detector-b3-pm-back-div").style.marginLeft = (screenWidth - document.getElementById("detector-b3-pm-back-div").offsetWidth) / 2 + "px";
        document.getElementById("detector-b3-pm-back-div").style.marginTop = (document.getElementById("detector-b3-page-center-canvas").offsetHeight * 0.05 + (document.getElementById("detector-b3-circle-bg-circle").offsetHeight - document.getElementById("detector-b3-pm-back-div").offsetHeight) / 2) + "px";

        if (screenHeight <= 480) {
            document.getElementById("detector-b3-pm25-title-text").style.fontSize = "0.8em";
            document.getElementById("detector-b3-pm25-content-text").style.fontSize = "1em";
            document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "0.8em";
            document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.5em";
            document.getElementById("detector-b3-pm25-content-text").style.top = "0px";
        } else {
            document.getElementById("detector-b3-pm25-title-text").style.fontSize = "1em";
            document.getElementById("detector-b3-pm25-content-text").style.fontSize = "2em";
            document.getElementById("detector-b3-pm25-judge-text").style.fontSize = "1em";
            document.getElementById("detector-b3-inside-pm25-text").style.fontSize = "0.8em";
            document.getElementById("detector-b3-pm25-content-text").style.marginTop = -5 + "px";
        }

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
            $("#detector-b3-other-temp-big-back-div").css("width", "0px");
        } else {
            $("#detector-b3-other-temp-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[1] == 0) {
            $("#detector-b3-other-humi-big-back-div").css("width", "0px");
        } else {
            $("#detector-b3-other-humi-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[2] == 0) {
            $("#detector-b3-other-co2-big-back-div").css("width", "0px");
        } else {
            $("#detector-b3-other-co2-big-back-div").css("width", (screenWidth * 0.24) + "px");
        }
        if (dataGoneArray[3] == 0) {
            $("#detector-b3-other-tvoc-big-back-div").css("width", "0px");
        } else {
            $("#detector-b3-other-tvoc-big-back-div").css("width", (screenWidth * 0.24) + "px");
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
                $("#detector-b3-other-temp-big-back-div").css("visibility", "visible");
                if (positionCount < positionMarginLeftArray.length) {
                    $("#detector-b3-other-temp-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "humi") {
                $("#detector-b3-other-humi-big-back-div").css("visibility", "visible");
                if (positionCount < positionMarginLeftArray.length) {
                    $("#detector-b3-other-humi-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "co2") {
                $("#detector-b3-other-co2-big-back-div").css("visibility", "visible");
                if (positionCount < positionMarginLeftArray.length) {
                    $("#detector-b3-other-co2-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            } else if (dataTypeArray[i] == "tvoc") {
                $("#detector-b3-other-tvoc-big-back-div").css("visibility", "visible");
                if (positionCount < positionMarginLeftArray.length) {
                    $("#detector-b3-other-tvoc-big-back-div").css("margin-left", positionMarginLeftArray[positionCount]);
                }
                positionCount++;
            }
        }
    }
}
