/**
 * 抽奖，另外抽奖动画为概率性展示
 * @param callbackFun 展示完抽奖动画，用户确认后执行回调函数
 * @param btn 标识触发抽奖的位置
 */
function getPrize(callbackFun,btn){
	if(callbackFun){
		callbackFun();
	}
	/*var openId=$("#openId").val();
	$.ajax({
		type:"POST",
		url:"prize",
		data:{"openId":openId,"btn":btn},
		async : false,//同步
		dataType:"json",
		success:function(result){
			if(result.flag){//中奖
				showPrizeStyle(result,callbackFun);
			}else{//未中奖
				if(result.msg){//展示提示语
					showPrizeStyle(result,callbackFun);
				}else{
					if(callbackFun){
						callbackFun();
					}
				}
			}
		}
	});*/
}

var openPrizeStyleTimer;//抽奖动画定时器
var stopPrizeTimer;//定时停止动画定时器
function showPrizeStyle(result,callbackFun){//展示抽奖效果
	$(".prize").show();//显示抽奖浮层
	setPrizeHeight();
	$("#prize").removeClass("prize-bg").removeClass("prize-b").addClass("prize-s");//重置样式 
	openPrizeStyleTimer=setInterval(function(){//轮循抽奖动画
        var cla=$("#prize").attr("class");
        if(cla.indexOf("prize-s")>-1){
            $("#prize").removeClass("prize-s").addClass("prize-b");
        }else{
            $("#prize").removeClass("prize-b").addClass("prize-s");
        }
    },200);
	stopPrizeStyle(result,callbackFun);
}

function stopPrizeStyle(result,callbackFun){
	clearTimeout(stopPrizeTimer);
	stopPrizeTimer=setTimeout(function(){
        clearInterval(openPrizeStyleTimer);//停止抽奖动画
        $("#prize").removeClass("prize-b")
        	.removeClass("prize-s")
        	.addClass("prize-bg");
        if(result.flag){//中奖
        	$("#prize_sure").removeClass("thks-bt").addClass("receive-bt");
        }else{
        	$("#prize_sure").removeClass("receive-bt").addClass("thks-bt");
        }
        $("#prize_sure").show();
        $("#prize_sure").unbind().bind("click",function(){
        	$(".prize").hide();
        	$("#prize_sure").hide();
        	$("#prize_hint").hide();
        	if(callbackFun){
				callbackFun();//执行回调
			}
        });
        $("#prize_hint").show();//提示语
        if(result.flag){
        	$("#prize_hint").html(result.msg+"1个");
        }else{
        	$("#prize_hint").html(result.msg);//加入提示语
        }
        
    },2000);
}

function setPrizeHeight(){
	$(".prize").height($(".prize").width() * 1.0734);
}
