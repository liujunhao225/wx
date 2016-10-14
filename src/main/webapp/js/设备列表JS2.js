
var height = document.documentElement.clientHeight;
$(".page0").css("height", height + "px");

//header
$(".header2 img").css("width", $(".header img").css("height"));
var headerheight = $(".header").css("height");
$(".header2 span").css("line-height", headerheight);


//anim
$(".rzr_dt_12").css("width", $(".rzr_dt_12").css("height"));

var imgHeight = parseInt($(".rzr_dt_12").css("height").split("px")[0]);
var imgWidth = parseInt($(".rzr_dt_12").css("width").split("px")[0]);

var imgPosTop = document.getElementById("rootimg2").offsetTop;
var imgPosLeft = document.getElementById("rootimg2").offsetLeft;

$(".rzr_dt_22").css("width", imgWidth - 20 + "px").css("width", imgHeight - 20 + "px").css("top", imgPosTop + 10 + "px").css("left", imgPosLeft + 10 + "px");
$(".rzr_dt_32").css("width", imgWidth - 40 + "px").css("width", imgHeight - 40 + "px").css("top", imgPosTop + 20 + "px").css("left", imgPosLeft + 20 + "px");
$(".rzr_dt_42").css("width", imgWidth - 60 + "px").css("width", imgHeight - 60 + "px").css("top", imgPosTop + 30 + "px").css("left", imgPosLeft + 30 + "px");



$(".rzr_dt_label12").css("top", imgPosTop + imgHeight / 2.9 + "px");
$(".rzr_dt_label22").css("top", imgPosTop + imgHeight / 2.4 + "px");

//fontsButton
$(".fontsButton2").css("line-height", $(".fontsButton2").css("height"));


//footer
//Iphone4
if (height <= 480) {
    $(".imgButtons0").css("font-size", "0.8em");

    $(".imgButtons0").each(function () {
        $(this).children().eq(1).css("line-height", "180%");
    });
}
    //Iphone5
else if (height <= 568) {
    $(".imgButtons0").each(function () {
        $(this).children().eq(0).children().css("width", "45%");
    })
}
    //Iphone6
else if (height <= 667) {
    $(".imgButtons0").each(function () {
        $(this).children().eq(0).children().css("width", "45%");
    })
}
    //其它屏幕（Iphone6plus,平板）
else {
    $(".imgButtons0").each(function () {
        $(this).children().eq(0).children().css("width", "42%");
    })
}

//设置净化器动画
//lv：波浪的高度
//value:滤网剩余值
var JHQ_Temp;
var JHQ_Temp1;
function SetWaterAnim(lv, value) {
    if (JHQ_Temp) {
        window.clearInterval(JHQ_Temp);
    }
    if (JHQ_Temp1) {
        window.clearInterval(JHQ_Temp1);
    }

    $(".rzr_dt_label22").text(value);
    var width = $("#anim_root").width();
    $("#anim_root").css("height", width + "px").css("border-radius", width + "px");
    $("#water").css("width", width * 2 + "px").css("height", width + "px");
    $("#water").css("margin-top", "-" + width * lv + "px");
    var pos = "left";
    JHQ_Temp = window.setInterval(function () {
        $("#water").css("visibility", "visible");
        if (pos == "left") {
            $("#water").animate({ left: '-' + width + 'px' }, 4500, function () { });
            pos = "right";
        }
        else {
            $("#water").animate({ left: '+' + 0 + 'px' }, 4500);
            pos = "left";
        }
    }, 4500);

}

function setJHQAdaption1() {
    document.getElementById("jinghuaqi-water-back-div").style.height = ($(".rzr_dt_32").height() - 20) + "px";
    document.getElementById("jinghuaqi-water-back-div").style.width = ($(".rzr_dt_32").height() - 20) + "px";
    document.getElementById("jinghuaqi-water-back-div").style.top = ($(".rzr_dt_32").offset().top + 10) + "px";
    document.getElementById("jinghuaqi-water-back-div").style.left = ($(".rzr_dt_32").offset().left + 10) + "px";
}

//设置净化器动画
//lv：波浪的高度
//value:滤网剩余值
var JHQ_Temp_1;
var JHQ_Temp_2;
var JHQ_Temp_On = true;
var JHQ_Temp_On_Time = 0;
function setWaterAnim2(lvWangPercent) {
    var width = $("#jinghuaqi-water-back-div").width();
    if (width <= 0) {
        JHQ_Temp_On = false;
    } else {
        JHQ_Temp_On = true;
        JHQ_Temp_On_Time = 0;
    }
    if (JHQ_Temp_On == false && JHQ_Temp_On_Time < 10) {
        setTimeout(function () { setWaterAnim2(lvWangPercent); }, 1000);
        JHQ_Temp_On_Time++;
        return;
    }
    setJHQAdaption1();

    $("#anim_root").css("height", width + "px").css("border-radius", width + "px");
    if (JHQ_Temp_1) {
        window.clearInterval(JHQ_Temp_1);
    }

    var pos = "left";
    JHQ_Temp_1 = window.setInterval(function () {
        if (pos == "left") {
            $("#jinghuaqi-water-img").animate({ marginLeft: '-' + width + 'px' }, 3000, function () { });
            pos = "right";
        } else {
            $("#jinghuaqi-water-img").animate({ marginLeft: '+' + 0 + 'px' }, 3000);
            pos = "left";
        }
    }, 3000);

    JHQ_Temp1 = window.setInterval(function () {
        $(".rzr_dt_32").fadeToggle("fast", "linear", function () {
            $(".rzr_dt_22").fadeToggle("fast", "linear", function () {
                $(".rzr_dt_12").fadeToggle("fast", "linear", function () {
                })
            })
        })
    }, 1000);
}

function setLvWangPercent(lvWangPercent) {
    if (lvWangPercent <= 0) {
        $("#p_Per").text(0 + "%");
        $("#jinghuaqi-water-img").css("margin-top", "-1%");
    } else if (lvWangPercent <= 1) {
        $("#p_Per").text(lvWangPercent + "%");
        $("#jinghuaqi-water-img").css("margin-top", "-1%");
    } else if (lvWangPercent >= 100) {
        $("#p_Per").text(100 + "%");
        $("#jinghuaqi-water-img").css("margin-top", "-90%");
    } else if (lvWangPercent >= 95) {
        $("#p_Per").text(lvWangPercent + "%");
        $("#jinghuaqi-water-img").css("margin-top", "-90%");
    } else {
        $("#p_Per").text(lvWangPercent + "%");
        $("#jinghuaqi-water-img").css("margin-top", -lvWangPercent + "%");
    }
}