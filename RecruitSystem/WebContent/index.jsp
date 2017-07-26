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
	<!-- banner -->
	<div class="banner-box">
		<div class="banner">
			<ul class="banList">
				<li class="active"
					style="background: url(img/banner3.png) no-repeat center center; background-size: cover;">
					<!--  <img src="img/banner_bg.png" /> -->
				</li>
				<li
					style="background: url(img/banner2.png) no-repeat center center; background-size: cover;">
					<!--     <img src="img/banner_bg.png" /> -->
				</li>
				<li
					style="background: url(img/banner_bg.png) no-repeat center center; background-size: cover;">
					<!-- <img src="img/banner_bg.png" /> -->
				</li>

			</ul>
			<div class="fomW">
				<div class="jsNav">
					<a href="javascript:;" class="trigger current"></a> <a
						href="javascript:;" class="trigger"></a> <a href="javascript:;"
						class="trigger"></a>
				</div>
			</div>
		</div>

		<div class="inner banner-in">
			<div class="banner-search">
				<form action="jobSearchLikeName.action" method="get">
					<p style="margin-bottom: 6px;">
						<span class="search-tag current" value="0"> 职位、公司搜索</span> <input
							type="hidden" id="is_tech" name="is_tech" value="0" />
					</p>
					<div class="search-box clearfix">
						<div class="search-input">
							<input name="keyword" type="text" value="" placeholder='职位 公司'>
						</div>

						<button type="submit" class="btn search-box-btn">搜索</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- banner end -->
	<script type="text/javascript" src="js/banner.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".banner").swBanner();
		});
	</script>

	<!-- 热门公司 -->
	<div class="content-block" style="background: #fff">
		<div class="inner">
			<h2>
				<span>热门公司</span>
			</h2>
			<div id="myCarousel" class="carousel slide" data-interval="false">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="thumbnail-block clearfix">
							<!-- 显示五个 -->
							<div class="thumbnail-box">
								<a href="/employer/company/15237" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/3/0/30aaae811187ecd61fe203f0bce0d122.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">百度</p>
										<p class="caption-subtitle">3个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/15769" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/3/4/341d9835f426fa5968dcda310d02c244.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">阿里巴巴集团</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/16817" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/8/d/8dee20d890ddcab5de3d9261cef40bba.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">360</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/53571" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/d/f/dfe0aa85966f78534ecda5ead8711011.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">腾讯科技（深圳）有限公司</p>
										<p class="caption-subtitle">6个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/16401" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/3/e/3e685e47623b746760e189131f162b58.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">美团网</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<!-- 显示五个 end -->
						</div>
					</div>
					<div class="item">
						<div class="thumbnail-block clearfix">
							<!-- 显示五个 -->
							<div class="thumbnail-box">
								<a href="/employer/company/19156" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/8/5/85a874be74db9cc2596bd3dfedf4ccca.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">滴滴</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/15327" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/3/0/30aaae811187ecd61fe203f0bce0t637.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">华为</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/15335" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/f/1/f1afa496f501b82b1eb0c4592ad6515f.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">借贷宝</p>
										<p class="caption-subtitle">4个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/17049" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/c/4/c4310af6e60521cba19802251603810d.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">大众点评网</p>
										<p class="caption-subtitle">5个在招职位</p>
									</div>
								</a>
							</div>
							<div class="thumbnail-box">
								<a href="/employer/company/18246" class="thumbnail">
									<div class="thumbnail-img">
										<img
											src="http://game.myjob.com/upload/0/0/008ad49fb9224649cf762d11640d085e.jpg"
											alt="...">
									</div>
									<div class="caption">
										<p class="caption-title">百合网</p>
										<p class="caption-subtitle">1个在招职位</p>
									</div>
								</a>
							</div>
							<!-- 显示五个 end -->
						</div>
					</div>

				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="thumbnail-left" href="#myCarousel" data-slide="prev"></a>
				<a class="thumbnail-right" href="#myCarousel" data-slide="next"></a>
			</div>
		</div>
	</div>
	<!-- 热门公司 end -->
	<!-- 社区大牛 -->
	<div class="content-block">
		<div class="inner">
			<h2>
				<span>社区大牛</span>
			</h2>
			<div class="clearfix">
				<!-- 显示六个 -->
				<a href="/post/my_post/15769" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/0/b/0b39ba9ae69ede33eb3e21ee95d2c7a2.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">陈良</p>
						<p class="men-item-subtitle n_position">技术经理</p>
						<p class="men-item-subtitle n_company">阿里巴巴集团</p>
					</div>
				</a> <a href="/post/my_post/15237" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/3/0/30aaae811187ecd61fe203f0bce0d109.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">Kate</p>
						<p class="men-item-subtitle n_position">java工程师</p>
						<p class="men-item-subtitle n_company">百度</p>
					</div>
				</a> <a href="/post/my_post/15327" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/0/2/024eda5231c03fba4f8e28f0fa3b0690.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">张雪岭</p>
						<p class="men-item-subtitle n_position">技术总监</p>
						<p class="men-item-subtitle n_company">华为</p>
					</div>
				</a> <a href="/post/my_post/53571" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/b/8/b82945a5e0cfb85dc5cb94ebf5d6100f.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">Gls</p>
						<p class="men-item-subtitle n_position">开发工程师</p>
						<p class="men-item-subtitle n_company">腾讯科技（深圳）有限公司</p>
					</div>
				</a> <a href="/post/my_post/16401" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/7/a/7a297abf8b3f7dd0b0e6367a0f389002.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">张雨强</p>
						<p class="men-item-subtitle n_position">技术总监</p>
						<p class="men-item-subtitle n_company">美团网</p>
					</div>
				</a> <a href="/post/my_post/19156" class="men-item-box">
					<div class="men-item-img">
						<img
							src="http://game.myjob.com/upload/2/4/240f396b84bf48a1a4995b15d8f99750.jpg"
							alt="">
					</div>
					<div class="men-item-text">
						<p class="men-item-title n_name">方敏</p>
						<p class="men-item-subtitle n_position">测试开发</p>
						<p class="men-item-subtitle n_company">滴滴</p>
					</div>
				</a>
				<!-- 显示六个 end-->
			</div>
		</div>
	</div>
	<!-- 社区大牛 end-->
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
<!-- 模态框（提示） end-->