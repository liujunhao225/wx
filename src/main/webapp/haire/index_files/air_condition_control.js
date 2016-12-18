var usersModel = {
	users : ko.observableArray()
};

var hasChange = false;
var updown;
var disableNum = "";
var tempDisable = false;
var modelDisable = false;
var modeStatusNum = "";
var pages = 1;
var userLen = 0;
var backUsr = true;
var changeControl = false;
var air_condition_point = function(DeviceMac, familyId, type) {
	changeControl = false;
	if (!checkPermission()) {
		return;
	}
	switch (type) {
	case "AirCondition":
		$("#control_mac").val(DeviceMac);
		$("#control_familyid").val(familyId);

		$(".function-selection>span").removeClass("active");
		$(".temp-line").show();
		$("#air_condition_control .control-area>div").hide();
		viewModel
				.load_conditionStatus(
						$("#openId").val(),
						DeviceMac,
						function() {
							control_offset = 0;
							controlLineType = new Array("睡眠曲线", "室内温度曲线",
									"能耗曲线");
							lineTypeFlag = 1;
							control_line_color(controlLineType[lineTypeFlag],
									control_offset);
							$(".lineTitle>.lineTypeText").text(
									controlLineType[lineTypeFlag]);
							$(".lineTitle>.turnLeftLine")
									.unbind()
									.bind(
											"click",
											function() {
												lineTypeFlag--;
												$(".lineTitle>.turnRightLine")
														.css("visibility",
																"visible");
												if (lineTypeFlag == 0) {
													$(
															".lineTitle>.turnLeftLine")
															.css("visibility",
																	"hidden");
												}
												if (lineTypeFlag > 0
														|| lineTypeFlag == 0) {
													$(
															".lineTitle>.lineTypeText")
															.text(
																	controlLineType[lineTypeFlag]);
													control_line_color(controlLineType[lineTypeFlag]);
												}
											});
							$(".lineTitle>.turnRightLine")
									.unbind()
									.bind(
											"click",
											function() {
												lineTypeFlag++;
												$(".lineTitle>.turnLeftLine")
														.css("visibility",
																"visible");
												if (lineTypeFlag == controlLineType.length - 1) {
													$(
															".lineTitle>.turnRightLine")
															.css("visibility",
																	"hidden");
												}
												if (lineTypeFlag < controlLineType.length) {
													$(
															".lineTitle>.lineTypeText")
															.text(
																	controlLineType[lineTypeFlag]);
													control_line_color(controlLineType[lineTypeFlag]);
												}
											});
							// 暂时取消控制页曲线切换
							$(
									".lineTitle>.turnLeftLine,.lineTitle>.turnRightLine")
									.unbind().css("color", "#ccc");
							// lineSlider("canvas-control");
						});

		// navigateToPage($("#air_condition_control"));
		$("#unbindcondition").hide();
		$("#air_condition_control").modal('show');
		break;
	case "AirCircle":
		$("#airbox").modal("show");
		$("#unbindbox").hide();
		// navigateToPage($('#airbox'));
		loadAirBox(DeviceMac);
		break;
	case "AllKnow":
		// navigateToPage($('#allknow'));
		$("#allknow").modal("show");
		$("#unbindknow").hide();

		loadAllknow(DeviceMac);
		break;
	case "AirCube":
		$("#unbindcondition_air_magic").hide();
		$("#air_magic_control").modal("show");
		$("#control_mac").val(DeviceMac);
		viewModel.load_airMagicStatus($("#openId").val(), DeviceMac);
		break;
	case "Purifier":
		$("#unbindcondition_purifier").hide();
		$("#purifier_control").modal("show");
		$("#control_mac").val(DeviceMac);
		viewModel.load_purifierStatus($("#openId").val(), DeviceMac);
		break;
	default:
		break;
	}

};

function loadAirBox(DeviceMac) {
	lineAdaptation();
	var openId = $("#openId").val();
	var offset = 0;
	var TimeCycle = "week";
	// airBoxlineDate(openId, TimeCycle, DeviceMac, offset, function(data) {
	// drawingGraphs("#canvas-voc-pm", data);
	// });

	$("#weekBtn-voc-pm").unbind('click').bind('click', function(e) {
		$(".line-main>.btn-group>button").removeClass("active");
		$(this).addClass("active");
		// lineAdaptation();
		// $("#icon-right-voc-pm").hide();
		offset = 0;
		airBoxlineDate(openId, "week", DeviceMac, offset, function(data) {
			drawingGraphs("#canvas-voc-pm", data);
		});
		TimeCycle = "week";
	});
	$("#monthBtn-voc-pm").unbind('click').bind('click', function(e) {
		$(".line-main>.btn-group>button").removeClass("active");
		$(this).addClass("active");
		// lineAdaptation();
		// $("#icon-right-voc-pm").hide();
		offset = 0;
		airBoxlineDate(openId, "month", DeviceMac, offset, function(data) {
			drawingGraphs("#canvas-voc-pm", data);
		});
		TimeCycle = "month";
	});
	$("#icon-left-voc-pm").unbind('click').bind(
			'click',
			function(e) {
				// $("#icon-right-voc-pm").show();
				offset--;
				// lineAdaptation();
				lineChartData = airBoxlineDate(openId, TimeCycle, DeviceMac,
						offset, function(data) {
							drawingGraphs("#canvas-voc-pm", data);
						});

			});
	$("#icon-right-voc-pm").unbind('click').bind(
			'click',
			function(e) {
				if (offset != 0) {
					offset++;
					// lineAdaptation();
					lineChartData = airBoxlineDate(openId, TimeCycle,
							DeviceMac, offset, function(data) {
								drawingGraphs("#canvas-voc-pm", data);
							});
					if (offset == 0) {
						$(this).hide();
					}
				}
			});
	$("#weekBtn-voc-pm").click();
}

