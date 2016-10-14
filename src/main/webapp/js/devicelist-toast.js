function $S(s) { return document.getElementById(s); }
function $html(s, html) { $S(s).innerHTML = html; }
var toastTime2 = null;
var displayTime2 = null;
function setToast3(html) {
    if (toastTime2 != null) {
        clearTimeout(toastTime2);
        clearTimeout(displayTime2);
    }
    $S('toastId2').style.display = 'block';
    $S('toastId2').style.opacity = 1;
    $html('toastId2', html);
    toastTime2 = setTimeout(function () {
        $S('toastId2').style.opacity = 0;
        displayTime2 = setTimeout(function () { $S('toastId2').style.display = 'none'; }, 1000);
    }, 1000);
}
function showToast(toastType) {
    setToast3('<div style="color:#fff;background: rgba(0, 0, 0, 0.6);border-radius: 2px;padding: 2px;text-align: center;width:300px;margin: 0 auto;">' + toastType + '</div>');
    if (toastType == 1) {
        setToast3('<div style="color:#fff;background: rgba(0, 0, 0, 0.6);border-radius: 2px;padding: 2px;text-align: center;width:175px;margin: 0 auto;">您不是主人，不能控制设备</div>');
    } else if (toastType == 2) {
        
    }
}