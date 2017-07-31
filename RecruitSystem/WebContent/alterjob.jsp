<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8" />
<title>My Job-快速找好工作，快速找好员工</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myjob.js"></script>
<script src="js/doT.js"></script>

<title></title>
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

<body>
	<div class="header-box">
		<div class="header">
			<div class="top">
				<div class="inner clearfix">

					<!-- 登录显示 -->
					<div class="pull-right userbox">
						<span class="user-name">${cuser.getCname()}</span>
						<ul class="user-menu">
							<!-- 求职者个人导航 start -->
							<li><a href="showaddcompage.action">添加公司信息</a></li>
							<li><a href="showjobaddpage.action">发布招聘信息</a></li>
							<li><a href="manageDeliver.action">管理招聘信息</a></li>
							<li><a href="manageResume.action">管理应聘信息</a></li>
							<li><a href="changepassword.jsp">修改密码</a></li>
							<li><a href="logout.action">退出登录</a></li>
							<!-- 求职者个人导航 end -->
						</ul>
					</div>
					<!-- 未登录显示 end -->

				</div>
			</div>
			<div class="siteNav">
				<div class="inner clearfix">
					<div class="navLogo">
						<a href="/" title="My Job-快速找好工作，快速找好员工"> <img
							src="img/myjob_logo.png" style="height: 84px" alt="">
						</a>
					</div>
				</div>
			</div>

			<div class="nav-tab">
				<div class="inner">
					<ul class="clearfix" style="margin-left: 485px;">
						<!-- 求职者菜单 start -->
						<li><a class="current" style="font-size: 20px;">修改招聘信息</a></li>

						<!-- 求职者菜单 end -->
					</ul>
				</div>
			</div>

		</div>
	</div>
	<div class="inner clearfix main-container" id="option-keyword"
		default-value="职位 公司" value="">
		<!-- 编辑简历开始 -->
		<div class="content pull-left">
			<div id="basic-info">
				<div class="d1" style="margin-left: 390px;">
					<form action="alterjob.action" data-tpl="edu" method="post">
						<input type="hidden" class="value-field" name="type" value="edu"
							protected=1> <input type="hidden" class="value-field"
							name="id" value="0">
						<!--<h3 class="class_head" style="margin-left: 150px;"><span>添加公司信息</span></h3>-->
						<div class="form-group">
							<label>职位名称</label> <input type="text"
								class="form-control value-field" placeholder="职位名称" name="name">
						</div>
						<div class="form-group">
							<label>职位薪水</label> <input type="text"
								class="form-control value-field" placeholder="职位薪水"
								name="jobSal">
						</div>
						<div class="form-group">
							<label>工作经验</label> <input type="text"
								class="form-control value-field" placeholder="工作经验"
								name="jobYear">
						</div>
						<div class="form-group">
							<label>学历要求</label> <input type="text"
								class="form-control value-field" placeholder="学历要求"
								name="jobEdu">
						</div>

						<div class="operation clearfix">
							<input type="reset" value="取消"> <input type="submit"
								value="保存">
						</div>
					</form>
					<!--</div>-->

					<div class="info-view">
						<ul>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="siteFooter">
		<div class="footerLink">
			<a href="/index/about">关于我们</a> <em>|</em> <a href="/index/question">帮助中心</a>
			<em>|</em> <a href="/index/contact">联系我们</a> <em>|</em> <a
				href="/index/clause">免责条款</a>

		</div>
		<div class="footerLink">
			灵思环宇科技（北京）有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICP备案号：京ICP备16019277号
			©2017 MYJOB.com ALL .Rights Reseved</div>
	</div>
</body>

</html>