function loadAllknow(DeviceMac) {
	var offset = 0;
	var TimeCycle = "week";
	/*
	 * var allknowLineData = allknowData(0,allknowWeekArray[offset]);
	 * drawingGraphs("#canvas-aldehyde", allknowLineData);
	 */
	$("#icon-right-aldehyde").hide();
	$("#weekBtn-aldehyde").unbind('click').bind(
			'click',
			function(e) {
				$(".line-main>.btn-group>button").removeClass("active");
				$(this).addClass("active");
				// $("#icon-left-aldehyde").show();
				// $("#icon-right-aldehyde").hide();
				// lineAdaptation();
				offset = 0;
				TimeCycle = "week";
				$.get("http://" + window.location.hostname + ":"
						+ window.location.port
						+ "/wxAircontrol/allknow?timeCycle=" + TimeCycle
						+ "&offset=" + offset + "&openId=" + $("#openId").val()
						+ "&mac=" + DeviceMac + "&isVtrual=1",
						function(result) {
							var allknowLineData = allknowData(result.xLabels,
									result.hchoData);
							drawingGraphs("#canvas-aldehyde", allknowLineData);
						});

			});
	$("#monthBtn-aldehyde").unbind('click').bind(
			'click',
			function(e) {
				$(".line-main>.btn-group>button").removeClass("active");
				$(this).addClass("active");
				$("#icon-left-aldehyde").hide();
				$("#icon-right-aldehyde").hide();
				// lineAdaptation();
				TimeCycle = "month";
				offset = 0;
				$.get("http://" + window.location.hostname + ":"
						+ window.location.port
						+ "/wxAircontrol/allknow?timeCycle=" + TimeCycle
						+ "&offset=" + offset + "&openId=" + $("#openId").val()
						+ "&mac=" + DeviceMac + "&isVtrual=1",
						function(result) {
							var allknowLineData = allknowData(result.xLabels,
									result.hchoData);
							drawingGraphs("#canvas-aldehyde", allknowLineData);
						});

			});

	$("#icon-left-aldehyde").unbind('click').bind(
			'click',
			function(e) {
				if (TimeCycle == "week") {
					$("#icon-right-aldehyde").show();
					lineAdaptation();
					offset--;
					$.get("http://" + window.location.hostname + ":"
							+ window.location.port
							+ "/wxAircontrol/allknow?timeCycle=" + TimeCycle
							+ "&offset=" + offset + "&openId="
							+ $("#openId").val() + "&mac=" + DeviceMac
							+ "&isVtrual=1", function(result) {
						var allknowLineData = allknowData(result.xLabels,
								result.hchoData);
						drawingGraphs("#canvas-aldehyde", allknowLineData);
					});
				}
			});
	$("#icon-right-aldehyde").unbind('click').bind(
			'click',
			function(e) {
				if (TimeCycle == "week") {
					if (offset != 0) {
						// $("#icon-left-voc-pm").show();
						lineAdaptation();
						offset++;
						$.get("http://" + window.location.hostname + ":"
								+ window.location.port
								+ "/wxAircontrol/allknow?timeCycle="
								+ TimeCycle + "&offset=" + offset + "&openId="
								+ $("#openId").val() + "&mac=" + DeviceMac
								+ "&isVtrual=1", function(result) {
							var allknowLineData = allknowData(result.xLabels,
									result.hchoData);
							drawingGraphs("#canvas-aldehyde", allknowLineData);
						});
						if (offset == 0) {
							$(this).hide();
						}
					}
				}
			});
	$("#weekBtn-aldehyde").click();
}

// vicnent 添加 begin
function setMode(onOff, mode, status) {
	if ("STATUS_OFFLINE" == status) {
		showOfflineMessage();
		return false;
	}
	
	if ("关" == onOff) {
		setStatus('2');
	} else {
		switch (mode) {
		case '制冷':
			setStatus('4');
		case '制热':
			setStatus('5');
			break;
		case '送风':
			setStatus('7');
			break;
		case '除湿':
			setStatus('6');
			break;
		case '自动':
			setStatus('8');
			break;
		default:
			setStatus('2');
			break;
		}
	}
}

function setStatus(mode) {
	switch (mode) {
	case '2':
		turnOffDevice();
		break;
	case '3':
		turnOnDevice();
		break;
	case '4':
		changestatus();
		break;
	case '5':
		changestatus();
		break;
	case '7':
		changestatus();
		disableTemp();
		break;
	case '6':
		defaultcolor();
		choushi();
		break;
	case '8':
		disableTemp();
		break;
	}
}

function turnOnDevice() {
	// setStatus(modeStatusNum);
	defaultcolor();
}

function turnOffDevice() {
	modelDisable = true;
	choushi();
	disableTemp();
	for (var i = 0; i < 4; i++) {
		$("#pattern-select-items").find("div:eq(" + i + ")").css("color",
				"#ADADAD");
	}
}

function disableTemp() {
	$("#temp_turn_left,#temp_turn_right").addClass("defaultColor");
	tempDisable = true;
}
function changestatus() {
	defaultcolor();
	$("#direction-select-items").find("div:eq(1)").css("color", "#ADADAD");
	disableNum = 24;
}

function defaultcolor() {
	$("#temp_turn_left,#temp_turn_right").removeClass("defaultColor");
	disableNum = "";
	tempDisable = false;
	modelDisable = false;
	for (var i = 0; i < 4; i++) {
		$("#speed-select-items").find("div:eq(" + i + ")").css("color",
				"#FFFFFF");
		$("#direction-select-items").find("div:eq(" + i + ")").css("color",
				"#FFFFFF");
		$("#pattern-select-items").find("div:eq(" + i + ")").css("color",
				"#FFFFFF");
	}
	// $("#temp_turn_left,#temp_turn_right").css("color", "#FFFFFF");
}

function choushi() {
	disableNum = "all";
	for (var i = 0; i < 4; i++) {
		$("#speed-select-items").find("div:eq(" + i + ")").css("color",
				"#ADADAD");
		$("#direction-select-items").find("div:eq(" + i + ")").css("color",
				"#ADADAD");
	}
}

function showMsg() {
	$("#msgs").css("display", "");
	setTimeout(function() {
		$("#msgs").css("display", "none");
	}, 3000);
}

