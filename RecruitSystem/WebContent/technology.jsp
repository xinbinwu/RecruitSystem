<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.chinasofti.model.Personal_user"%>

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
<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myjob.js"></script>
<script src="js/doT.js"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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

	<a name="top" id="top"></a>
	<!-- 导航开始 -->
	<div class="header-box">
		<div class="header">
			<div class="top">
				<div class="inner clearfix">
					<div class="pull-left">
						<span class="city-text" id="city" value="110000">[北京市]</span> <a
							href="#" class="switch-btn" data-toggle="modal"
							data-target="#CityModal">切换城市</a>
					</div>

					<c:choose>
						<c:when test="${! empty user  }">
							<!-- 登录显示 -->
							<div class="pull-right userbox">
								<span class="user-name"> ${user.pname}</span>
								<ul class="user-menu">
									<!-- 求职者个人导航 start -->
									<li><a href="MyResume.action">我的简历</a></li>
									<li><a href="deliverRecord.action">投递记录</a></li>
									<li><a href="changepassword.jsp">修改密码</a></li>
									<li><a href="logout.action">退出登录</a></li>
									<!-- 求职者个人导航 end -->
								</ul>
							</div>
							<!-- 登录显示 end -->
						</c:when>
						<c:otherwise>
							<!-- 未登录显示 -->
							<div class="pull-right">
								<a href="register.jsp" class="top-btn">注册</a> <a
									href="login.jsp" class="top-btn">登录</a>
							</div>
							<!-- 未登录显示 end -->

						</c:otherwise>
					</c:choose>

				</div>
			</div>
			<div class="siteNav">
				<div class="inner clearfix">
					<div class="navLogo">
						<a href="/" title="My Job-快速找好工作，快速找好员工"> <img
							src="img/myjob_logo.png" style="height: 84px" alt="">
						</a>
					</div>
					<div class="nav-search-box clearfix">
						<form method="get" action="jobSearchLikeName.action">
							<div class="search-input">
								<input id="keyword" name="keyword" type="text" value=""
									placeholder='' />
							</div>
							<input type="hidden" name="is_tech" value="0" />
							<button type="submit" class="btn search-box-btn">搜索</button>
						</form>
					</div>
				</div>
			</div>

			<div class="nav-tab">
				<div class="inner">
					<ul class="clearfix">
						<!-- 求职者菜单 start -->
						<li><a href="index.jsp">首页</a></li>
						<li><a href="job.action">职位</a></li>
						<li><a href="bbs_index.jsp">技术牛社区</a></li>
						<li><a href="home_office.jsp">技术宅</a></li>
						<!-- 求职者菜单 end -->
					</ul>
				</div>
			</div>

		</div>
	</div>
	<!-- 导航 end -->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="CityModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 模态框（Modal） end-->
	<!--  职位 -->
	<div class="inner clearfix main-container">


		<!-- 右侧内容 -->
		<div class="content pull-right">
			<!-- 筛选 -->
			<div class="filter-box" id="option-keyword" default-value="职位 公司"
				value="c">

				<dl class="clearfix">
					<dt>薪资范围：</dt>
					<dd>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=0"
							class="current"> 不限</a> <a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=1&exp_t=0&scale_t=0">3k以下</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=2&exp_t=0&scale_t=0">3k-5k</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=3&exp_t=0&scale_t=0">5k-10k</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=4&exp_t=0&scale_t=0">10k-20k</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=5&exp_t=0&scale_t=0">20k-50k</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=6&exp_t=0&scale_t=0">50k以上</a>
					</dd>
				</dl>
				<dl class="clearfix">
					<dt>工作经验：</dt>
					<dd>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=0"
							class="current"> 不限</a> <a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=1&scale_t=0">应届生</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=2&scale_t=0">1年以内</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=3&scale_t=0">1-3年</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=4&scale_t=0">3-5年</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=5&scale_t=0">5-10年</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=6&scale_t=0">10年以上</a>
					</dd>
				</dl>
				<dl class="clearfix">
					<dt>公司规模：</dt>
					<dd>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=0"
							class="current"> 不限</a> <a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=1">0-19人</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=2">20-99人</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=3">100-499人</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=4">500-999人</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=5">1000-9999人</a>
						<a
							href="/job/search?keyword=c&is_tech=0&district_t=&salary_t=0&exp_t=0&scale_t=6">10000人以上</a>
					</dd>
				</dl>
			</div>

			<!-- 职位列表 -->
			<div class="job-content" id="option-keyword" default-value="职位 公司"
				value="">
				<h5 class="content-title">
					<span>职位</span>
				</h5>

				<c:forEach var="job" items="${jobList}">

					<div class="job-list">
						<a href="job_detail.action?jobid=${job.jobId}" target="_blank"
							class="job-item">
							<div class="job-item-t clearfix">
								<div class="job-item-l pull-left">
									<div class="job-name">${job.jobName}</div>
									<div class="demand clearfix">
										<span class="star">${job.jobSal}</span> <span>${job.jobYear}</span>
										<span>${job.jobEdu}</span>
									</div>
								</div>
								<div class="job-item-c pull-left">
									<div class="com-name">${job.company_user.comName}</div>
									<div class="demand clearfix">
										<span>${job.company_user.comField}</span> <span>${job.company_user.comNum}</span>
									</div>
								</div>

							</div>
							<div class="job-item-b">
								<span class="location pull-left">${job.company_user.comAdd}</span>
							</div>

						</a>
					</div>

				</c:forEach>

			</div>
		</div>
		<!-- 右侧内容end-->
	</div>
	<!-- 职位 end -->

	<!--  分页 -->
	<div class="" align="center">

		<a>共 ${page.totalPageCount}页</a> <a>当前第 ${page.pageNow} 页</a>

	</div>
	<div class="pagination-box">
		<ul class="pagination">

			<li><a href="job.action?pageNow=1">首页</a></li>
			<c:choose>
				<c:when test="${page.pageNow - 1 > 0}">
					<li><a href="job.action?pageNow=${page.pageNow - 1}">上一页</a></li>
				</c:when>
				<c:when test="${page.pageNow - 1 <= 0}">
					<li><a href="job.action?pageNow=1">上一页</a></li>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${page.totalPageCount==0}">
					<li><a href="job.action?pageNow=${page.pageNow}">下一页</a></li>
				</c:when>
				<c:when test="${page.pageNow + 1 < page.totalPageCount}">
					<li><a href="job.action?pageNow=${page.pageNow + 1}">下一页</a></li>
				</c:when>
				<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
					<li><a href="job.action?pageNow=${page.totalPageCount}">下一页</a></li>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${page.totalPageCount==0}">
					<li><a href="job.action?pageNow=${page.pageNow}">尾页</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="job.action?pageNow=${page.totalPageCount}">尾页</a></li>
				</c:otherwise>
			</c:choose>

		</ul>
	</div>
	<div>
		<a href="#top" target="_self" id="backtotop"
			style="position: fixed; right: 20px; bottom: 500px;"
			class="btn cancel _j_cancel _j_cancel_basic">返回顶部</a> <a
			href="#buttom" target="_self" id="backtotop"
			style="position: fixed; right: 20px; bottom: 450px;"
			class="btn cancel _j_cancel _j_cancel_basic">返回底部</a>
	</div>

	<!-- 底部 -->
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
	<!-- 底部 end -->
</body>

</html>
<!-- 模态框（提示） start-->
<div class="modal fade" id="tip-info-modal" style="z-index: 1250;"
	tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	aria-hidden="true">
	<div class="modal-dialog" style="margin-top: 100px;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">提示</h4>
			</div>
			<div class="modal-body">
				<p id="modal-tip-msg"></p>
			</div>
		</div>
	</div>
</div>
<a name="buttom" id="buttom"></a>
<!-- 模态框（提示） end-->