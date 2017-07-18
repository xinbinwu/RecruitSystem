<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>My Job-快速找好工作，快速找好员工</title>
		<meta name="keywords" content="招聘,求职,找工作,人才网,快聘,我的工作" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="screen">
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
			<!-- 忘记密码 -->
			<div class="sso-form sso-forgotpwd" style="display:block;">
				<h3>修改密码</h3>
				<div id="forgotpwdTip" class="tip-error"></div>
				<!-- tip-error没有提示显示为空，不需要隐藏 -->
				<form style="width:350px" method="post">
					<div class="form-group">
						<div class="form-group pst-relative drop-select-input-box">
							<div class="input-box">
								
								<i class="input-ico ico-phone"></i>
								<input type="text" name="pwdPhone" class="form-control" placeholder="手机号">
							</div>

						</div>
					</div>
					<div class="form-group">
						<div class="input-box">
							<i class="input-ico ico-pwd"></i>
							<input type="password" name="pwdRPassword" class="form-control" placeholder="原密码">
						</div>	
					</div>
					<!--<div class="form-group clearfix">
						<div class="input-box pull-left">
							<i class="input-ico ico-img"></i>
							<input type="text" name="pwdImgcode" class="form-control" style="width:225px;" placeholder="图形验证码">
						</div>
						<div class="code-box pull-right">
							<img id="img_verifyCode" class="verify-code" src="/sso/captcha?d=" title="看不清？点击刷新验证码" onclick="this.src = '/sso/captcha?d=' + Math.random();">
						</div>

					</div>
					<div class="form-group clearfix">
						<div class="input-box pull-left">
							<i class="input-ico ico-mes"></i>
							<input type="text" name="pwdVcode" class="form-control" style="width:225px;" placeholder="短信验证码">
						</div>
						<div class="code-box pull-right">
							<a href="javascript:;" class="btn verify-code" id="pwdVcodeBtn">获取验证码</a>
							
						</div>

					</div>-->
					<div class="form-group">
						<div class="input-box">
							<i class="input-ico ico-pwd"></i>
							<input type="password" name="pwdNewPassword" class="form-control" placeholder="新密码">
						</div>
					</div>
					<div class="form-group">
						<div class="input-box">
							<i class="input-ico ico-pwd"></i>
							<input type="password" name="pwdReNewpassword" class="form-control" placeholder="确认新密码">
						</div>
					</div>
					<div class="tip-text">
						<a href="login.jsp" class="pull-right login-link">返回登录</a>
					</div>
					<button class="btn sso-btn" id="forgotpwdBtn">确认修改</button>
				</form>
			</div>
			<!-- 忘记密码 end -->
		</div>
	</body>

</html>