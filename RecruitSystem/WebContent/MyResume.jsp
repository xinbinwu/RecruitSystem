<%@page import="com.chinasofti.model.Personal_user"%>
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
	<a name="top" id="top"></a>
	<!-- 导航开始 -->
	<div class="header-box">
		<div class="header">
			<div class="top">
				<div class="inner clearfix">
					<%
						Personal_user user = (Personal_user) session.getAttribute("user");
					%>

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
				<div class="inner" style="width: 680px">
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

	<style>
span.value-field {
	margin: 0 !important
}
</style>
	<script src='js/FileUploader.js'></script>
	<script src='js/uploadimg.js'></script>

	<div class="inner clearfix main-container" id="option-keyword"
		default-value="职位 公司" value="">
		<!-- 编辑简历开始 -->
		<div class="content pull-left">
			<div id="basic-info">
				<div class="head-img-box">
					<div class="head-img">
						<img src="http://game.myjob.com/static/img/avatar/f-1.png">
						<a class="head-img-btn _j_upload_img"">点击更换头像</a>

					</div>
					<form action="simpleFileupload.action" method="post"
						enctype="multipart/form-data">
						最简单的文件上传：<input type="file" name="fileupload" /> 描述：<input
							type="text" name="desc" /> <input type="submit" value="submit" />
					</form>

				</div>

				<script>
					var image = '';
					function selectImage(file) {
						if (!file.files || !file.files[0]) {
							return;
						}
						var reader = new FileReader();
						reader.onload = function(evt) {
							document.getElementById('image').src = evt.target.result;
							image = evt.target.result;
						}
						reader.readAsDataURL(file.files[0]);
					}
					function uploadImage() {
						image = JSON.stringify(image)
						$.ajax({
							type : 'POST',
							url : '/blog/test',

							data : {
								base64 : image
							},
							async : false,
							dataType : 'json',
							success : function(data) {
								alert(data.success)
								if (data.success) {
									alert('上传成功');

								} else {
									alert('上传失败');
								}
							},
							error : function(err) {
								alert('网络故障');
							}

						});
					}
				</script>


				<!-- 基本信息 -->
				<div class="info-content" id="basic-info-text">
					<div class="form-box hide2">
						<form action="/employee/save_employee">
							<input type="hidden" class="value-field" name="avatar"
								disabled=true>
							<div class="form-group">
								<label for="name">姓名</label> <input type="text"
									class="form-control value-field" placeholder="姓名" name="name"
									required="required" disabled=true id="basic_name"
									value="${MyResumeUser.puname}"> <span
									id="basic_namespan" style="display: none; color: red;">姓名不能为空！</span>
							</div>

							<div class="form-group">
								<label for="name">性别</label> <input type="text"
									class="form-control value-field" placeholder="性别：男/女"
									required="required" value="${MyResumeUser.sex}" name="sex"
									id="basic_sex" disabled=true> <span id="sexspan"
									style="display: none; color: red;">性别输入格式有误，请输入：男/女！</span>
							</div>


							<div class="form-group">
								<label for="name">年龄</label> <input type="text"
									class="form-control value-field" placeholder="年龄"
									required="required" id="basic_age" value="${MyResumeUser.age}"
									disabled=true></input> <span id="agespan"
									style="display: none; color: red;">年龄输入格式有误，请重新输入！</span>
							</div>

							<div class="form-group">
								<label for="email">邮箱</label> <input type="text"
									class="form-control value-field" placeholder="邮箱"
									required="required" value="${MyResumeUser.email}"
									id="basic_email" disabled=true> <span id="emailspan"
									style="display: none; color: red;">邮箱输入格式有误，请重新输入！</span>
							</div>

							<div class="operation clearfix">
								<p class="btn _j_save _j_save_basic" id="basic_saveAjax">保存</p>
								<p class="btn cancel _j_cancel _j_cancel_basic"
									id="basic_saveAjaxEdit">编辑</p>
							</div>
						</form>
					</div>



				</div>

				<!-- 教育经历 -->
				<h2>
					教育经历 <a href="#" class="pull-right s-btn _j_new"
						data-dest="educate-info-text"></a>
				</h2>
				<div class="info-content" id="educate-info-text">
					<div class="form-box hide3">
						<form action="save_edu.action" data-tpl="edu">
							<input type="hidden" class="value-field" name="type" value="edu"
								protected=1> <input type="hidden" class="value-field"
								name="id" value="0">
							<div class="form-group">
								<label>学校名称</label> <input type="text"
									class="form-control value-field" placeholder="学校名称"
									required="required" value="${MyResumeUser.schName}"
									id="save_sch_name" disabled=true> <span
									id="schNamespan" style="display: none; color: red;">学校名称不能为空！</span>
							</div>
							<div class="form-group">
								<label>专业名称</label> <input type="text"
									class="form-control value-field" placeholder="专业名称"
									required="required" value="${MyResumeUser.majName}"
									id="save_maj_name" disabled=true> <span
									id="majNamespan" style="display: none; color: red;">专业名称不能为空！</span>
							</div>

							<div class="form-group">
								<label>学历名称</label> <input type="text"
									class="form-control value-field" placeholder="专业名称:大专/本科/硕士/博士"
									required="required" value="${MyResumeUser.edu}"
									id="save_edu_name" disabled=true> <span id="eduspan"
									style="display: none; color: red;">学历名称不能为空！</span>
							</div>



							<div class="operation clearfix">
								<p class="btn _j_save _j_save_basic" id="edu_saveAjax">保存</p>
								<p class="btn cancel _j_cancel _j_cancel_basic"
									id="edu_saveAjaxEdit">编辑</p>
							</div>
						</form>
					</div>

					<div class="info-view">
						<ul>
						</ul>
					</div>
				</div>

				<!-- 工作经历 -->
				<h2>
					工作经历 <a href="#" class="pull-right s-btn _j_new"
						data-dest="work-exp-info-text"></a>
				</h2>
				<div class="info-content" id="work-exp-info-text">
					<div class="form-box hide1">
						<form action="/employee/save_resume" data-tpl="job">
							<input type="hidden" class="value-field" name="type" value="job"
								protected=1> <input type="hidden" class="value-field"
								name="id" value="0">
							<div class="form-group">
								<label>公司名称</label> <input type="text"
									class="form-control value-field" placeholder="公司名称"
									required="required" value="${MyResumeUser.workComName}"
									id="save_com_name" disabled=true> <span
									id="workComNamespan" style="display: none; color: red;">公司名称不能为空！</span>
							</div>
							<div class="form-group">
								<label>职位名称</label> <input type="text"
									class="form-control value-field" placeholder="职位名称"
									required="required" value="${MyResumeUser.workJobName}"
									id="save_job_name" disabled=true> <span
									id="workJobNamespan" style="display: none; color: red;">职位名称不能为空！</span>
							</div>

							<div class="form-group">
								<label>工作内容</label>
								<div>
									<input class="form-control value-field" rows="4" name="content"
										required="required" value="${MyResumeUser.workContent}"
										id="save_job_cotent" disabled=true placeholder="工作内容"></input>
									<span id="workContentspan" style="display: none; color: red;">工作内容不能为空！</span>
								</div>
							</div>

							<div class="operation clearfix">
								<p class="btn _j_save _j_save_basic" id="work_exper_saveAjax">
									保存</p>
								<p class="btn cancel _j_cancel _j_cancel_basic"
									id="work_exper_saveAjaxEdit">编辑</p>


							</div>

						</form>
					</div>


					<div class="info-view">
						<ul>
						</ul>
					</div>
				</div>

				</form>
				<div>
					<a href="#top" target="_self" id="backtotop"
						style="position: fixed; right: 20px; bottom: 500px;"
						class="btn cancel _j_cancel _j_cancel_basic">返回顶部</a> <a
						href="#buttom" target="_self" id="backtotop"
						style="position: fixed; right: 20px; bottom: 450px;"
						class="btn cancel _j_cancel _j_cancel_basic">返回底部</a>
				</div>

			</div>




			<div class="info-view">
				<ul>
				</ul>
			</div>
		</div>

	</div>
	</div>

	</div>
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