function viewUserList(openId, familyId) {
	pages = 1;
	$('#ajax_loader').show();
	$("#userlist").css("height", window.innerHeight + "px");
	// usersModel.users.removeAll();
	$.get("http://" + window.location.hostname + ":" + window.location.port
			+ "/wxAircontrol/GetUsingSameDeviceServlrt?openId=" + openId
			+ "&familyId=" + familyId + "&page=1", function(result) {
		$('#ajax_loader').hide();
		usersModel.users(result.users);
		$("#numOfUsers").text(result.numOfUsers);
		userLen = result.users.length;
		if (userLen < 0 || userLen == 0) {
			$("#moreUser").unbind();
			$("#moreUser").html("");
		} else {
			$("#moreUser").html("上拉加载更多...");
			$("#moreUser").unbind().bind("click", function() {
				getMoreUser(openId, familyId);
			});
		}

	});
	$("#binding-ListPage").modal("hide");
	navigateToPage($("#userlist"));
}
function getMoreUser(openId, familyId) {
	pages = pages + 1;
	if (!backUsr) {
		return false;
	}
	$("#moreUser").html("正在加载用户列表，请稍候...");
	backUsr = false;
	$.get("http://" + window.location.hostname + ":" + window.location.port
			+ "/wxAircontrol/GetUsingSameDeviceServlrt?openId=" + openId
			+ "&familyId=" + familyId + "&page=" + pages, function(result) {
		// usersModel.users(result.users);
		backUsr = true;
		if (result.users.length > 0) {
			userLen = userLen + result.users.length;
			$.each(result.users, function(i, item) {
				usersModel.users.push(item);
			});
			/*
			 * var html = "<div id=\"moreUser\" class=\"center\"
			 * onClick=\"getMoreUser('" + openId + "','" + familyId + "')\">加载更多</div>";
			 * $("#user-binding").append(html);
			 */
			$("#moreUser").html("上拉加载更多...");
		} else {
			pages = 1;
			$("#moreUser").unbind();
			$("#moreUser").html("<span style=\"color:red;\">已无绑定用户</span>");
		}
	});
}
function controlDevice(openId, familyId, type, status) {
	if ("STATUS_OFFLINE" == status) {
		showOfflineMessage();
		return false;
	}
	air_condition_point(openId, familyId, type);
}

function turndevice(openId, mac, type, status) {
	if (type === 'AirCondition') {
		if ("STATUS_OFFLINE" == status) {
			showOfflineMessage();
			return false;
		}
		var classs = $(this).attr("class");
		var restatus = $("#" + mac).attr("name");
		var url = "http://"
				+ window.location.hostname
				+ ":"
				+ window.location.port
				+ "/wxAircontrol/DeviceControl?method=do_device_cmd&isVirtualDevice=0&optNo="
				+ restatus + "&mac=" + mac + "&openid=" + openId;
		$.post(url, function(result) {
			var json = eval(result);
			var success = json.success;
			var msg = json.msg;
			if (msg = "成功") {
				if (restatus == 3) {
					$("#" + mac).attr("name", 2);
					$("#" + mac).html("√已启用");
					$("#" + mac).removeClass("turnoff").addClass("turnon");
				} else {
					$("#" + mac).attr("name", 3);
					$("#" + mac).html("未启用");
					$("#" + mac).removeClass("turnon").addClass("turnoff");
				}
			}
		});
	} else {
		return false;
	}

}

function changeConditionStatus(opt_no) {
	switch (opt_no) {
	case '2':
		viewModel.conditionStatus.onOff("关");
		break;
	case '3':
		viewModel.conditionStatus.onOff("开");
		break;
	case '4':
		viewModel.conditionStatus.mode("制冷");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置制冷中...");
		break;
	case '5':
		viewModel.conditionStatus.mode("制热");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置制热中...");
		break;
	case '6':
		viewModel.conditionStatus.mode("除湿");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置除湿中...");
		break;
	case '7':
		viewModel.conditionStatus.mode("送风");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置送风中...");
		break;
	case '8':
		viewModel.conditionStatus.mode("自动");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置自动模式中...");
		break;
	case '12':
		viewModel.conditionStatus.windSpeed("自动");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置自动中...");
		break;
	case '11':
		viewModel.conditionStatus.windSpeed("低风");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置低风中...");
		break;
	case '10':
		viewModel.conditionStatus.windSpeed("中风");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置中风中...");
		break;
	case '9':
		viewModel.conditionStatus.windSpeed("高风");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置高风中...");
		break;
	case '20':
		viewModel.conditionStatus.windDirection("上下");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置上下中...");
		break;
	case '24':
		viewModel.conditionStatus.windDirection("左右");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置左右中...");
		break;
	case '22':
		viewModel.conditionStatus.windDirection("全向");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置全向中...");
		break;
	case '23':
		viewModel.conditionStatus.windDirection("定向");
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置定向中...");
		break;
	case '14':
		/*
		 * if(viewModel.conditionStatus.healthy()){
		 * viewModel.conditionStatus.healthy(false); }else{
		 * viewModel.conditionStatus.healthy(true); }
		 */
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置健康中...");
		break;
	case '30':
		/*
		 * if(viewModel.conditionStatus.touching()){
		 * viewModel.conditionStatus.touching(false); }else{
		 * viewModel.conditionStatus.touching(true); }
		 */
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置感人中...");
		break;
	case '33':
		/*
		 * if(viewModel.conditionStatus.sleep()){
		 * viewModel.conditionStatus.sleep(false); }else{
		 * viewModel.conditionStatus.sleep(true); }
		 */
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置睡眠中...");
		break;
	case '18':
		/*
		 * if(viewModel.conditionStatus.addOxygen()){
		 * viewModel.conditionStatus.addOxygen(false); }else{
		 * viewModel.conditionStatus.addOxygen(true); }
		 */
		$("#indoorTemp").hide();
		$("#controlTips").text("正在设置加氧中...");
		break;
	/*
	 * case viewModel.conditionStatus.airFuncOff().toString():
	 * viewModel.conditionStatus.airFunction("无"); break;
	 */
	}
}

