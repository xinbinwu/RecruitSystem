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
<link rel="stylesheet" type="text/css" href="css/wangEditor.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/myjob.js"></script>
<script src="js/doT.js"></script>
<script src="js/jqueryajax.js"></script>
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
	<!-- 导航开始 -->
	<div class="header-box">
		<div class="header">
			<div class="top">
				<div class="inner clearfix">
					<!--<div class="pull-left">
							<span class="city-text" id="city" value="310000">[上海市]</span>
							<a href="#" class="switch-btn" data-toggle="modal" data-target="#CityModal">切换城市</a>
						</div>-->

					<c:choose>
						<c:when test="${! empty user  }">
							<!-- 登录显示 -->
							<div class="pull-right userbox">
								<span class="user-name"> ${user.pname}</span>
								<ul class="user-menu">
									<!-- 求职者个人导航 start -->
									<li><a href="MyResume.action">我的简历</a></li>
									<li><a href="DeliveryRecord.jsp">投递记录</a></li>
									<li><a href="JobCollection.jsp">收藏职位</a></li>
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
						<form method="get" action="/job/search">
							<div class="search-input">
								<input id="keyword" name="keyword" type="text" value=""
									placeholder='' />
							</div>
							<input type="hidden" name="is_tech" value="1" />
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

	<div class="job-banner" id="option-keyword" default-value="职位 公司"
		value="">
		<div class="inner clearfix">
			<div class="job-banner-info pull-left" style="width: 50%;">
				<p class="title">${job_info.jobName}</p>
				<p>
					<span class="star">${job_info.jobSal}</span> <span>${job_info.jobYear}</span> <span>${job_info.jobEdu}</span>
				</p>
				<!--<p class="notes">2017-07-20 10:03:19 发布</p>-->
			</div>
			<a href="#"
				class="job-banner-info pull-right clearfix" style="width: 49%;">
				<!--<div class="job-banner-logo pull-right">
						<img src="http://game.myjob.com/upload/1/0/100a82a23b9ec13f21387b7ba7c69ece.jpg" alt="">
					</div>-->
				<div class="pull-right" style="width: 70%;">
					<p class="title">${job_info.company_info.comName}</p>
					<p>
						<span>${job_info.company_info.comField}</span>  <span>${job_info.company_info.comNum}</span>
					</p>
					<p class="notes">${job_info.company_info.comAdd}</p>
				</div>
			</a>
		</div>
	</div>
	<!--  职位 -->
	<div class="inner clearfix main-container" style="margin-left: 550px;">

		<!-- 左侧内容 -->
		<div class="content pull-left">
			<h5 class="content-title">
				<a href="#" class="content-tab current" data-id="job_detail">职位详情</a>
				<!--<a href="#" class="content-tab" data-id="job_info">公司介绍</a>
                    <a href="#" class="content-tab" data-id="job_list">公司所有技术职位</a>-->
			</h5>

			<!-- 职位详情 -->
			<div class="content-tab-box detail-box" data-id="job_detail"
				style="display: block;">
				<div class="detail-list-box">
					<h5>职位福利</h5>
					<p>${job_info.jobWelfare}
					</p>
					<div class="detail-content clearfix"></div>
				</div>
				<div class="detail-list-box">
					<h5>职位描述</h5>
					<div class="detail-content">
						<p>
							${job_info.jobDescription}</p>
						
					</div>
				</div>
				<div class="detail-list-box">
					<h5>公司地址</h5>
					<div class="detail-content">${job_info.company_info.comAdd}</div>
				</div>

				

			</div>
			<!-- 职位详情 end -->

			<!-- 公司介绍 -->
			<div class="content-tab-box detail-box" data-id="job_info">
				<div class="detail-list-box">
					<h5>公司介绍</h5>
					<div class="detail-content">
						公司属于创业型企业，是集研发与服务为一体的科技型企业；公司前身成立于2013年，专注于家具类智能硬件产品的开发，为用户提供至高无上的服务；随着公司不断发展，新项目于2017年成立，已在紧锣密鼓开展进行；公司秉承诚信为本、致力科技改善生活；
					</div>
				</div>

			</div>
			<!-- 公司介绍 end -->

			<!-- 公司其他职位 -->
			<div class="content-tab-box job-list" data-id="job_list"></div>
			<!--    公司其他职位 end -->
		</div>
	</div>
	<!-- 左侧内容 end-->

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
<!-- 模态框（提示） end-->