
//历史数据Dialog适配
function setHistoryDialogAdaption() {
    $(".history-content-div").css("height", screenWidth * 0.9 * 1.2);
    $("#history-dialog-title").css("height", screenWidth * 0.9 * 1.2 * 0.1);
    $("#history-dialog-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.05);
    $("#history-dialog-select-text").css("height", screenWidth * 0.9 * 1.2 * 0.1);
    $("#history-dialog-select-text").css("margin-top", screenWidth * 0.9 * 1.2 * 0.02);

    $("#history-dialog-pm-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
    $("#history-dialog-temp-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
    $("#history-dialog-humi-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
    $("#history-dialog-pa-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
    $("#history-dialog-co2-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
    $("#history-dialog-tvoc-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);

    $("#history-dialog-pm-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.02);
    $("#history-dialog-temp-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.13);
    $("#history-dialog-humi-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.24);
    $("#history-dialog-pa-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.35);
    $("#history-dialog-co2-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.46);
    $("#history-dialog-tvoc-title").css("margin-top", screenWidth * 0.9 * 1.2 * 0.57);
}

//所有历史数据dialog按钮点击调用
function historyDialogAllBtnClick(witchDataId) {
    $("#history-dialog-pm-title").css("background-color", "#373446");
    $("#history-dialog-temp-title").css("background-color", "#373446");
    $("#history-dialog-humi-title").css("background-color", "#373446");
    $("#history-dialog-pa-title").css("background-color", "#373446");
    $("#history-dialog-co2-title").css("background-color", "#373446");
    $("#history-dialog-tvoc-title").css("background-color", "#373446");
    $(witchDataId).css("background-color", "#7fbe53");
    $(".history-dialog").modal('hide');
}

//适配不同设备类型
function setHistoryDialogType(historyDTArray) {
    if (historyDTArray.length < 1) {
        return;
    }
    $(".history-content-div").css("height", screenWidth * 0.9 * 1.2 - (6 - historyDTArray.length) * screenWidth * 0.9 * 1.2 * 0.12);
    $("#history-dialog-pm-title").css("visibility", "hidden");
    $("#history-dialog-temp-title").css("visibility", "hidden");
    $("#history-dialog-humi-title").css("visibility", "hidden");
    $("#history-dialog-pa-title").css("visibility", "hidden");
    $("#history-dialog-co2-title").css("visibility", "hidden");
    $("#history-dialog-tvoc-title").css("visibility", "hidden");

    $("#history-dialog-pm-title").css("height", 0);
    $("#history-dialog-temp-title").css("height", 0);
    $("#history-dialog-humi-title").css("height", 0);
    $("#history-dialog-pa-title").css("height", 0);
    $("#history-dialog-co2-title").css("height", 0);
    $("#history-dialog-tvoc-title").css("height", 0);

    $("#history-dialog-pm-title").css("margin-top", 0);
    $("#history-dialog-temp-title").css("margin-top", 0);
    $("#history-dialog-humi-title").css("margin-top", 0);
    $("#history-dialog-pa-title").css("margin-top", 0);
    $("#history-dialog-co2-title").css("margin-top", 0);
    $("#history-dialog-tvoc-title").css("margin-top", 0);

    var positionMarginTopArray = new Array();
    for (var i = 0; i < historyDTArray.length; i++) {
        if (i == 0) {
            positionMarginTopArray[i] = screenWidth * 0.9 * 1.2 * 0.02;
        } else {
            positionMarginTopArray[i] = screenWidth * 0.9 * 1.2 * (0.02 + 0.11 * i);
        }
    }

    var positionMTCount = 0;
    for (var i = 0; i < historyDTArray.length; i++) {
        if (historyDTArray[i] == "pm") {
            $("#history-dialog-pm-title").css("visibility", "visible");
            $("#history-dialog-pm-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-pm-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        } else if (historyDTArray[i] == "temp") {
            $("#history-dialog-temp-title").css("visibility", "visible");
            $("#history-dialog-temp-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-temp-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        } else if (historyDTArray[i] == "humi") {
            $("#history-dialog-humi-title").css("visibility", "visible");
            $("#history-dialog-humi-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-humi-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        } else if (historyDTArray[i] == "pa") {
            $("#history-dialog-pa-title").css("visibility", "visible");
            $("#history-dialog-pa-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-pa-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        } else if (historyDTArray[i] == "co2") {
            $("#history-dialog-co2-title").css("visibility", "visible");
            $("#history-dialog-co2-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-co2-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        } else if (historyDTArray[i] == "tvoc") {
            $("#history-dialog-tvoc-title").css("visibility", "visible");
            $("#history-dialog-tvoc-title").css("height", screenWidth * 0.9 * 1.2 * 0.08);
            if (positionMTCount < positionMarginTopArray.length) {
                $("#history-dialog-tvoc-title").css("margin-top", positionMarginTopArray[i]);
            }
            positionMTCount++;
        }
    }
}