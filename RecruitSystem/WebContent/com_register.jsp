<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<title>My Job-快速找好工作,快速找好员工</title>
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
		<!-- 注册 -->
		<div class="sso-form sso-register" id="sso-register"
			style="display: block;">
			<font color="red">${RegisteredFailedmessage}</font>
			<h3>注册 My Job</h3>
			<div id="registerTip" class="tip-error"></div>
			<!-- tip-error没有提示显示为空，不需要隐藏 -->
			<form style="width: 350px" action="register.action" method="post">
				<div class="form-group">
					<div class="form-group pst-relative drop-select-input-box">
						<div class="input-box">
							<i class="input-ico ico-phone"></i> <input name="registerPhone"
								required="required" type="text" class="form-control"
								placeholder="手机号">
						</div>

					</div>
				</div>

				<div class="form-group">
					<div class="input-box">
						<i class="input-ico ico-pwd"></i> <input name="registerPassword"
							required="required" type="password" class="form-control"
							placeholder="密码">
					</div>
				</div>
				<div class="form-group">
					<div class="input-box">
						<i class="input-ico ico-pwd"></i> <input name="registerRepassword"
							required="required" type="password" class="form-control"
							placeholder="确认密码">
					</div>
				</div>
				<a href="register.jsp" name="role" value="1" title="企业登录">个人注册</a>
				<input class="btn sso-btn" type="submit" value="注册" />
			</form>
			<div class="tip-text align-center">
				<span> 已有账号?<a href="login.jsp" class="login-link">立即登录</a></span>
			</div>
		</div>
		<!-- 注册 end -->
	</div>
</body>

</html>