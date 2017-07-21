<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<title>My Job-快速找好工作，快速找好员工</title>
<meta name="keywords" content="招聘,求职,找工作,人才网,快聘,我的工作" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myjob.js"></script>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?947db1a9acd2678e7d64e0562a2d1011";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
</head>

<body class="page-sso">
	<div class="sso-box">
		<!-- 登录 -->
		<div class="sso-form sso-login" style="display: block;">
			<h3 id="login_title">登录 My Job</h3>
			<font color="red">${LoginFailedMessage}</font>
			<div id="loginTip" class="tip-error"></div>
			<!-- tip-error没有提示显示为空，不需要隐藏 -->
			<form style="width: 350px" action="login.action" method="post">
				<div class="form-group pst-relative drop-select-input-box">
					<div class="input-box">
						<i class="input-ico ico-phone"></i> <input id="loginPhone"
							required="required" name="puser" value="" type="text"
							class="form-control" placeholder="手机号">
					</div>

				</div>
				<div class="form-group">
					<div class="input-box">
						<i class="input-ico ico-pwd"></i> <input id="loginPassword"
							required="required" value="" name="ppw" type="password"
							class="form-control" placeholder="密码">
					</div>
				</div>
				<div class="tip-text">
					<div class="pull-left">
						<label> <input type="checkbox" id="remember"
							name="remember" value="1"> 记住我
						</label>
					</div>
					<br> <input type="radio" name="type" value="个人"
						checked="checked" />个人用户登录&nbsp;&nbsp;&nbsp;<input type="radio" name="type"
						value="企业" />企业用户登录


				</div>
				<div style="margin-top: 20px">
					<input class="btn sso-btn" type="submit" value="登录" />
				</div>
			</form>

			<div class="tip-text">
				<span class="pull-left">没有账号?<a href="register.jsp"
					class="register-link">立即注册</a></span> <span class="pull-right"><a
					href="changepassword.jsp" class="forgotpwd-link">忘记密码</a></span>
			</div>
		</div>
		<!-- 登录 end -->
	</div>
</body>

</html>
<script>
	$('a[name=role]').click(function() {
		$(this).addClass('hidden').siblings().removeClass('hidden');
		$('#login_title').text($(this).attr('title') + ' My Job');
	})
</script>