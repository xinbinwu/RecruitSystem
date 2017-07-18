$(document).ready(function() {
	if(($("body").height() + 48) < $(window).height()) {
		$(".siteFooter").css({
			position: 'fixed',
			bottom: '0'
		});
	} else {
		$(".siteFooter").css({
			position: 'static'
		});
	}
	$(window).resize(function() {
		if(($("body").height() + 48) < $(window).height()) {
			$(".siteFooter").css({
				position: 'fixed',
				bottom: '0'
			});
		} else {
			$(".siteFooter").css({
				position: 'static'
			});
		}
	});

	$("#sidebar .menu_box").hover(function() {
		$(this).addClass('current');
		$(this).children('.menu_sub').removeClass('hide');
	}, function() {
		$(this).removeClass('current');
		$(this).children('.menu_sub').addClass('hide');
	});

	$(".filter-box dl dd a").click(function(event) {
		$(this).addClass('current').siblings().removeClass('current');
	});

	/*登录注册页面*/
	/*
		$(".register-link").click(function(event) {
			$(this).parents(".sso-form").hide();
			$(".sso-register").show();
		});
		$(".login-link").click(function(event) {
			$(this).parents(".sso-form").hide();
			$(".sso-login").show();
		});
		$(".forgotpwd-link").click(function(event) {
			$(this).parents(".sso-form").hide();
			$(".sso-forgotpwd").show();
		});
		*/
	$('body').click(function() {
		$(".drop-select-item").hide();
		$(".drop-select").removeClass('drop-select-open');
	});

	$(".drop-select").click(function(event) {
		event.stopPropagation();
		if(!$(this).hasClass('drop-select-open')) {
			$(this).addClass('drop-select-open');
			$(this).parents(".drop-select-input-box").find(".drop-select-item").show();
		} else {
			$(this).removeClass('drop-select-open');
			$(this).parents(".drop-select-input-box").find(".drop-select-item").hide();
		}
	});

	$(".drop-select-input-box").append('<div class="drop-select-item">' +
		'<ul><li ><span class="num pull-right">+86</span>中国大陆</li>' +
		'<li ><span class="num pull-right">+1</span>美国</li>' +
		'<li ><span class="num pull-right">+852</span>香港</li>' +
		'<li ><span class="num pull-right">+81</span>日本</li>' +
		'<li ><span class="num pull-right">+886</span>台湾</li>' +
		'<li ><span class="num pull-right">+44</span>英国</li>' +
		'<li ><span class="num pull-right">+82</span>韩国</li>' +
		'<li ><span class="num pull-right">+33</span>法国</li>' +
		'<li ><span class="num pull-right">+7</span>俄罗斯</li>' +
		'<li ><span class="num pull-right">+39</span>意大利</li>' +
		'<li ><span class="num pull-right">+65</span>新加坡</li>' +
		'<li ><span class="num pull-right">+63</span>菲律宾</li>' +
		'<li ><span class="num pull-right">+60</span>马来西亚</li>' +
		'<li ><span class="num pull-right">+64</span>新西兰</li>' +
		'<li ><span class="num pull-right">+34</span>西班牙</li>' +
		'<li ><span class="num pull-right">+95</span>缅甸</li>' +
		'<li ><span class="num pull-right">+230</span>毛里求斯</li>' +
		'<li ><span class="num pull-right">+263</span>津巴布韦</li>' +
		'<li ><span class="num pull-right">+20</span>埃及</li>' +
		'<li ><span class="num pull-right">+92</span>巴基斯坦</li>' +
		'<li ><span class="num pull-right">+880</span>孟加拉国</li></ul></div>');

	$(".drop-select-item ul li").click(function(event) {
		event.stopPropagation();
		var area_code = $(this).children('.num').text();
		$(this).parents(".drop-select-input-box").find(".text-select").text(area_code);
		$(this).parents(".drop-select-item").hide();
		$(this).parents(".drop-select-input-box").find(".drop-select").removeClass('drop-select-open');
	});

	/* 注册 */
	/* 手机验证码*/
	$("#vcodeBtn").click(function() {
		if($(this).hasClass('got')) {
			return;
		}
		var phone = $('input[name=registerPhone]').val();
		var imgcode = $('input[name=registerImgcode]').val();
		if(!phone) {
			$("#registerTip").html('请输入手机号码');
			return;
		}
//		if(!imgcode) {
//			$("#registerTip").html('请输入图形验证码');
//			return;
//		}
//		$("#registerTip").html('');
//		$.ajax({
//			url: '/sso/vcode',
//			type: 'post',
//			dataType: 'json',
//			data: {
//				'phone': phone,
//				'imgcode': imgcode,
//				'thing': 'register'
//			},
//			success: function(res) {
//				if(res.errno != 0) {
//					$("#registerTip").html(res.errmsg);
//				} else {
//					$("#registerTip").html('验证码发送成功');
//					timer($('#vcodeBtn'));
//				}
//			}
//		});
//		$("#registerTip").html('正在发送...');
//		var wait = 60;
//
//		function timer(obj) {
//			if(wait == 0) {
//				obj.removeClass('got');
//				obj.html('获取验证码');
//				wait = 60;
//			} else {
//				obj.addClass('got');
//				obj.html(wait + '秒后重新获取');
//				wait--;
//				setTimeout(function() {
//					timer(obj);
//				}, 1000)
//			}
//		}
	});
	$("#registerBtn").click(function() {
		/*操作提示*/
		var phone = $('input[name=registerPhone]').val();
//		var imgcode = $('input[name=registerImgcode]').val();
//		var vcode = $('input[name=registerVcode]').val();
		var password = $('input[name=registerPassword]').val();
		var repassword = $('input[name=registerRepassword]').val();
		var legal = $('input[name=legal]').val();
		if(!phone) {
			$("#registerTip").html('请输入手机号码');
			return false;
		}
//		if(!imgcode) {
//			$("#registerTip").html('请输入验证码');
//			return false;
//		}
//		if(!vcode) {
//			$("#registerTip").html('请输入手机验证码');
//			return false;
//		}
		if(!password) {
			$("#registerTip").html('请输入密码');
			return false;
		}
		if(!repassword) {
			$("#registerTip").html('请确认密码');
			return false;
		}
		if(password != repassword) {
			$("#registerTip").html('密码不一致');
			return false;
		}
		if(!$('input[name=legal]').is(':checked')) {
			$("#registerTip").html('请阅读法律声明并同意');
			return false;
		}
		$("#registerTip").html('');
		$.ajax({
			url: '/sso/register',
			type: 'post',
			dataType: 'json',
			data: {
				'phone': phone,
//				'vcode': vcode,
				'password': password,
				'repassword': repassword,
				'legal': legal,
			},
			success: function(res) {
				if(res.errno != 0) {
					$("#registerTip").html(res.errmsg);
				} else {
					var url = res.data.next;
					window.location.href = url;
				}
			}
		});
		return false;
	});

	/* 登录 */
	$('#loginBtn').click(function(event) {
		event.preventDefault();
		var phone = $('input[name=loginPhone]').val();
//		var imgcode = $('input[name=loginImgcode]').val();
		var password = $('input[name=loginPassword]').val();
		var role = $('a[name=role].hidden').attr('value');
		var remember = 0;
		if(!phone) {
			$("#loginTip").html('请输入手机号码');
			return false;
		}
		if(!password) {
			$("#loginTip").html('请输入密码');
			return false;
		}
		if($('input[name=remember]').is(':checked')) {
			remember = $('input[name=remember]').val();
		}
		var next = $('#loginBtn').attr('value');
		$("#loginTip").html('');
		$.ajax({
			url: '/sso/login',
			type: 'POST',
			dataType: 'json',
			data: {
				'phone': phone,
				'password': password,
				'remember': remember,
				'role': role,
			},
			success: function(res) {
				if(res.errno != 0) {
					$("#loginTip").html(res.errmsg);
				} else {
					window.location.href = next;
				}
			}
		});
		return false;
	});
	/*登录注册 end*/

	/* 修改密码 */
	/* 手机验证码*/
	$("#pwdVcodeBtn").click(function() {
		if($(this).hasClass('got')) {
			return false;
		}
		var phone = $('input[name=pwdPhone]').val();
//		var imgcode = $('input[name=pwdImgcode]').val();
		if(!phone) {
			$("#forgotpwdTip").html('请输入手机号码');
			return false;
		}
//		if(!imgcode) {
//			$("#forgotpwdTip").html('请输入图形验证码');
//			return;
//		}
//		$("#forgotpwdTip").html('');
//		$.ajax({
//			url: '/sso/vcode',
//			type: 'post',
//			dataType: 'json',
//			data: {
//				'phone': phone,
//				'imgcode': imgcode,
//				'thing': 'register'
//			},
//			success: function(res) {
//				if(res.errno) {
//					$("#forgotpwdTip").html(res.errmsg);
//					return;
//				} else {
//					$("#forgotpwdTip").html('验证码发送成功');
//					timer($('#pwdVcodeBtn'));
//				}
//			}
//		});
//		$("#forgotpwdTip").html('正在发送...');
//		var wait = 60;
//
//		function timer(obj) {
//			if(wait == 0) {
//				obj.removeClass('got');
//				obj.html('获取验证码');
//				wait = 60;
//			} else {
//				obj.addClass('got');
//				obj.html(wait + '秒后重新获取');
//				wait--;
//				setTimeout(function() {
//					timer(obj);
//				}, 1000)
//			}
//		}
	});
	$("#forgotpwdBtn").click(function() {
		/*操作提示*/
		var phone = $('input[name=pwdPhone]').val();
//		var imgcode = $('input[name=pwdImgcode]').val();
//		var vcode = $('input[name=pwdVcode]').val();
		var rpassword = $('input[name=pwdRPassword]').val();
		var newpassword = $('input[name=pwdNewPassword]').val();
		var renewpassword = $('input[name=pwdReNewpassword]').val();
		if(!phone) {
			$("#forgotpwdTip").html('请输入手机号码');
			return false;
		}
		if(!rpassword) {
			$("#forgotpwdTip").html('请输入原密码')
			return false;
		}
		if(password != rpassword) {
			$("#forgotpwdTip").html('原密码错误')
			return false;
		}
//		if(!imgcode) {
//			$("#forgotpwdTip").html('请输入验证码');
//			return false;
//		}
//		if(!vcode) {
//			$("#forgotpwdTip").html('请输入手机验证码');
//			return false;
//		}
		if(!newpassword) {
			$("#forgotpwdTip").html('请输入新密码');
			return false;
		}
		if(!renewpassword) {
			$("#forgotpwdTip").html('请确认新密码');
			return false;
		}
		
		if(newpassword != renewpassword) {
			$("#forgotpwdTip").html('密码不一致');
			return false;
		}

		$("#forgotpwdTip").html('');
		$.ajax({
			url: '/sso/edit_password',
			type: 'post',
			dataType: 'json',
			data: {
				'phone': phone,
//				'vcode': vcode,
                'rpassword': rpassword,
				'newpassword': newpassword,
				'renewpassword': renewpassword,
			},
			success: function(res) {
				if(res.errno != 0) {
					$("#forgotpwdTip").html(res.errmsg);
				} else {
					window.location.href = '/index/login';
				}
			}
		});
		return false;
	});
	/* 修改密码 end*/

	/*切换城市*/
	$(".city-option dl dd a").click(function(event) {
		$(".city-text").text("[" + $(this).text() + "]");
		$('#CityModal').modal('hide');
	});

	/*banner搜索标签切换*/
	$(".search-tag").click(function(event) {
		$(this).addClass('current').siblings().removeClass('current');
		$('#is_tech').attr('value', $(this).attr('value'));
	});

	/* 关键词搜索框 */
	$('#keyword').attr('placeholder', $('#option-keyword').attr('default-value'));
	$('#keyword').attr('value', $('#option-keyword').attr('value'));

	/*鼠标经过tip*/
	$(".men-item-box").hover(function() {
		var n_name = $(this).find('.n_name').text();
		var n_position = $(this).find('.n_position').text();
		var n_company = $(this).find('.n_company').text();
		$(this).append('<div class="men-item-tip">' +
			'<p class="men-item-title">' + n_name + '</p>' +
			'<p class="men-item-subtitle">' + n_position + '</p>' +
			'<p class="men-item-subtitle">' + n_company + '</p></div>');
		$(".men-item-tip").css('right', -$(".men-item-tip").width());

	}, function() {
		$(this).children('.men-item-tip').remove();
	});

	center($(".modal .modal-dialog"));
	//弹窗居中 
	function center(obj) {
		var screenWidth = $(window).width();
		var screenHeight = $(window).height(); //当前浏览器窗口的 宽高 
		var o_width = obj.width();
		var o_height = obj.height();
		var objLeft = (screenWidth - o_width) / 2;
		var objTop = (screenHeight - o_height) / 2;
		obj.css({
			left: objLeft + 'px',
			top: objTop + 'px'
		});
		//浏览器窗口大小改变时 
		$(window).resize(function() {
			screenWidth = $(window).width();
			screenHeight = $(window).height();
			objLeft = (screenWidth - o_width) / 2;
			objTop = (screenHeight - o_height) / 2;
			obj.css({
				left: objLeft + 'px',
				top: objTop + 'px'
			});
		});

	}
	/*select.select-normal样式重置*/
	var selects = $('select.select-normal'); //获取select

	for(var i = 0; i < selects.length; i++) {
		createSelect(selects[i], i);
	}

	function createSelect(select_container, index) {

		var tag_select = $('<div></div>');
		tag_select.attr('class', 'select_box');
		if($(select_container).hasClass('not_allowed')) {
			tag_select.addClass('not_allowed');
		}
		var select_name = $(select_container).attr('name');
		tag_select.attr({
			sel_name: select_name
		});
		tag_select.insertBefore(select_container);

		var select_showbox = $('<div></div>'); //显示框
		select_showbox.attr('class', 'select_showbox').appendTo(tag_select);
		select_showbox.attr('name', select_name);

		var ul_option = $('<ul></ul>'); //创建option列表
		ul_option.attr('class', 'select_option');
		ul_option.appendTo(tag_select);
		createOptions(index, ul_option); //创建option

		//点击显示框
		tag_select.click(function(event) {
			event.stopPropagation();
			if(!$(this).hasClass('not_allowed')) {
				if(ul_option.css('display') == 'block') {
					select_showbox.removeClass('show_option');
					ul_option.hide();
				} else {
					$(".select_option").not($(this)).hide();
					$(".select_showbox").not($(this)).removeClass('show_option');
					ul_option.show();
					select_showbox.addClass('show_option');
				}
			} else {
				ul_option.hide();
			}
		});

		var li_option = ul_option.find('li');
		li_option.click(function(event) {
			event.stopPropagation();
			$(this).addClass('selected').siblings().removeClass('selected');
			var value = $(this).text();
			var dada_value = $(this).attr('data-value');
			ul_option.parents('.select_box').siblings('select').trigger('change');
			$(select_container).find('option').each(function(index, el) {
				if($(this).attr('value') == dada_value) {
					$(this).attr('selected', 'selected').siblings().removeAttr('selected');
					$(select_container).val($(this).attr('value'));
				}
			});
			select_showbox.text(value);
			ul_option.hide();
			select_showbox.removeClass('show_option');
			if(select_name == 'birth_year' || select_name == 'birth_month') {
				adjust_birthday();
			} else if(select_name == 'salary_low' || select_name == 'salary_high') {
				salary();
			}

		});

		li_option.hover(function() {
			$(this).addClass('hover').siblings().removeClass('hover');
		}, function() {
			li_option.removeClass('hover');
		});

		$('body').click(function() {
			ul_option.hide();
			select_showbox.removeClass('show_option');
		});

	}

	function createOptions(index, ul_list) {
		//获取被选中的元素并将其值赋值到显示框中
		var options = selects.eq(index).find('option'),
			selected_option = options.filter(':selected'),
			selected_index = selected_option.index(),
			showbox = ul_list.prev();
		showbox.text(selected_option.text());

		//为每个option建立个li并赋值
		for(var n = 0; n < options.length; n++) {
			var tag_option = $('<li></li>'), //li相当于option
				txt_option = options.eq(n).text();
			val_option = options.eq(n).val();
			tag_option.attr('data-value', val_option);
			tag_option.text(txt_option).css('cursor', 'pointer').appendTo(ul_list);

			//为被选中的元素添加class为selected
			if(n == selected_index) {
				tag_option.attr('class', 'selected');
			}
		}
	}
	/*select.select-link样式重置*/
	var select_link = $('select.select-link'); //获取select

	for(var i = 0; i < select_link.length; i++) {
		createSelectBox(select_link[i], i);
	}

	function createSelectBox(select_container, index) {
		var tag_select = $('<div></div>');
		var select_name = $(select_container).attr('name');
		tag_select.attr({
			class: 'select_box',
			name: select_name
		});
		tag_select.insertBefore(select_container);

		var select_showbox = $('<div></div>'); //显示框
		select_showbox.attr('class', 'select_showbox').appendTo(tag_select);

		var ul_option = $('<ul></ul>'); //创建option列表
		ul_option.attr('class', 'select_option');
		ul_option.appendTo(tag_select);

		//点击显示框
		tag_select.click(function(event) {
			event.stopPropagation();

			if(ul_option.css('display') == 'block') {
				select_showbox.removeClass('show_option');
				ul_option.hide();
			} else {
				$(".select_option").not($(this)).hide();
				$(".select_showbox").not($(this)).removeClass('show_option');
				ul_option.show();
				select_showbox.addClass('show_option');
			}
		});
		$('body').click(function() {
			ul_option.hide();
			select_showbox.removeClass('show_option');
		});

	}
	/*职位详情tab*/
	$('.content-tab').click(function(event) {
		var data_id = $(this).attr('data-id');
		$(this).addClass('current').siblings().removeClass('current');
		$("div[data-id='" + data_id + "']").show().siblings('.content-tab-box').hide();
	});

	/* 收藏 */
	$("#favoriteBtn").click(function() {
		if($(this).hasClass("enabled")) {
			return false;
		}
		var type = $(this).attr('favorite-type');
		var target = $(this).attr('value');
		$.ajax({
			url: '/interact/favorite',
			type: 'post',
			dataType: 'json',
			data: {
				'type': type,
				'target': target,
			},
			success: function(res) {
				if(res.data.result == 1) {
					$('#modal-tip-msg').text("收藏成功！");
					$("#tip-info-modal").modal("show");
					$('#tip-info-modal').on('hide.bs.modal', function() {
						window.location.href = res.data.next + target;
					})
				} else {
					if(res.data.next) {
						window.location.href = res.data.next;
					} else {
						$('#modal-tip-msg').html(res.data.msg);
						$("#tip-info-modal").modal("show");
						return false;
					}
				}
			}
		});
		return false;
	});
	/* 投递 */
	$("#deliverBtn").click(function() {
		if($(this).hasClass("enabled")) {
			return false;
		}
		var jid = $(this).attr('value');
		$.ajax({
			url: '/interact/deliver',
			type: 'post',
			dataType: 'json',
			data: {
				'jid': jid
			},
			success: function(res) {
				if(res.data.result == 1) {
					$('#modal-tip-msg').text("申请成功！");
					$("#tip-info-modal").modal("show");
					$('#tip-info-modal').on('hide.bs.modal', function() {
						window.location.href = '/job/job_detail/' + jid;
					})
				} else {
					if(res.data.next) {
						window.location.href = res.data.next;
					} else {
						$('#modal-tip-msg').html(res.data.msg);
						$("#tip-info-modal").modal("show");
						return false;
					}
				}
			}
		});
		return false;
	});

	/*个人信息头像居中*/
	function centerImg(obj) {
		var objWidth = obj.width();
		var objHeight = obj.height();
		if(objWidth > objHeight) {
			obj.css({
				'height': '100%',
				'width': 'auto'
			});
			var marginL = (obj.width() - obj.height()) / 2;
			obj.css('margin-left', -marginL);
		} else if(objWidth == objHeight) {
			obj.css({
				'width': '100%',
				'height': 'auto'
			});
		} else {
			obj.css({
				'width': '100%',
				'height': 'auto'
			});
			var marginT = (obj.width() - obj.height()) / 2;
			obj.css('margin-top', -marginT);
		}
	}

	/*投递页面*/
	$(".deliver-filter-txt").click(function(event) {
		event.stopPropagation();
		var filter_box = $(this).siblings('.deliver-filter-box');
		if(filter_box.css('display') == 'block') {
			$(this).removeClass('filter-box-show');
			filter_box.hide();
		} else {
			$(this).addClass('filter-box-show');
			filter_box.show();
		}
	});

	$('body').click(function() {
		$(".deliver-filter-box").hide();
		$(".deliver-filter-txt").removeClass('filter-box-show');
	});

	/*收藏页面*/
	$(".manageBtn").click(function(event) {
		if($(".favorite-operation").css('display') == "none") {
			$(".favorite-operation").show();
			$(this).text("取消");

		} else {
			$(".favorite-operation").hide();
			$(this).text("管理");
			$("a.job-item").each(function(index, el) {
				$(this).removeClass('chosed');
			});
			$(".favorite-operation .tip").removeClass('star');
		}

	});

	$("a.job-item").click(function(event) {
		if($(".favorite-operation").css('display') == "block") {
			event.preventDefault();
			event.stopPropagation();
			if(!$(this).hasClass('chosed')) {
				$(this).addClass('chosed');
			} else {
				$(this).removeClass('chosed');
			}
		}
	});

	$(".cancelBtn").click(function(event) {
		if($("a.job-item.chosed").length == 0) {
			$(".favorite-operation .tip").addClass('star');
		} else {
			$('#cancelTipModal').modal('show');
		}
	});

	function salary() {
		var salary_low = parseInt($('select[name=salary_low]').val());
		var salary_high = parseInt($('select[name=salary_high]').val());
		if(salary_high <= salary_low) {
			var high_val = salary_low + 1;
			$('select[name=salary_high]').val(high_val);
			$('.select_showbox[name=salary_high]').html(high_val + 'k');
			$('select[name=salary_high]').children('option[value="' + high_val + '"]').attr('selected', 'selected').siblings().removeAttr('selected');
			$('.select_box[sel_name=salary_high] .select_option li[data-value="' + high_val + '"]').addClass('selected').siblings().removeClass('selected');
		}
	}

	/* 技术牛社区邀请好友 start*/
	$('#bbs_invite').click(function() {
		$.ajax({
			url: '/bbs/invitation',
			type: 'get',
			dataType: 'json',
			success: function(res) {
				if(res.data.result == 1) {
					$('input[name=bbs_url]').val(res.data.bbs_url);
					$('input[name=code]').val(res.data.code);
					$("#inviteModal").modal("show")
				} else {
					$('#error-tip').text(res.data.msg);
					$("#tipModal").modal("show")
				}
			}
		});
		return false;
	});
	/* 技术牛社区邀请好友 end*/

	/* 技术牛社区编辑个人信息 start*/
	$('#saveBbsUserBtn').click(function() {
		var bbs_avatar = $('input[name=bbs_avatar]').val();
		var bbs_nickname = $('input[name=bbs_nickname]').val();
		var bbs_company = $('input[name=bbs_company]').val();
		var bbs_job = $('input[name=bbs_job]').val();
		var bbs_status_t = $('select[name=bbs_status_t]').val();
		if(!bbs_avatar) {
			//alert('请上传头像');
			$('#modal-tip-msg').html("请上传头像");
			$("#tip-info-modal").modal("show");
			$(".modal-backdrop:last").css({
				"z-index": 1240
			});
			return false;
		}
		if(!bbs_nickname) {
			//alert('请填写昵称');
			$('#modal-tip-msg').html("请填写昵称");
			$("#tip-info-modal").modal("show");
			$(".modal-backdrop:last").css({
				"z-index": 1240
			});
			return false;
		}
		if(!bbs_company) {
			//alert('请填写公司名称');
			$('#modal-tip-msg').html("请填写公司名称");
			$("#tip-info-modal").modal("show");
			$(".modal-backdrop:last").css({
				"z-index": 1240
			});
			return false;
		}
		if(!bbs_job) {
			//alert('请填写职位信息');
			$('#modal-tip-msg').html("请填写职位信息");
			$("#tip-info-modal").modal("show");
			$(".modal-backdrop:last").css({
				"z-index": 1240
			});
			return false;
		}
		if(!bbs_status_t) {
			//alert('请选择在职状态');
			$('#modal-tip-msg').html("请选择在职状态");
			$("#tip-info-modal").modal("show");
			$(".modal-backdrop:last").css({
				"z-index": 1240
			});
			return false;
		}
		$.ajax({
			url: '/bbs/edit_user',
			type: 'post',
			dataType: 'json',
			data: {
				'bbs_avatar': bbs_avatar,
				'bbs_nickname': bbs_nickname,
				'bbs_company': bbs_company,
				'bbs_job': bbs_job,
				'bbs_status_t': bbs_status_t,
			},
			success: function(res) {
				if(res.data.result == 1) {
					window.location.reload();
				} else {
					//alert('保存失败');
					$('#modal-tip-msg').html("保存失败");
					$("#tip-info-modal").modal("show");
					$(".modal-backdrop:last").css({
						"z-index": 1240
					});
					return false;
				}
			}
		});
		return false;
	});
	/* 技术牛社区编辑个人信息 end*/
});