
//联动页面适配
function setRelationPageAdaption() {
    document.getElementById("relation-page-title-mode").style.marginTop = -(document.getElementById("relation-page-title-mode").offsetHeight / 2) + "px";
    document.getElementById("relation-page-title-img-back-div").style.marginLeft = (document.getElementById("relation-page-title-mode").offsetWidth + 10) + "px";
    document.getElementById("relation-area-text").style.marginTop = -(document.getElementById("relation-area-text").offsetHeight / 2) + "px";
    document.getElementById("relation-area-logo").style.height = (document.getElementById("relation-area-text").offsetHeight * 0.8) + "px";
    document.getElementById("relation-area-logo").style.marginTop = ((document.getElementById("relation-area-back-div").offsetHeight - document.getElementById("relation-area-text").offsetHeight) / 2) + "px";
    document.getElementById("relation-area-back-div").style.marginLeft = (document.getElementById("relation-area-back-div").offsetWidth - (document.getElementById("relation-area-logo").offsetWidth + document.getElementById("relation-area-text").offsetWidth + 5)) + "px";

    //关联左下居中
    document.getElementById("relation-jinghuaqi-title-text").style.marginTop = -(document.getElementById("relation-jinghuaqi-title-text").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-switch-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-switch-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-connectinternet-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-connectinternet-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-speed-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-speed-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-share-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-share-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-mode-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-mode-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-jinghuaqi-more-back-div").style.marginTop = -(document.getElementById("relation-jinghuaqi-more-back-div").offsetHeight / 2) + "px";
    //关联右下居中
    document.getElementById("relation-detector-c5-title-text").style.marginTop = -(document.getElementById("relation-detector-c5-title-text").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-switch-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-switch-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-connectinternet-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-connectinternet-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-dingshi-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-dingshi-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-share-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-share-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-more-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-more-back-div").offsetHeight / 2) + "px";
    document.getElementById("relation-detector-c5-none-back-div").style.marginTop = -(document.getElementById("relation-detector-c5-none-back-div").offsetHeight / 2) + "px";
}