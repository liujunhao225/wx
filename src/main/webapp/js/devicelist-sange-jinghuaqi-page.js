
function setSanGeJingHuaQiPageAdaption() {
    document.getElementById("sange-jinghuaqi-page-device-name").style.marginTop = -(document.getElementById("sange-jinghuaqi-page-device-name").offsetHeight / 2) + "px";

    document.getElementById("sange-jinghuaqi-twinkle-cicle-level3").style.marginTop = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.03) + "px";
    document.getElementById("sange-jinghuaqi-twinkle-cicle-level2").style.marginTop = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.06) + "px";
    document.getElementById("sange-jinghuaqi-twinkle-cicle-level1").style.marginTop = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.09) + "px";

    document.getElementById("sange-jinghuaqi-twinkle-cicle-level3").style.marginLeft = ((document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetWidth - (document.getElementById("sange-jinghuaqi-twinkle-cicle-level3").offsetHeight)) / 2) + "px";
    document.getElementById("sange-jinghuaqi-twinkle-cicle-level2").style.marginLeft = ((document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetWidth - (document.getElementById("sange-jinghuaqi-twinkle-cicle-level2").offsetHeight)) / 2) + "px";
    document.getElementById("sange-jinghuaqi-twinkle-cicle-level1").style.marginLeft = ((document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetWidth - (document.getElementById("sange-jinghuaqi-twinkle-cicle-level1").offsetHeight)) / 2) + "px";

    document.getElementById("sange-jinghuaqi-water-back-div").style.height = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.76) + "px";
    document.getElementById("sange-jinghuaqi-water-back-div").style.width = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.76) + "px";
    document.getElementById("sange-jinghuaqi-water-back-div").style.marginTop = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.12) + "px";
    document.getElementById("sange-jinghuaqi-water-back-div").style.marginLeft = ((document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetWidth - (document.getElementById("sange-jinghuaqi-water-back-div").offsetHeight)) / 2) + "px";

    document.getElementById("sange-jinghuaqi-center-lvwang-back-div").style.width = (document.getElementById("sange-jinghuaqi-center-lvwang-back-div").offsetHeight * 1.2) + "px";
    document.getElementById("sange-jinghuaqi-center-lvwang-back-div").style.marginLeft = ((document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetWidth - (document.getElementById("sange-jinghuaqi-center-lvwang-back-div").offsetWidth)) / 2) + "px";
    document.getElementById("sange-jinghuaqi-center-lvwang-back-div").style.marginTop = (document.getElementById("sange-jinghuaqi-center-circle-back-div").offsetHeight * 0.35) + "px";
    if (screenHeight <= 320) {
        $("#sange-jinghuaqi-lvwang-back-div").css("padding-top", "0%");
    }

    document.getElementById("sange-jinghuaqi-page-device-control-row1").style.marginTop = -(document.getElementById("sange-jinghuaqi-page-device-control-row1").offsetHeight / 2) + "px";
    document.getElementById("sange-jinghuaqi-page-device-control-row2").style.marginTop = -(document.getElementById("sange-jinghuaqi-page-device-control-row2").offsetHeight / 2) + "px";
}

//设置净化器动画
//lv：波浪的高度
//value:滤网剩余值
function setSanGeWaterAnimAndLvWangPercent(lvWangPercent) {
    //if (lvWangPercent <= 0) {
    //    $("#sange-jinghuaqi-center-lvwang-text").text(0 + "%");
    //    $("#sange-jinghuaqi-water-img").css("margin-top", "-1%");
    //} else if (lvWangPercent <= 1) {
    //    $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
    //    $("#sange-jinghuaqi-water-img").css("margin-top", "-1%");
    //} else if (lvWangPercent >= 100) {
    //    $("#sange-jinghuaqi-center-lvwang-text").text(100 + "%");
    //    $("#sange-jinghuaqi-water-img").css("margin-top", "-90%");
    //} else if (lvWangPercent >= 95) {
    //    $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
    //    $("#sange-jinghuaqi-water-img").css("margin-top", "-90%");
    //} else {
    //    $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
    //    $("#sange-jinghuaqi-water-img").css("margin-top", -lvWangPercent + "%");
    //}
    setSanGeLvWang(lvWangPercent);

    var width = $("#sange-jinghuaqi-water-back-div").width();
    $("#anim_root").css("height", width + "px").css("border-radius", width + "px");
    var pos = "left";
    /*window.setInterval(function () {
        //$("#jinghuaqi-water-img").css("visibility", "visible");
        if (pos == "left") {
            $("#jinghuaqi-water-img").animate({ left: '-' + width + 'px' }, 3000, function () { });
            pos = "right";
        } else {
            $("#jinghuaqi-water-img").animate({ left: '+' + 0 + 'px' }, 3000);
            pos = "left";
        }
    }, 3000);*/
    window.setInterval(function () {
        //$("#jinghuaqi-water-img").css("visibility", "visible");
        if (pos == "left") {
            $("#sange-jinghuaqi-water-img").animate({ marginLeft: '-' + width + 'px' }, 3000, function () { });
            pos = "right";
        } else {
            $("#sange-jinghuaqi-water-img").animate({ marginLeft: '+' + 0 + 'px' }, 3000);
            pos = "left";
        }
    }, 3000);

    window.setInterval(function () {
        $("#sange-jinghuaqi-twinkle-cicle-level1").fadeToggle("fast", "linear", function () {
            $("#sange-jinghuaqi-twinkle-cicle-level2").fadeToggle("fast", "linear", function () {
                $("#sange-jinghuaqi-twinkle-cicle-level3").fadeToggle("fast", "linear", function () {
                })
            })
        })
    }, 900);
}

function setSanGeLvWang(lvWangPercent) {
    if (lvWangPercent <= 0) {
        $("#sange-jinghuaqi-center-lvwang-text").text(0 + "%");
        $("#sange-jinghuaqi-water-img").css("margin-top", "-1%");
    } else if (lvWangPercent <= 1) {
        $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
        $("#sange-jinghuaqi-water-img").css("margin-top", "-1%");
    } else if (lvWangPercent >= 100) {
        $("#sange-jinghuaqi-center-lvwang-text").text(100 + "%");
        $("#sange-jinghuaqi-water-img").css("margin-top", "-90%");
    } else if (lvWangPercent >= 95) {
        $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
        $("#sange-jinghuaqi-water-img").css("margin-top", "-90%");
    } else {
        $("#sange-jinghuaqi-center-lvwang-text").text(lvWangPercent + "%");
        $("#sange-jinghuaqi-water-img").css("margin-top", -lvWangPercent + "%");
    }
}