$(function() {

	ko.applyBindings(usersModel, document.getElementById('user-binding'));

	$("#managerUser").click(
			function() {
				$('#ajax_loader').show();
				$.get("http://" + window.location.hostname + ":"
						+ window.location.port
						+ "/wxAircontrol/GetUsingSameDeviceServlrt?openId="
						+ $("#openId").val() + "&familyId="
						+ $("#control_familyid").val() + "page=1", function(
						result) {
					$('#ajax_loader').hide();
					usersModel.users(result.users);
				});

				navigateToPage($("#userlist"));
			});

	// 空调控制类
	var Device_Control = new air_base_cmd("DeviceControl", $("#base_parameter")
			.serialize()); // $("#base_parameter").serialize()

	// 载入微信用户
	// view_entity.view_base_load();
	// 减少温度控制
	$("#temp_turn_left").bind("click", function() {
		var container = $(this).siblings(".content").find("#temp");
		var current_temp = parseInt(container.text());
		if (tempDisable)
			return;
		if (current_temp > 16) {
			Device_Control.base_set_temp(container, current_temp, "left");
			container.text(current_temp - 1);
			$("#indoorTemp").hide();
			$("#controlTips").text("正在设置" + (current_temp - 1) + "℃中...");
		} else {
			return false;
		}
	});

	// 增加温度控制
	$("#temp_turn_right").bind("click", function() {
		var container = $(this).siblings(".content").find("#temp");
		var current_temp = parseInt(container.text());
		if (tempDisable) {
			showMsg();
			return false;
		}
		if (current_temp < 30) {
			Device_Control.base_set_temp(container, current_temp, "right");
			container.text(current_temp + 1);
			$("#indoorTemp").hide();
			$("#controlTips").text("正在设置" + (current_temp + 1) + "℃中...");
		} else {
			return false;
		}
	});

	// 模式选择
	/*
	 * $("#pattern-select-items").find("div").each(function(i, item) {
	 * $(item).bind("click", function() { // optNo var $this = $(this); var
	 * opt_no = $this.find('input').val(); //
	 * $("#pattern-select-items").find("div").removeClass("selected"); //
	 * $("#pattern-select-items").find("div").addClass("unselected"); //
	 * $this.addClass("selected"); if (modelDisable == true) { showMsg(); return
	 * false; } modeStatusNum = opt_no; changeConditionStatus(opt_no);
	 * setStatus(opt_no); // 执行命令请求 Device_Control.base_set_orders(opt_no); });
	 * });
	 */
	$(".model-select").find("div").each(function(i, item) {
		$(item).unbind().bind("click", function() {
			var $this = $(this);
			var opt_no = $this.find('input').val();
			if (modelDisable == true) {
				showMsg();
				return false;
			}
			modeStatusNum = opt_no;
			changeConditionStatus(opt_no);
			setStatus(opt_no);
			// 执行命令请求
			Device_Control.base_set_orders(opt_no);
		});
	});
	// 风速选择
	/*
	 * $("#speed-select-items").find("div").each(function(i, item) {
	 * $(item).bind("click", function() { // optNo var $this = $(this); var
	 * opt_no = $this.find('input').val(); if ("all" == disableNum) { showMsg();
	 * return false; } //
	 * $("#speed-select-items").find("div").removeClass("selected"); // //
	 * $("#speed-select-items").find("div").addClass("unselected"); //
	 * $this.addClass("selected"); changeConditionStatus(opt_no); // 执行命令请求
	 * Device_Control.base_set_orders(opt_no); });
	 * 
	 * });
	 */
	$(".speed-set").find("div").each(function(i, item) {
		$(item).bind("click", function() {
			// optNo
			var $this = $(this);
			var opt_no = $this.find('input').val();
			if ("all" == disableNum) {
				showMsg();
				return false;
			}
			// $("#speed-select-items").find("div").removeClass("selected");
			//
			// $("#speed-select-items").find("div").addClass("unselected");
			// $this.addClass("selected");
			changeConditionStatus(opt_no);
			// 执行命令请求
			Device_Control.base_set_orders(opt_no);
		});

	});
	// 风向选择
	/*
	 * $("#direction-select-items").find("div").each(function(i, item) {
	 * 
	 * $(item).bind("click", function() { // optNo var $this = $(this); var
	 * opt_no = $this.find('input').val(); if ("all" == disableNum || opt_no ==
	 * disableNum) { showMsg(); return false; } //
	 * $("#direction-select-items").find("div").removeClass("selected"); //
	 * $("#direction-select-items").find("div").addClass("unselected"); //
	 * $this.addClass("selected");
	 * 
	 * changeConditionStatus(opt_no);
	 *  // 执行命令请求 Device_Control.base_set_orders(opt_no); });
	 * 
	 * });
	 */
	$(".wind-direction-select").find("div").each(function(i, item) {
		$(item).bind("click", function() {
			// optNo
			var $this = $(this);
			var opt_no = $this.find('input').val();
			if ("all" == disableNum || opt_no == disableNum) {
				showMsg();
				return false;
			}
			changeConditionStatus(opt_no);

			// 执行命令请求
			Device_Control.base_set_orders(opt_no);
		});

	});

	$(".function-select").find("div").each(function(i, item) {
		$(item).bind("click", function() {
			// optNo
			var $this = $(this);
			var opt_no = $this.find('input').val();
			if ("all" == disableNum || opt_no == disableNum) {
				showMsg();
				return false;
			}
			changeConditionStatus(opt_no);
			var opt;
			switch (opt_no) {
			case "14":
				if (viewModel.conditionStatus.healthy()) {
					viewModel.conditionStatus.healthy(false);
					opt = "15";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在关闭健康模式中...");
				} else {
					viewModel.conditionStatus.healthy(true);
					opt = "14";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在开启健康模式中...");
				}
				break;
			case "30":
				if (viewModel.conditionStatus.touching()) {
					viewModel.conditionStatus.touching(false);
					opt = "31";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在关闭感人模式中...");
				} else {
					viewModel.conditionStatus.touching(true);
					opt = "30";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在开启感人模式中...");
				}
				break;
			case "33":
				if (viewModel.conditionStatus.sleep()) {
					viewModel.conditionStatus.sleep(false);
					opt = "34";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在关闭睡眠模式中...");
				} else {
					viewModel.conditionStatus.sleep(true);
					opt = "33";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在开启睡眠模式中...");
				}
				break;
			case "18":
				if (viewModel.conditionStatus.addOxygen()) {
					viewModel.conditionStatus.addOxygen(false);
					opt = "19";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在关闭加氧模式中...");
				} else {
					viewModel.conditionStatus.addOxygen(true);
					opt = "18";
					$("#indoorTemp").hide();
					$("#controlTips").text("正在开启加氧模式中...");
				}
				break;
			default:
				opt = opt_no;
				break;
			}

			// 执行命令请求
			Device_Control.base_set_orders(opt);
		});

	});

	// 开 关
	/*
	 * $("#air-on-off-select-items").find("div").each(function(i, item) {
	 * $(item).bind("click", function() { // optNo var $this = $(this); var
	 * opt_no = $this.find('input').val(); //
	 * $("#air-on-off-select-items").find("div").removeClass("selected"); //
	 * $("#air-on-off-select-items").find("div").addClass("unselected"); //
	 * $this.addClass("selected"); setStatus(opt_no);
	 * changeConditionStatus(opt_no); // 执行命令请求
	 * Device_Control.base_set_orders(opt_no); }); });
	 */
	$("#turnOnDeviceBtn,#turnOffDeviceBtn").click(function(event) {
		$(".temp-line").show();
		$("#air_condition_control .control-area>div").hide();
		$(".function-selection>span").removeClass("active");
		// control_line_color();
		var opt_no = $(this).next("input").val();
		setStatus(opt_no);
		changeConditionStatus(opt_no);
		// 执行命令请求
		Device_Control.base_set_orders(opt_no);
		control_line_color(controlLineType[1]);
	});

	/* 空气魔方start */
	var wetArray = [ "AU", "CO", "40", "45", "50", "55", "60", "65", "70",
			"75", "80" ];
	var wetArrayFlag = null;
	function sendOrder_airMagic(order) {
		Device_Control.base_set_orders(order);
		setTimeout(function() {
			$("#ajax_loader_transparent").show();
			viewModel.load_airMagicStatus($("#openId").val(), $("#control_mac")
					.val(), function() {
				$("#ajax_loader_transparent").hide();
			});
		}, 1500);
	}
	function speedControl(speed) {
		switch (speed) {
		case 1:
			/* alert("118:221004-321005（静音）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置风速静音...");
			sendOrder_airMagic(118);
			break;
		case 2:
			/* alert("117:221004-321004（低风）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置风速低风...");
			sendOrder_airMagic(117);
			break;
		case 3:
			/* alert("116:221004-321003（中风）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置风速中风...");
			sendOrder_airMagic(116);
			break;
		case 4:
			/* alert("115:221004-321002（高风）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置风速高风...");
			sendOrder_airMagic(115);
			break;
		case 5:
			/* alert("114221004-321001（强劲）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置风速强劲...");
			sendOrder_airMagic(114);
			break;
		default:
			break;
		}
	}
	function humidity(humidity) {
		switch (humidity) {
		case "AU":
			/* alert("102：自动增加湿度=221005-321000(AU)"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度AU...");
			sendOrder_airMagic(102);
			break;
		case "CO":
			/* alert("103:221005-321001（CO）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度CO...");
			sendOrder_airMagic(103);
			break;
		case "40":
			/* alert("104:221005-321002（40%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度40%...");
			sendOrder_airMagic(104);
			break;
		case "45":
			/* alert("105:221005-321003（45%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度45%...");
			sendOrder_airMagic(105);
			break;
		case "50":
			/* alert("106:221005-321004（50%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度50%...");
			sendOrder_airMagic(106);
			break;
		case "55":
			/* alert("107:221005-321005（55%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度55%...");
			sendOrder_airMagic(107);
			break;
		case "60":
			/* alert("108:221005-321006（60%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度60%...");
			sendOrder_airMagic(108);
			break;
		case "65":
			/* alert("109:221005-321007（65%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度65%...");
			sendOrder_airMagic(109);
			break;
		case "70":
			/* alert("110:221005-321008（70%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度70%...");
			sendOrder_airMagic(110);
			break;
		case "75":
			/* alert("111:221005-321009（75%）"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度75%...");
			sendOrder_airMagic(111);
			break;
		case "80":
			/* alert("112:221005-32100a(80%)"); */
			$("#indoorWet").hide();
			$("#controlTips_air_magic").text("正在设置湿度80%...");
			sendOrder_airMagic(112);
			break;
		default:
			break;
		}
	}
	/* 空气魔方end */
	/* 空气魔方 start */
	$("#acceleration").click(function() {
		var speed = viewModel.airMagicStatus.speed();
		if ((speed < 5 && !viewModel.airMagicStatus.sleep())) {
			speed++;
			viewModel.airMagicStatus.speed(speed);
			speedControl(speed);
		}
	});
	$("#deceleration").click(function() {
		var speed = viewModel.airMagicStatus.speed();
		if (speed > 1 && !viewModel.airMagicStatus.sleep()) {
			speed--;
			viewModel.airMagicStatus.speed(speed);
			speedControl(speed);
		}
	});
	$("#wet_turn_left").click(
			function(e) {
				if (viewModel.airMagicStatus.humidification()
						|| viewModel.airMagicStatus.dehumidification()) {
					if (wetArrayFlag == null) {
						wetArrayFlag = 0;
					} else {
						wetArrayFlag--;
						if (wetArrayFlag < 0) {
							wetArrayFlag = wetArray.length - 1;
						}
					}
					viewModel.airMagicStatus.humidity(wetArray[wetArrayFlag]);
					humidity(wetArray[wetArrayFlag]);
				}
			});
	$("#wet_turn_right").click(
			function(e) {
				if (viewModel.airMagicStatus.humidification()
						|| viewModel.airMagicStatus.dehumidification()) {
					if (wetArrayFlag == null) {
						wetArrayFlag = 0;
					} else {
						wetArrayFlag++;
						if (wetArrayFlag > wetArray.length - 1) {
							wetArrayFlag = 0;
						}
					}
					viewModel.airMagicStatus.humidity(wetArray[wetArrayFlag]);
					humidity(wetArray[wetArrayFlag]);
				}
			});
	$("#turnOffDeviceBtn_air_magic").click(function(e) {
		viewModel.airMagicStatus.power(false);
		/* alert("101关机=221002-NULL"); */
		sendOrder_airMagic(101);
	});
	$("#turnOnDeviceBtn_air_magic").click(function(e) {
		if (viewModel.airMagicStatus.online()) {
			viewModel.airMagicStatus.power(true);
			/* alert("100开机=221001-221001"); */
			$("#controlTips_air_magic").hide();
			$("#indoorWet").show();
			sendOrder_airMagic(100);
		} else {
			$("#overlay-msg").text("哎呀！设备离线，是不是没有插电源?请确认后再试");
			$("#overlay").modal("show");
		}

	});
	$(".function-select_air_magic>div").each(function(index) {
		$(this).click(function(e) {
			var $this = $(this);
			var flag = $this.find("input").val();
			switch (flag) {
			case "5":
				if (viewModel.airMagicStatus.intelligence()) {
					viewModel.airMagicStatus.intelligence(false);
					/* alert("130：送风=221003-321006"); */
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在关闭智能...");
					sendOrder_airMagic(130);
				} else {
					viewModel.airMagicStatus.intelligence(true);
					viewModel.airMagicStatus.purification(false);
					viewModel.airMagicStatus.humidification(false);
					viewModel.airMagicStatus.dehumidification(false);
					/* alert("124:智能=221003-321000"); */
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在开启智能...");
					sendOrder_airMagic(124);
				}
				break;
			case "6":
				if (viewModel.airMagicStatus.humidification()) {
					viewModel.airMagicStatus.humidification(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在关闭加湿...");
					if (viewModel.airMagicStatus.purification()) {
						/* alert("125：净化=221003-321001"); */
						sendOrder_airMagic(125);
					} else {
						/* alert("130：送风=221003-321006"); */
						sendOrder_airMagic(130);
					}
				} else {
					viewModel.airMagicStatus.humidification(true);
					viewModel.airMagicStatus.dehumidification(false);
					viewModel.airMagicStatus.intelligence(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在开启加湿...");
					if (viewModel.airMagicStatus.purification()) {
						/* alert("127：净化加湿=221003-321003"); */
						sendOrder_airMagic(127);
					} else {
						/* alert("126：加湿=221003-321002"); */
						sendOrder_airMagic(126);
					}

				}
				break;
			case "7":
				if (viewModel.airMagicStatus.dehumidification()) {
					viewModel.airMagicStatus.dehumidification(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在关闭除湿...");
					if (viewModel.airMagicStatus.purification()) {
						/* alert("125：净化=221003-321001"); */
						sendOrder_airMagic(125);
					} else {
						/* alert("130：送风=221003-321006"); */
						sendOrder_airMagic(130);
					}
				} else {
					viewModel.airMagicStatus.dehumidification(true);
					viewModel.airMagicStatus.humidification(false);
					viewModel.airMagicStatus.intelligence(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在开启除湿...");
					if (viewModel.airMagicStatus.purification()) {
						/* alert("129：净化除湿=221003-321005"); */
						sendOrder_airMagic(129);
					} else {
						/* alert("128:除湿=221003-321004"); */
						sendOrder_airMagic(128);
					}
				}
				break;
			case "8":
				if (viewModel.airMagicStatus.purification()) {
					viewModel.airMagicStatus.purification(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在关闭净化...");
					if (viewModel.airMagicStatus.humidification()) {
						/* alert("126：加湿=221003-321002"); */
						sendOrder_airMagic(126);
					} else {
						if (viewModel.airMagicStatus.dehumidification()) {
							/* alert("128:除湿=221003-321004"); */
							sendOrder_airMagic(128);
						} else {
							/* alert("130：送风=221003-321006"); */
							console.log("130：送风=221003-321006");
							sendOrder_airMagic(130);
						}
					}
				} else {
					viewModel.airMagicStatus.purification(true);
					viewModel.airMagicStatus.intelligence(false);
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在开启净化...");
					if (viewModel.airMagicStatus.humidification()) {
						/* alert("127：净化加湿=221003-321003"); */
						sendOrder_airMagic(127);
					} else {
						if (viewModel.airMagicStatus.dehumidification()) {
							/* alert("129：净化除湿=221003-321005"); */
							sendOrder_airMagic(129);
						} else {
							/* alert("125：净化=221003-321001"); */
							sendOrder_airMagic(125);
						}
					}
				}
				break;
			case "9":
				if (viewModel.airMagicStatus.sleep()) {
					viewModel.airMagicStatus.sleep(false);
					/* alert("121:睡眠关闭=221008-321000"); */
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在关闭睡眠...");
					sendOrder_airMagic(121);
				} else {
					viewModel.airMagicStatus.sleep(true);
					viewModel.airMagicStatus.speed(1);
					/* alert("122:睡眠开启=221008-321001"); */
					$("#indoorWet").hide();
					$("#controlTips_air_magic").text("正在开启睡眠...");
					sendOrder_airMagic(122);
				}
				break;
			default:
				break;
			}
		});
	});
	/* 空气魔方 end */

	/* 净化器Start */
	function sendOrder_purifier(order) {
		// alert(order);
		Device_Control.base_set_orders(order);
		setTimeout(function() {
			$("#ajax_loader_transparent").show();
			viewModel.load_purifierStatus($("#openId").val(), $("#control_mac")
					.val(), function() {
				$("#ajax_loader_transparent").hide();
			});
		}, 1500);
	}
	function speedControl_purifier(speed) {
		switch (speed) {
		case 1:
			$("#pm25_voc_purifier").hide();
			$("#controlTips_purifier").text("正在设置风速一档...");
			$("#controlTips_purifier").show();
			sendOrder_purifier(217);
			break;
		case 2:
			$("#pm25_voc_purifier").hide();
			$("#controlTips_purifier").text("正在设置风速二档...");
			$("#controlTips_purifier").show();
			sendOrder_purifier(216);
			break;
		case 3:
			$("#pm25_voc_purifier").hide();
			$("#controlTips_purifier").text("正在设置风速三档...");
			$("#controlTips_purifier").show();
			sendOrder_purifier(215);
			break;
		case 4:
			$("#pm25_voc_purifier").hide();
			$("#controlTips_purifier").text("正在设置风速四档...");
			$("#controlTips_purifier").show();
			sendOrder_purifier(214);
			break;
		case 5:
			$("#pm25_voc_purifier").hide();
			$("#controlTips_purifier").text("正在设置风速五档...");
			$("#controlTips_purifier").show();
			sendOrder_purifier(213);
			break;
		default:
			break;
		}
	}
	$("#purifier_turn_left,#purifier_turn_right").click(function() {
		if ($("#pm25_purifier").css("display") == "none") {
			$("#voc_purifier").css("display", "none");
			$("#pm25_purifier").css("display", "inline-block");
			$("#pm25_voc_purifier").text("室内PM2.5");
		} else {
			$("#pm25_purifier").css("display", "none");
			$("#voc_purifier").css("display", "inline-block");
			$("#pm25_voc_purifier").text("室内VOC");
		}
		$("#pm25_voc_purifier").show();
		$("#controlTips_purifier").hide();
	});
	$("#acceleration_purifier").click(function() {
		var speed = viewModel.purifierStatus.speed();
		if (speed < 5 && !viewModel.purifierStatus.lockable()) {
			viewModel.purifierStatus.pattern("手动");
			speed++;
			viewModel.purifierStatus.speed(speed);
			speedControl_purifier(speed);
		}
	});
	$("#deceleration_purifier").click(function() {
		var speed = viewModel.purifierStatus.speed();
		if (speed > 1 && !viewModel.purifierStatus.lockable()) {
			viewModel.purifierStatus.pattern("手动");
			speed--;
			viewModel.purifierStatus.speed(speed);
			speedControl_purifier(speed);
		}
	});
	$("#turnOffDeviceBtn_purifier").click(function(e) {
		if (!viewModel.purifierStatus.lockable()) {
			viewModel.purifierStatus.power(false);
			sendOrder_purifier(202);
		}
	});
	$("#turnOnDeviceBtn_purifier").click(function(e) {
		if (viewModel.purifierStatus.online()) {
			viewModel.purifierStatus.power(true);
			$("#controlTips_purifier").hide();
			$("#pm25_voc_purifier").show();
			sendOrder_purifier(201);
		} else {
			$("#overlay-msg").text("哎呀！设备离线，是不是没有插电源?请确认后再试");
			$("#overlay").modal("show");
		}

	});
	$(".function-select_purifier>div").each(function(index) {
		$(this).click(function(e) {
			var $this = $(this);
			var flag = $this.find("input").val();
			switch (flag) {
			case "1":
				if (!viewModel.purifierStatus.lockable()) {
					viewModel.purifierStatus.pattern("自动");
					viewModel.purifierStatus.speed(5);
					$("#pm25_voc_purifier").hide();
					$("#controlTips_purifier").text("正在设置自动...");
					$("#controlTips_purifier").show();
					sendOrder_purifier(204);
				}
				break;
			case "2":
				if (!viewModel.purifierStatus.lockable()) {
					viewModel.purifierStatus.pattern("净烟");
					viewModel.purifierStatus.speed(5);
					$("#pm25_voc_purifier").hide();
					$("#controlTips_purifier").text("正在设置净烟...");
					$("#controlTips_purifier").show();
					sendOrder_purifier(212);
				}
				break;
			case "3":
				if (!viewModel.purifierStatus.lockable()) {
					if (viewModel.purifierStatus.healthy()) {
						viewModel.purifierStatus.healthy(false);
						$("#pm25_voc_purifier").hide();
						$("#controlTips_purifier").text("正在关闭健康...");
						$("#controlTips_purifier").show();
						sendOrder_purifier(343);
					} else {
						viewModel.purifierStatus.healthy(true);
						$("#pm25_voc_purifier").hide();
						$("#controlTips_purifier").text("正在开启健康...");
						$("#controlTips_purifier").show();
						sendOrder_purifier(344);
					}
				}
				break;
			case "4":
				if (viewModel.purifierStatus.lockable()) {
					viewModel.purifierStatus.lockable(false);
					$("#pm25_voc_purifier").hide();
					$("#controlTips_purifier").text("正在关闭童锁...");
					$("#controlTips_purifier").show();
					sendOrder_purifier(307);
				} else {
					viewModel.purifierStatus.lockable(true);
					$("#pm25_voc_purifier").hide();
					$("#controlTips_purifier").text("正在开启童锁...");
					$("#controlTips_purifier").show();
					sendOrder_purifier(308);
				}
				break;
			case "5":
				if (!viewModel.purifierStatus.lockable()) {
					viewModel.purifierStatus.pattern("睡眠");
					viewModel.purifierStatus.speed(1);
					$("#pm25_voc_purifier").hide();
					$("#controlTips_purifier").text("正在设置睡眠...");
					$("#controlTips_purifier").show();
					sendOrder_purifier(205);
				}
				break;
			default:
				break;
			}
		});
	});
	/* 净化器End */
});

/*
 * view_entity view_base_event：用于取消微信的导航栏以及工具栏 view_base_load：将绑定设备的微信用户载入
 */
var parameter;
var view_entity = {
	// 将绑定设备的微信用户载入
	view_base_load : function() {

		var base_action = "DeviceControl?method=do_user_lst";
		var parameter = $("#base_parameter").serialize();

		ajax_base_cmd(
				base_action,
				parameter,
				"false",
				"get",
				function(e) {
					// 错误捕捉
				},
				function() {
					// 加载中
				},
				function(data) {
					// 执行成功
					if (data.users.length > 0) {
						var html = "";

						$
								.each(
										data.users,
										function(i, item) {
											html += "<div class=\"user-element\">";
											html += "<div class=\"avatar\"><img  style=\"width:35px;height:35px;margin-left:10px;padding:0px;\" src="
													+ item.headimgurl
													+ " alt=\"我是头像君\" /></div>";
											html += "<div class=\"baseinfo\">";
											html += "<span class=\"username\">韩梅梅</span><br /><span class=\"user-reg-date\">添加于&nbsp;<span>2014/04/14</span></span>";
											html += "</div>";
											html += "<div class=\"user-enable\">";
											html += "<img src=\"images/stop.png\" alt=\"删除\" /> <span class=\"enable\">禁用</span>";
											html += "</div>";
											html += "</div>";
										});

						$("#wechat-user-lst").empty().append(html);
					}
				});

	}

};

/**
 * 用于抽象出空调的控制
 * 
 * @param base_action
 * @param base_parameter
 * @returns
 */
// 基础空调控制类
function air_base_cmd(base_action, base_parameter) {
	this.action = base_action;
	this.parameter = base_parameter;
};
// 基础控制
air_base_cmd.prototype.base_control = function(action, parameter, callback) {
	// base cmd
	ajax_base_cmd(action, parameter, "false", "post", function(e) {
		// error handler
		$("#controlTips").text("操作完毕!");
		$("#indoorTemp").hide();
	}, function() {
		// beforeSend...
		// 注：若使用全局性质的ajaxStart等操作，此处可以不写。
	}, function(data) {
		callback(data);
	});
};
// 控制温度
air_base_cmd.prototype.base_set_temp = function(container, temp, status) {
	// set temp
	/*
	 * container 承接层 temp 温度
	 */
	switch (status) {
	case "left":
		temp--;
		break;
	case "right":
		temp++;
		break;
	}

	var request_action = this.action
			+ "?method=do_device_cmd&optNo=13&devOptArgs=" + temp + "&mac="
			+ $("#control_mac").val() + "&openid=" + $("#openId").val()
			+ "&isVirtualDevice=0";
	this.base_control(request_action, this.parameter, function(data) {
		// 如果执行成功
		if (data.success) {
			// 更改温度值
			viewModel.conditionStatus.temp(temp);
			$("#indoorTemp").hide();
			$("#controlTips").text("操作完毕！");
		} else {
			return false;
		}
	});
};

// 发送其他指令
air_base_cmd.prototype.base_set_orders = function(mode) {
	hasChange = true;
	updown = mode;
	// set pattern
	var request_action = this.action + "?method=do_device_cmd&optNo=" + mode
			+ "&mac=" + $("#control_mac").val() + "&openid="
			+ $("#openId").val() + "&isVirtualDevice=0";
	this
			.base_control(
					request_action,
					this.parameter,
					function(data) {
						setTimeout(
							  	"viewModel.load_conditionStatus($('#openId').val(),$('#control_mac').val())",
								1500);
					});
};
/*
 * air_base_cmd.prototype.base_set_speed=function(){ //set speed };
 * air_base_cmd.prototype.base_set_direction=function(){ //set direction };
 * 
 */

function unbinding(openId, mac) {
	$("#confirm").modal('show');
	$("#confirmunbinding").unbind('click').bind(
			'click',
			function() {
				$('#ajax_loader').show();
				$.get("http://" + window.location.hostname + ":"
						+ window.location.port
						+ "/wxAircontrol/UnbindFamilyServlet?mac="
						+ mac + "&openId=" + openId, function(data,status) {
					$('#ajax_loader').hide();
					if (data.result == "1") {
						hasDevice = data.hasDevice;
						isVirtualOnly = !hasDevice ? 1 : isVirtualOnly;

//						if (eachHasDevice) {
//							cancel_cdOptimize();
//							/* 强制变换数值 */
//							viewModel.indoorViewModel.pm25(60);
//							viewModel.indoorViewModel.temp(23);
//							viewModel.indoorViewModel.hcho(0.03);
//							viewModel.indoorViewModel.wet(30);
//							viewModel.indoorViewModel.voc(50);
//							/* end */
//						}
						
						$("#controlMsg").text("解绑成功！");
						$("#sure").modal('show');
						$("#toPage").unbind('click').bind('click', function() {
							$('#sure').modal('hide');
							getDeviceList(function() {
								if (currentPage[0].id !== 'fullBindingList') {
									$("#binding-ListPage").modal("show");
								}
							});
						});
					} else {
						$("#binload").css("display", "none");
						$("#controlMsg").text("解绑失败！");
						$("#toPage").unbind('click').bind('click', function() {
							$('#sure').modal('hide');
						});
					}
				});
			});
};

function unbindingOther(openid, familyId) {
	$("#confirmOther").modal('show');
	$("#confirmunbindingOther")
			.click(
					function() {
						$('#ajax_loader').show();
						$
								.get(
										"http://"
												+ window.location.hostname
												+ ":"
												+ window.location.port
												+ "/wxAircontrol/UnbindFamilyServlet?familyId="
												+ familyId + "&openId="
												+ openid,
										function(dataResult) {
											$('#ajax_loader').hide();
											if (dataResult.result == "1") {
												$("#controlMsg").text("解绑成功！");
												$("#sure").modal('show');
												$("#toPage")
														.unbind('click')
														.bind(
																'click',
																function() {
																	$
																			.get(
																					"http://"
																							+ window.location.hostname
																							+ ":"
																							+ window.location.port
																							+ "/wxAircontrol/GetUsingSameDeviceServlrt?openId="
																							+ $(
																									"#openId")
																									.val()
																							+ "&familyId="
																							+ familyId
																							+ "&page=1",
																					function(
																							result) {
																						usersModel
																								.users(result.users);
																						$(
																								"#numOfUsers")
																								.text(
																										result.numOfUsers);
																						$(
																								"#moreUser")
																								.unbind()
																								.bind(
																										"click",
																										function() {
																											getMoreUser(
																													openId,
																													familyId);
																										});
																					});
																});
											} else {
												$("#controlMsg").text("解绑失败！");
												$("#toPage")
														.unbind('click')
														.bind(
																'click',
																function() {
																	$('#sure')
																			.modal(
																					'hide');
																});
											}
										});
					});
}

/**
 * 对jQuery的ajax操作进行二次封装
 */
// 封装一下Jquery的AJAX操作。
var ajax_base_cmd = function(url, parameter, async, type, error_callback,
		beforeSend_callback, success_callback) {

	changeControl = true;

	var url = (url == null || url == "" || typeof (url) == "undefined") ? ""
			: url;
	var parameter = (parameter == null || parameter == "" || typeof (parameter) == "undefined") ? ""
			: parameter;
	var async = (async == null || async == "" || typeof (async) == "undefined") ? "false"
			: async;
	var type = (type == null || type == "" || typeof (type) == "undefined") ? "post"
			: type;

	$.ajax({
		url : url,
		data : parameter,
		async : async,
		type : type,
		error : function(e) {
			if (error_callback) {
				error_callback(e);
			}
		},
		beforeSend : function() {
			if (beforeSend_callback) {
				beforeSend_callback();
			}
		},
		success : function(data) {
			if (success_callback) {
				success_callback(data);
			}
		}

	});
};

function closeDevice() {
	if (window.location.href.indexOf("page=mydevice") > -1) {
		return false;
	}
	if (changeControl) {
		cancel_cdOptimize();
		/* 强制变换数值 */
		viewModel.indoorViewModel.pm25(60);
		viewModel.indoorViewModel.temp(23);
		viewModel.indoorViewModel.hcho(0.03);
		viewModel.indoorViewModel.wet(30);
		viewModel.indoorViewModel.voc(50);
		/* end */
	}
	$("#controlTips").text("");
	$("#indoorTemp").show();
	viewModel.indoorViewModel.tips("正在调整设备数据…");
	navigateToPage($("#inDoor"));
	viewModel.loadIndoor($("#openId").val(), isVirtualOnly);

	hasChange = false;
	updown = 0;
}