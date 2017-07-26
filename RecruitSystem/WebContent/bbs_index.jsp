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
<link rel="stylesheet" type="text/css"
	href="dist/css/wangEditor.min.css">
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
					<div class="nav-search-box clearfix">
						<form method="get" action="/post/search">
							<div class="search-input">
								<input id="keyword" autocomplete="off" name="keyword"
									type="text" value="" placeholder='' /> <input name="type"
									type="hidden" value="-1" />
							</div>
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
				<div class="modal-body">
					<div class="city-option">
						<dl class="clearfix">
							<dt>热门城市：</dt>
							<dd>
								<a href="/sso/switchcity/110000">北京</a> <a
									href="/sso/switchcity/310000">上海</a> <a
									href="/sso/switchcity/330100">杭州</a> <a
									href="/sso/switchcity/440300">深圳</a> <a
									href="/sso/switchcity/510100">成都</a> <a
									href="/sso/switchcity/420100">武汉</a> <a
									href="/sso/switchcity/440100">广州</a> <a
									href="/sso/switchcity/350200">厦门</a>
							</dd>
						</dl>

						<dl class="clearfix">
							<dt>A：</dt>
							<dd>
								<a href="/sso/switchcity/152900">阿拉善盟</a> <a
									href="/sso/switchcity/210300">鞍山</a> <a
									href="/sso/switchcity/340800">安庆</a> <a
									href="/sso/switchcity/410500">安阳</a> <a
									href="/sso/switchcity/520400">安顺</a> <a
									href="/sso/switchcity/542500">阿里地区</a> <a
									href="/sso/switchcity/610900">安康</a> <a
									href="/sso/switchcity/652900">阿克苏地区</a> <a
									href="/sso/switchcity/654300">阿勒泰地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>B：</dt>
							<dd>
								<a href="/sso/switchcity/110000">北京</a> <a
									href="/sso/switchcity/130600">保定</a> <a
									href="/sso/switchcity/150200">包头</a> <a
									href="/sso/switchcity/150800">巴彦淖尔</a> <a
									href="/sso/switchcity/210500">本溪</a> <a
									href="/sso/switchcity/220600">白山</a> <a
									href="/sso/switchcity/220800">白城</a> <a
									href="/sso/switchcity/340300">蚌埠</a> <a
									href="/sso/switchcity/341600">亳州</a> <a
									href="/sso/switchcity/371600">滨州</a> <a
									href="/sso/switchcity/450500">北海</a> <a
									href="/sso/switchcity/451000">百色</a> <a
									href="/sso/switchcity/511900">巴中</a> <a
									href="/sso/switchcity/520500">毕节</a> <a
									href="/sso/switchcity/530500">保山</a> <a
									href="/sso/switchcity/610300">宝鸡</a> <a
									href="/sso/switchcity/620400">白银</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>C：</dt>
							<dd>
								<a href="/sso/switchcity/500000">重庆</a> <a
									href="/sso/switchcity/430100">长沙</a> <a
									href="/sso/switchcity/140400">长治</a> <a
									href="/sso/switchcity/220100">长春</a> <a
									href="/sso/switchcity/130800">承德</a> <a
									href="/sso/switchcity/130900">沧州</a> <a
									href="/sso/switchcity/150400">赤峰</a> <a
									href="/sso/switchcity/211300">朝阳</a> <a
									href="/sso/switchcity/320400">常州</a> <a
									href="/sso/switchcity/341100">滁州</a> <a
									href="/sso/switchcity/341700">池州</a> <a
									href="/sso/switchcity/430700">常德</a> <a
									href="/sso/switchcity/431000">郴州</a> <a
									href="/sso/switchcity/445100">潮州</a> <a
									href="/sso/switchcity/451400">崇左</a> <a
									href="/sso/switchcity/510100">成都</a> <a
									href="/sso/switchcity/542100">昌都地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>D：</dt>
							<dd>
								<a href="/sso/switchcity/140200">大同</a> <a
									href="/sso/switchcity/210200">大连</a> <a
									href="/sso/switchcity/210600">丹东</a> <a
									href="/sso/switchcity/230600">大庆</a> <a
									href="/sso/switchcity/232700">大兴安岭地区</a> <a
									href="/sso/switchcity/370500">东营</a> <a
									href="/sso/switchcity/371400">德州</a> <a
									href="/sso/switchcity/441900">东莞</a> <a
									href="/sso/switchcity/510600">德阳</a> <a
									href="/sso/switchcity/511700">达州</a> <a
									href="/sso/switchcity/621100">定西</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>E：</dt>
							<dd>
								<a href="/sso/switchcity/150600">鄂尔多斯</a> <a
									href="/sso/switchcity/420700">鄂州</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>F：</dt>
							<dd>
								<a href="/sso/switchcity/210400">抚顺</a> <a
									href="/sso/switchcity/210900">阜新</a> <a
									href="/sso/switchcity/341200">阜阳</a> <a
									href="/sso/switchcity/350100">福州</a> <a
									href="/sso/switchcity/361000">抚州</a> <a
									href="/sso/switchcity/440600">佛山</a> <a
									href="/sso/switchcity/450600">防城港</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>G：</dt>
							<dd>
								<a href="/sso/switchcity/360700">赣州</a> <a
									href="/sso/switchcity/440100">广州</a> <a
									href="/sso/switchcity/450300">桂林</a> <a
									href="/sso/switchcity/450800">贵港</a> <a
									href="/sso/switchcity/510800">广元</a> <a
									href="/sso/switchcity/511600">广安</a> <a
									href="/sso/switchcity/520100">贵阳</a> <a
									href="/sso/switchcity/640400">固原</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>H：</dt>
							<dd>
								<a href="/sso/switchcity/130400">邯郸</a> <a
									href="/sso/switchcity/131100">衡水</a> <a
									href="/sso/switchcity/150100">呼和浩特</a> <a
									href="/sso/switchcity/150700">呼伦贝尔</a> <a
									href="/sso/switchcity/211400">葫芦岛</a> <a
									href="/sso/switchcity/230100">哈尔滨</a> <a
									href="/sso/switchcity/230400">鹤岗</a> <a
									href="/sso/switchcity/231100">黑河</a> <a
									href="/sso/switchcity/320800">淮安</a> <a
									href="/sso/switchcity/330100">杭州</a> <a
									href="/sso/switchcity/330500">湖州</a> <a
									href="/sso/switchcity/340100">合肥</a> <a
									href="/sso/switchcity/340400">淮南</a> <a
									href="/sso/switchcity/340600">淮北</a> <a
									href="/sso/switchcity/341000">黄山</a> <a
									href="/sso/switchcity/371700">菏泽</a> <a
									href="/sso/switchcity/410600">鹤壁</a> <a
									href="/sso/switchcity/420200">黄石</a> <a
									href="/sso/switchcity/421100">黄冈</a> <a
									href="/sso/switchcity/430400">衡阳</a> <a
									href="/sso/switchcity/431200">怀化</a> <a
									href="/sso/switchcity/441300">惠州</a> <a
									href="/sso/switchcity/441600">河源</a> <a
									href="/sso/switchcity/451100">贺州</a> <a
									href="/sso/switchcity/451200">河池</a> <a
									href="/sso/switchcity/460100">海口</a> <a
									href="/sso/switchcity/610700">汉中</a> <a
									href="/sso/switchcity/630200">海东</a> <a
									href="/sso/switchcity/652200">哈密地区</a> <a
									href="/sso/switchcity/653200">和田地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>J：</dt>
							<dd>
								<a href="/sso/switchcity/140500">晋城</a> <a
									href="/sso/switchcity/140700">晋中</a> <a
									href="/sso/switchcity/210700">锦州</a> <a
									href="/sso/switchcity/220200">吉林</a> <a
									href="/sso/switchcity/230300">鸡西</a> <a
									href="/sso/switchcity/230800">佳木斯</a> <a
									href="/sso/switchcity/330400">嘉兴</a> <a
									href="/sso/switchcity/330700">金华</a> <a
									href="/sso/switchcity/360200">景德镇</a> <a
									href="/sso/switchcity/360400">九江</a> <a
									href="/sso/switchcity/360800">吉安</a> <a
									href="/sso/switchcity/370100">济南</a> <a
									href="/sso/switchcity/370800">济宁</a> <a
									href="/sso/switchcity/410800">焦作</a> <a
									href="/sso/switchcity/420800">荆门</a> <a
									href="/sso/switchcity/421000">荆州</a> <a
									href="/sso/switchcity/440700">江门</a> <a
									href="/sso/switchcity/445200">揭阳</a> <a
									href="/sso/switchcity/620200">嘉峪关</a> <a
									href="/sso/switchcity/620300">金昌</a> <a
									href="/sso/switchcity/620900">酒泉</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>K：</dt>
							<dd>
								<a href="/sso/switchcity/410200">开封</a> <a
									href="/sso/switchcity/530100">昆明</a> <a
									href="/sso/switchcity/650200">克拉玛依</a> <a
									href="/sso/switchcity/653100">喀什地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>L：</dt>
							<dd>
								<a href="/sso/switchcity/131000">廊坊</a> <a
									href="/sso/switchcity/141000">临汾</a> <a
									href="/sso/switchcity/141100">吕梁</a> <a
									href="/sso/switchcity/211000">辽阳</a> <a
									href="/sso/switchcity/220400">辽源</a> <a
									href="/sso/switchcity/320700">连云港</a> <a
									href="/sso/switchcity/331100">丽水</a> <a
									href="/sso/switchcity/341500">六安</a> <a
									href="/sso/switchcity/350800">龙岩</a> <a
									href="/sso/switchcity/371200">莱芜</a> <a
									href="/sso/switchcity/371300">临沂</a> <a
									href="/sso/switchcity/371500">聊城</a> <a
									href="/sso/switchcity/410300">洛阳</a> <a
									href="/sso/switchcity/411100">漯河</a> <a
									href="/sso/switchcity/431300">娄底</a> <a
									href="/sso/switchcity/450200">柳州</a> <a
									href="/sso/switchcity/451300">来宾</a> <a
									href="/sso/switchcity/510500">泸州</a> <a
									href="/sso/switchcity/511100">乐山</a> <a
									href="/sso/switchcity/520200">六盘水</a> <a
									href="/sso/switchcity/530700">丽江</a> <a
									href="/sso/switchcity/530900">临沧</a> <a
									href="/sso/switchcity/540100">拉萨</a> <a
									href="/sso/switchcity/542600">林芝地区</a> <a
									href="/sso/switchcity/620100">兰州</a> <a
									href="/sso/switchcity/621200">陇南</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>M：</dt>
							<dd>
								<a href="/sso/switchcity/231000">牡丹江</a> <a
									href="/sso/switchcity/340500">马鞍山</a> <a
									href="/sso/switchcity/440900">茂名</a> <a
									href="/sso/switchcity/441400">梅州</a> <a
									href="/sso/switchcity/510700">绵阳</a> <a
									href="/sso/switchcity/511400">眉山</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>N：</dt>
							<dd>
								<a href="/sso/switchcity/320100">南京</a> <a
									href="/sso/switchcity/320600">南通</a> <a
									href="/sso/switchcity/330200">宁波</a> <a
									href="/sso/switchcity/350700">南平</a> <a
									href="/sso/switchcity/350900">宁德</a> <a
									href="/sso/switchcity/360100">南昌</a> <a
									href="/sso/switchcity/411300">南阳</a> <a
									href="/sso/switchcity/450100">南宁</a> <a
									href="/sso/switchcity/511000">内江</a> <a
									href="/sso/switchcity/511300">南充</a> <a
									href="/sso/switchcity/542400">那曲地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>P：</dt>
							<dd>
								<a href="/sso/switchcity/211100">盘锦</a> <a
									href="/sso/switchcity/350300">莆田</a> <a
									href="/sso/switchcity/360300">萍乡</a> <a
									href="/sso/switchcity/410400">平顶山</a> <a
									href="/sso/switchcity/410900">濮阳</a> <a
									href="/sso/switchcity/510400">攀枝花</a> <a
									href="/sso/switchcity/530800">普洱</a> <a
									href="/sso/switchcity/620800">平凉</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>Q：</dt>
							<dd>
								<a href="/sso/switchcity/130300">秦皇岛</a> <a
									href="/sso/switchcity/230200">齐齐哈尔</a> <a
									href="/sso/switchcity/230900">七台河</a> <a
									href="/sso/switchcity/330800">衢州</a> <a
									href="/sso/switchcity/350500">泉州</a> <a
									href="/sso/switchcity/370200">青岛</a> <a
									href="/sso/switchcity/441800">清远</a> <a
									href="/sso/switchcity/450700">钦州</a> <a
									href="/sso/switchcity/530300">曲靖</a> <a
									href="/sso/switchcity/621000">庆阳</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>R：</dt>
							<dd>
								<a href="/sso/switchcity/371100">日照</a> <a
									href="/sso/switchcity/542300">日喀则地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>S：</dt>
							<dd>
								<a href="/sso/switchcity/130100">石家庄</a> <a
									href="/sso/switchcity/210100">沈阳</a> <a
									href="/sso/switchcity/140600">朔州</a> <a
									href="/sso/switchcity/220300">四平</a> <a
									href="/sso/switchcity/220700">松原</a> <a
									href="/sso/switchcity/230500">双鸭山</a> <a
									href="/sso/switchcity/231200">绥化</a> <a
									href="/sso/switchcity/310000">上海</a> <a
									href="/sso/switchcity/320500">苏州</a> <a
									href="/sso/switchcity/321300">宿迁</a> <a
									href="/sso/switchcity/330600">绍兴</a> <a
									href="/sso/switchcity/341300">宿州</a> <a
									href="/sso/switchcity/350200">厦门</a> <a
									href="/sso/switchcity/350400">三明</a> <a
									href="/sso/switchcity/361100">上饶</a> <a
									href="/sso/switchcity/411200">三门峡</a> <a
									href="/sso/switchcity/411400">商丘</a> <a
									href="/sso/switchcity/420300">十堰</a> <a
									href="/sso/switchcity/421300">随州</a> <a
									href="/sso/switchcity/430500">邵阳</a> <a
									href="/sso/switchcity/440200">韶关</a> <a
									href="/sso/switchcity/440300">深圳</a> <a
									href="/sso/switchcity/440500">汕头</a> <a
									href="/sso/switchcity/441500">汕尾</a> <a
									href="/sso/switchcity/460200">三亚</a> <a
									href="/sso/switchcity/460300">三沙</a> <a
									href="/sso/switchcity/510900">遂宁</a> <a
									href="/sso/switchcity/542200">山南地区</a> <a
									href="/sso/switchcity/611000">商洛</a> <a
									href="/sso/switchcity/640200">石嘴山</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>T：</dt>
							<dd>
								<a href="/sso/switchcity/120000">天津</a> <a
									href="/sso/switchcity/130200">唐山</a> <a
									href="/sso/switchcity/140100">太原</a> <a
									href="/sso/switchcity/150500">通辽</a> <a
									href="/sso/switchcity/211200">铁岭</a> <a
									href="/sso/switchcity/220500">通化</a> <a
									href="/sso/switchcity/321200">泰州</a> <a
									href="/sso/switchcity/331000">台州</a> <a
									href="/sso/switchcity/340700">铜陵</a> <a
									href="/sso/switchcity/370900">泰安</a> <a
									href="/sso/switchcity/520600">铜仁</a> <a
									href="/sso/switchcity/610200">铜川</a> <a
									href="/sso/switchcity/620500">天水</a> <a
									href="/sso/switchcity/652100">吐鲁番地区</a> <a
									href="/sso/switchcity/654200">塔城地区</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>W：</dt>
							<dd>
								<a href="/sso/switchcity/150300">乌海</a> <a
									href="/sso/switchcity/150900">乌兰察布</a> <a
									href="/sso/switchcity/320200">无锡</a> <a
									href="/sso/switchcity/330300">温州</a> <a
									href="/sso/switchcity/340200">芜湖</a> <a
									href="/sso/switchcity/370700">潍坊</a> <a
									href="/sso/switchcity/371000">威海</a> <a
									href="/sso/switchcity/420100">武汉</a> <a
									href="/sso/switchcity/450400">梧州</a> <a
									href="/sso/switchcity/610500">渭南</a> <a
									href="/sso/switchcity/620600">武威</a> <a
									href="/sso/switchcity/640300">吴忠</a> <a
									href="/sso/switchcity/650100">乌鲁木齐</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>X：</dt>
							<dd>
								<a href="/sso/switchcity/130500">邢台</a> <a
									href="/sso/switchcity/140900">忻州</a> <a
									href="/sso/switchcity/152200">兴安盟</a> <a
									href="/sso/switchcity/152500">锡林郭勒盟</a> <a
									href="/sso/switchcity/320300">徐州</a> <a
									href="/sso/switchcity/341800">宣城</a> <a
									href="/sso/switchcity/360500">新余</a> <a
									href="/sso/switchcity/410700">新乡</a> <a
									href="/sso/switchcity/411000">许昌</a> <a
									href="/sso/switchcity/411500">信阳</a> <a
									href="/sso/switchcity/420600">襄阳</a> <a
									href="/sso/switchcity/420900">孝感</a> <a
									href="/sso/switchcity/421200">咸宁</a> <a
									href="/sso/switchcity/430300">湘潭</a> <a
									href="/sso/switchcity/610100">西安</a> <a
									href="/sso/switchcity/610400">咸阳</a> <a
									href="/sso/switchcity/630100">西宁</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>Y：</dt>
							<dd>
								<a href="/sso/switchcity/140300">阳泉</a> <a
									href="/sso/switchcity/140800">运城</a> <a
									href="/sso/switchcity/210800">营口</a> <a
									href="/sso/switchcity/230700">伊春</a> <a
									href="/sso/switchcity/320900">盐城</a> <a
									href="/sso/switchcity/321000">扬州</a> <a
									href="/sso/switchcity/360600">鹰潭</a> <a
									href="/sso/switchcity/360900">宜春</a> <a
									href="/sso/switchcity/370600">烟台</a> <a
									href="/sso/switchcity/420500">宜昌</a> <a
									href="/sso/switchcity/430600">岳阳</a> <a
									href="/sso/switchcity/430900">益阳</a> <a
									href="/sso/switchcity/431100">永州</a> <a
									href="/sso/switchcity/441700">阳江</a> <a
									href="/sso/switchcity/445300">云浮</a> <a
									href="/sso/switchcity/450900">玉林</a> <a
									href="/sso/switchcity/511500">宜宾</a> <a
									href="/sso/switchcity/511800">雅安</a> <a
									href="/sso/switchcity/530400">玉溪</a> <a
									href="/sso/switchcity/610600">延安</a> <a
									href="/sso/switchcity/610800">榆林</a> <a
									href="/sso/switchcity/640100">银川</a>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>Z：</dt>
							<dd>
								<a href="/sso/switchcity/130700">张家口</a> <a
									href="/sso/switchcity/321100">镇江</a> <a
									href="/sso/switchcity/330900">舟山</a> <a
									href="/sso/switchcity/350600">漳州</a> <a
									href="/sso/switchcity/370300">淄博</a> <a
									href="/sso/switchcity/370400">枣庄</a> <a
									href="/sso/switchcity/410100">郑州</a> <a
									href="/sso/switchcity/411600">周口</a> <a
									href="/sso/switchcity/411700">驻马店</a> <a
									href="/sso/switchcity/430200">株洲</a> <a
									href="/sso/switchcity/430800">张家界</a> <a
									href="/sso/switchcity/440400">珠海</a> <a
									href="/sso/switchcity/440800">湛江</a> <a
									href="/sso/switchcity/441200">肇庆</a> <a
									href="/sso/switchcity/442000">中山</a> <a
									href="/sso/switchcity/510300">自贡</a> <a
									href="/sso/switchcity/512000">资阳</a> <a
									href="/sso/switchcity/520300">遵义</a> <a
									href="/sso/switchcity/530600">昭通</a> <a
									href="/sso/switchcity/620700">张掖</a> <a
									href="/sso/switchcity/640500">中卫</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 模态框（Modal） end-->
	<div class="banner-box banner-bg" id="option-keyword" value=""
		default-value="标题">
		<div class="inner banner-in">
			<div id="myCarousel" class="carousel slide bannerCarousel"
				data-interval="false">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item  active ">
						<div class="thumbnail-block clearfix">
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/12" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-7.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">如何用一段简单的代码讲述一个悲伤的故事？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/13" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-10.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">会计转行从事IT，如何在一年时间内全职学习？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/20" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-1.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">码农们最常说的谎言是什么？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/15" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-7.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">开发一个 Flappy Bird 需要多少行代码，多少时间？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
						</div>
					</div>
					<div class="item ">
						<div class="thumbnail-block clearfix">
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/19" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-1.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/14" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-8.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">IT 大牛是怎样炼成的？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/21" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-4.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">Java 的开发效率究竟比 C++ 高在哪里？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
							<!-- 显示四个 -->
							<div class="thumbnail-box">
								<a href="/post/post_detail/18" class="thumbnail"> <img
									src="http://www.myjob.com/static/img/default_img/article-4.jpg"
									alt="" class="article-bg">
									<div class="article-title-box">
										<div class="article-title">
											<p class="article-txt">Java新手如何学习Spring、Struts、Hibernate三大框架？</p>
										</div>
									</div>
								</a>
							</div>
							<!-- 显示四个 end -->
						</div>
					</div>
				</div>
				<!-- 轮播（Carousel）项目 end -->

				<a class="thumbnail-left" href="#myCarousel" data-slide="prev"></a>
				<a class="thumbnail-right" href="#myCarousel" data-slide="next"></a>
			</div>
		</div>
	</div>
	<div class="inner main-container clearfix">
		<!-- 左侧-->
		<div class="content pull-left">
			<h5 class="content-title">
				<div class="pull-left">
					<a href="/post/edit_post/1" class="ico-link question">提问题</a> <a
						href="/post/edit_post/0" class="ico-link article">写文章</a>
				</div>
				<a href="/post/draft_list" class="pull-right ico-link draft">草稿箱</a>
			</h5>
			<h5 class="content-title com-content-title">
				<div class="pull-left">
					<a href="/bbs/index/-1/0" class="content-tab  current "
						data-id="all-trends">全部动态</a> <a href="/bbs/index/-1/1/0"
						class="content-tab " data-id="tag-trends">标签动态</a>
				</div>
				<div class="pull-right trends-filter-box">
					<div class="deliver-filter-txt trends-filter-txt" id="post_type">所有内容</div>
					<ul class="deliver-filter-box trends-filter-option"
						id="post_type_list">
						<li class="current" value="-1"><a href="/bbs/index/-1/0/0">所有内容</a></li>
						<li value="1"><a href="/bbs/index/1/0/0">只看提问</a></li>
						<li value="0"><a href="/bbs/index/0/0/0">只看文章</a></li>
					</ul>
				</div>
			</h5>
			<div class="content-tab-box detail-box" data-id="tag-trends">
				<div class="trends-list">
					<div class="trends-item clearfix">
						<!-- 关注的标签 -->
						<p>请先到标签集添加您感兴趣的标签</p>
					</div>
				</div>
			</div>
			<div class="content-tab-box detail-box" data-id="all-trends"
				style="display: block; padding: 10px;">
				<div class="trends-list" id="post_list">
					<a class="hidden" more="1" type="-1" start="50" label="0" id="more">加载更多</a>
					<!-- 一次显示35个 -->
					<!-- 一项 -->
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>3</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/453">详解php 二分查找</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/49716" target="_blank" class="pull-left"
									style="margin-right: 15px;">祁娜</a> <span class="pull-left">比睿
									PHP</span> <span class="location pull-right">2017-07-14
									18:33:04</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>3</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/452">销售精英</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/57049" target="_blank" class="pull-left"
									style="margin-right: 15px;">乌迪尔</a> <span class="pull-left">郑州乌迪尔电子商务有限公司
									销售代表</span> <span class="location pull-right">2017-07-14
									16:13:42</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>2</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/450">为什么有了SAS，WEKA等功能强大的数据分析挖掘软件，还需要R,PYTHON？</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53575" target="_blank" class="pull-left"
									style="margin-right: 15px;">曹灵峰</a> <span class="pull-left">华强电子交易网络有限公司
									招聘专员</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>3</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/449">做数据分析里有哪些Python能做，而MATLAB不能做的？</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54126" target="_blank" class="pull-left"
									style="margin-right: 15px;">覃祖盛</a> <span class="pull-left">广州龙浩网络科技有限公司
									项目经理</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/445">Python数据分析之真实IP请求Pandas详解</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54128" target="_blank" class="pull-left"
									style="margin-right: 15px;">张国鹏</a> <span class="pull-left">腾讯科技（深圳）有限公司
									招聘经理</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/451">coursera上有哪些值得学习的Python,数据分析的课程？</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54215" target="_blank" class="pull-left"
									style="margin-right: 15px;">李玉水</a> <span class="pull-left">杭州唔爱科技有限公司
									hr</span> <span class="location pull-right">2017-07-14 14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/444">Python运用于数据分析的简单教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55397" target="_blank" class="pull-left"
									style="margin-right: 15px;">张影</a> <span class="pull-left">中软国际科技服务有限公司苏州分公司
									招聘助理</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>2</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/447">PythonVSR语言?数据分析与挖掘该选哪一个?</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53688" target="_blank" class="pull-left"
									style="margin-right: 15px;">项逸楼</a> <span class="pull-left">北京心向优势信息技术有限公司
									招聘经理</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/448">在MAC上搭建python数据分析开发环境</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/56993" target="_blank" class="pull-left"
									style="margin-right: 15px;">田海霞</a> <span class="pull-left">北京数码视讯科技股份有限公司
									hr</span> <span class="location pull-right">2017-07-14 14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/441">使用python实现数据分析</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53517" target="_blank" class="pull-left"
									style="margin-right: 15px;">李鑫</a> <span class="pull-left">深圳市年代文化传播有限公司
									运营部总监</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/443">利用python实现数据分析</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53709" target="_blank" class="pull-left"
									style="margin-right: 15px;">陈潇亮</a> <span class="pull-left">阿里巴巴（中国）有限公司
									阿里巴巴高德地图HR</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/440">用PHP使Web数据分析进入更高境界</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53510" target="_blank" class="pull-left"
									style="margin-right: 15px;">张梁平</a> <span class="pull-left">深圳市卓壮医疗管理有限公司
									CEO</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/442">使用Python进行大数据分析</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53542" target="_blank" class="pull-left"
									style="margin-right: 15px;">邢东伟</a> <span class="pull-left">深圳大数据计算机信息股份有限公司
									销售总监</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>1</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/446">Python数据分析之真实IP请求Pandas详解</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55645" target="_blank" class="pull-left"
									style="margin-right: 15px;">潘露</a> <span class="pull-left">网易（杭州）网络有限公司
									高级客户经理</span> <span class="location pull-right">2017-07-14
									14:43:19</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>1</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>23</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/439">销售精英！！！</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/57049" target="_blank" class="pull-left"
									style="margin-right: 15px;">乌迪尔</a> <span class="pull-left">郑州乌迪尔电子商务有限公司
									销售代表</span> <span class="location pull-right">2017-07-12
									16:28:38</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>11</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/432">PHP教程.PHP中的数据处理_PHP</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55620" target="_blank" class="pull-left"
									style="margin-right: 15px;">邱燚爽</a> <span class="pull-left">百度（中国）有限公司
									招聘HR</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>9</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/438">基于preg_match_all采集后数据处理的一点心得笔记(编码转换和正_PHP-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54101" target="_blank" class="pull-left"
									style="margin-right: 15px;">李春威</a> <span class="pull-left">广州创思信息技术有限公司
									HR</span> <span class="location pull-right">2017-07-12 11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/427">PHP几个数据处理函数</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53904" target="_blank" class="pull-left"
									style="margin-right: 15px;">李杨</a> <span class="pull-left">北京三快在线科技有限公司
									HR</span> <span class="location pull-right">2017-07-12 11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/435">php大数据量及海量数据处理算法总结_PHP</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55675" target="_blank" class="pull-left"
									style="margin-right: 15px;">余雨</a> <span class="pull-left">便利蜂商贸有限公司
									hr</span> <span class="location pull-right">2017-07-12 11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/436">第4章数据处理-php正则表达式-郑阿奇(续)_PHP-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55693" target="_blank" class="pull-left"
									style="margin-right: 15px;">冀飞飞</a> <span class="pull-left">复华控股有限公司
									数据总监</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/433">利用js调用后台php进行数据处理原码_PHP</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54279" target="_blank" class="pull-left"
									style="margin-right: 15px;">叶建凯</a> <span class="pull-left">北京瑞友科技股份有限公司
									招聘主管</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/430">利用js调用后台php进行数据处理原码-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54195" target="_blank" class="pull-left"
									style="margin-right: 15px;">张梁</a> <span class="pull-left">中软国际（中国）科技有限公司
									buhr</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/429">用文本作数据处理</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55457" target="_blank" class="pull-left"
									style="margin-right: 15px;">刘海宁</a> <span class="pull-left">广州领壹科技有限公司
									高级人力经理</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/431">用文本作数据处理_PHP</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54178" target="_blank" class="pull-left"
									style="margin-right: 15px;">诸葛衍昆</a> <span class="pull-left">杭州衣科信息技术有限公司
									杭州衣科HR</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/437">第4章数据处理-php字符串的处理-郑阿奇(续)_PHP-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53626" target="_blank" class="pull-left"
									style="margin-right: 15px;">ye</a> <span class="pull-left">中软国际科技服务有限公司
									招聘专员</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/428">memcached-php操作memcache数据处理-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53659" target="_blank" class="pull-left"
									style="margin-right: 15px;">朱宾</a> <span class="pull-left">小米科技有限责任公司
									服务器开发lead</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>8</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/434">Get或Post提交值的非法数据处理_PHP-php教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53656" target="_blank" class="pull-left"
									style="margin-right: 15px;">Eric</a> <span class="pull-left">上海华钦信息科技股份有限公司
									招聘主管</span> <span class="location pull-right">2017-07-12
									11:49:11</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/423">数据挖掘之定义-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53857" target="_blank" class="pull-left"
									style="margin-right: 15px;">Esther</a> <span class="pull-left">慧与（中国）有限公司上海分公司
									招聘专员</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/415">数据挖掘之朴素贝叶斯算法</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53711" target="_blank" class="pull-left"
									style="margin-right: 15px;">陈潇亮</a> <span class="pull-left">阿里巴巴（中国）有限公司
									阿里巴巴高德地图HR</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/422">数据挖掘之企业危机管理-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53898" target="_blank" class="pull-left"
									style="margin-right: 15px;">john</a> <span class="pull-left">上海星游文化传媒有限公司
									hr</span> <span class="location pull-right">2017-07-12 09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/420">数据挖掘之七种常用的方法-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55700" target="_blank" class="pull-left"
									style="margin-right: 15px;">白瑞</a> <span class="pull-left">呼和浩特市一街科技有限公司
									CEO</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/418">SQLSERVER数据挖掘算法介绍</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54035" target="_blank" class="pull-left"
									style="margin-right: 15px;">吴凯</a> <span class="pull-left">北京三快在线科技有限公司
									美团外卖Android负责人</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/421">数据挖掘之功能-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55737" target="_blank" class="pull-left"
									style="margin-right: 15px;">Nancy</a> <span class="pull-left">印孚瑟斯技术（中国）有限公司杭州分公司
									HR</span> <span class="location pull-right">2017-07-12 09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/416">《数据挖掘概念与技术》学习笔记第6章(6/10)挖掘大型数据库中的</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53952" target="_blank" class="pull-left"
									style="margin-right: 15px;">杜潇然</a> <span class="pull-left">北京美洽网络科技有限公司
									hr</span> <span class="location pull-right">2017-07-12 09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>24</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/424">数据挖掘决策树算法ID3通俗演绎</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53936" target="_blank" class="pull-left"
									style="margin-right: 15px;">吕杨</a> <span class="pull-left">成都科讯云网络科技有限公司
									CEO</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>47</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/417">ThinkinginBigData（11）大数据之有指导数据挖掘方法模型序（2</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53852" target="_blank" class="pull-left"
									style="margin-right: 15px;">Sunny</a> <span class="pull-left">同方鼎欣科技股份有限公司
									招聘助理</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/419">数据挖掘之应用-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55625" target="_blank" class="pull-left"
									style="margin-right: 15px;">胡玉婷</a> <span class="pull-left">中软国际（上海）科技服务有限公司
									招聘主管</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/425">【数据挖掘导论】绪论</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53748" target="_blank" class="pull-left"
									style="margin-right: 15px;">谭军红</a> <span class="pull-left">珠海市阿里修网络科技有限公司
									人事经理</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>56</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/426">【数据挖掘导论】数据类型-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53817" target="_blank" class="pull-left"
									style="margin-right: 15px;">Ann</a> <span class="pull-left">上海讯锡信息科技有限公司
									招聘经理</span> <span class="location pull-right">2017-07-12
									09:55:28</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>58</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/407">通过数据仓库少花钱多办事_MySQL-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55672" target="_blank" class="pull-left"
									style="margin-right: 15px;">刘女士</a> <span class="pull-left">四川宏海银企业管理有限公司
									招聘经理</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>10</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/408">数据仓库的概念_MySQL-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55792" target="_blank" class="pull-left"
									style="margin-right: 15px;">卢维成</a> <span class="pull-left">飞榴（上海）信息科技有限公司
									CTO</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>6</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/406">Kickfire:SQL芯片助推MySQL数据仓库_MySQL-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53772" target="_blank" class="pull-left"
									style="margin-right: 15px;">张安权</a> <span class="pull-left">重庆人人生活家科技发展有限公司
									人力资源总监</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/405">通过数据仓库来实现少花钱多办事的目的_MySQL-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53993" target="_blank" class="pull-left"
									style="margin-right: 15px;">李乃旭</a> <span class="pull-left">北京以拉谷网络科技有限公司
									Investor</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/413">OracleDatabase11g之数据仓库和商业智能</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55749" target="_blank" class="pull-left"
									style="margin-right: 15px;">丁嘉亮</a> <span class="pull-left">上海摩提工房食品有限公司
									信息部高级经理</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/404">开源MySQL高效数据仓库解决方案：Infobright详细介绍_MySQL</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53595" target="_blank" class="pull-left"
									style="margin-right: 15px;">任海洋</a> <span class="pull-left">深圳市租我家科技有限公司
									运营总监</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>5</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/410">开源MySQL数据仓库解决方案：Infobright</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/54233" target="_blank" class="pull-left"
									style="margin-right: 15px;">丁红会</a> <span class="pull-left">上海韬源信息技术有限公司
									招聘专员</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/414">Oracle内存数据仓库Exalytics-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55397" target="_blank" class="pull-left"
									style="margin-right: 15px;">张影</a> <span class="pull-left">中软国际科技服务有限公司苏州分公司
									招聘助理</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/409">[置顶]数据仓库----Hive进阶篇一-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/53794" target="_blank" class="pull-left"
									style="margin-right: 15px;">边一粟</a> <span class="pull-left">北京海誉动想科技股份有限公司
									hr</span> <span class="location pull-right">2017-07-06 18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>4</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/412">SQLServer2008数据仓库查询性能</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55661" target="_blank" class="pull-left"
									style="margin-right: 15px;">徐小姐</a> <span class="pull-left">普奥云信息科技（北京）有限公司
									hrd</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">
								<p>0</p>
								<p>喜欢</p>
							</div>
							<div class="view-box pull-left">
								<p>96</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/411">基于Hadoop数据仓库Hive1.2部署及使用-mysql教程</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/55717" target="_blank" class="pull-left"
									style="margin-right: 15px;">shirley</a> <span class="pull-left">北京商友软件有限公司
									招聘主管</span> <span class="location pull-right">2017-07-06
									18:27:57</span>
							</div>
						</div>
					</div>
					<!-- 一项 end -->
					<!-- 一次显示35个  end -->
				</div>
				<div class="hidden" id="more_tpl">
					<div class="trends-item clearfix">
						<div class="view-item clearfix pull-left">
							<div class="view-box pull-left">{reply_like}</div>
							<div class="view-box pull-left">
								<p>{read}</p>
								<p>阅读</p>
							</div>
						</div>
						<div class="trends-text pull-left">
							<p>
								<a href="/post/post_detail/{id}">{title}</a>
							</p>
							<div class="trends-text-b clearfix">
								<a href="/post/my_post/{user.uid}" target="_blank"
									class="pull-left" style="margin-right: 15px;">{user.bbs_nickname}</a>
								<span class="pull-left">{user.bbs_company} {user.bbs_job}</span>
								<span class="location pull-right">{created_at}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 左侧 end -->
		<!-- 右侧 -->
		<style>
span.value-field {
	margin: 0 !important
}
</style>
		<script src='js/FileUploader.js'></script>
		<script src='js/uploadimg.js'></script>
		<div class="content-s pull-right">
			<div class="personnel-box">
				<p>技术牛社区</p>
			</div>

			<div class="personnel-box-b">
				<div
					style="border-bottom: 1px dashed #e7e7e7; padding-bottom: 10px;">
					<a href="/post/my_attention/1" class="ico-favorite">收藏的文章</a> <a
						href="/post/my_attention/4" class="ico-like">关注的问题</a>
				</div>
				<a href="/label/index" class="ico-tag">标签集</a>
			</div>
		</div>

		<!-- 模态框（Modal） 编辑个人资料 -->
		<div class="modal fade" id="infoModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">编辑个人资料</h4>
					</div>
					<div class="modal-body">
						<div class="sso-form community-first"
							style="display: block; box-shadow: none; padding: 0; width: 350px;">
							<form style="width: 350px">
								<div class="head-img-box" style="background: none; padding: 0">
									<div class="head-img">
										<img id="bbs_avatar"
											src="http://game.myjob.com/static/img/avatar/f-1.png">
										<a href="#" class="head-img-btn _j_upload_img"
											style="position: absolute">点击更换头像</a> <input type="hidden"
											class="value-field" name="bbs_avatar" value="">
									</div>
								</div>
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-name"></i> <input name="bbs_nickname"
											type="text" class="form-control" value="" placeholder="昵称">
									</div>
								</div>
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-comp"></i> <input name="bbs_company"
											type="text" class="form-control" value="" placeholder="公司">
									</div>
								</div>
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-job"></i> <input name="bbs_job"
											type="text" class="form-control" value="" placeholder="职位">
									</div>
								</div>
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-status"></i> <select
											name="bbs_status_t" class="select-normal">
											<option value=""></option>
											<option value="5">在职</option>
											<option value="1">离职</option>
										</select>
									</div>
								</div>
								<button class="btn sso-btn" id="saveBbsUserBtn">保存</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 模态框（Modal） end-->

		<!-- 模态框（Modal） 邀请好友-->
		<div class="modal fade" id="inviteModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">邀请好友</h4>
					</div>
					<div class="modal-body">
						<div class="sso-form community-first"
							style="display: block; box-shadow: none; padding: 0; width: 350px;">
							<p style="margin-top: 10px;">复制地址及邀请码，邀请更多技术大神~</p>
							<form style="width: 350px">
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-link"></i> <input name="bbs_url"
											type="text" class="form-control" placeholder="地址"
											readonly="readonly">
									</div>
								</div>
								<div class="form-group clearfix">
									<div class="input-box">
										<i class="input-ico ico-code"></i> <input name="code"
											type="text" class="form-control" placeholder="邀请码"
											readonly="readonly">
									</div>
								</div>
								<button class="btn sso-btn" id="copy-btn">复制地址及邀请码</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 模态框（Modal） end-->
		<!-- 模态框（提示） start-->
		<div class="modal fade" id="tipModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">提示</h4>
					</div>
					<div class="modal-body">
						<p id="error-tip"></p>
					</div>
				</div>
			</div>
		</div>
		<!-- 模态框（提示） end-->

		<script type="text/javascript">
			var uploader;
			var fileId;
			initUploader($('.head-img'), uploader, fileId, function(payload) {
				$('.head-img img').attr('src', payload.url);
				$('input[name=bbs_avatar]').val(payload.url);
			});
			$('._j_upload_img').show();
			$('._j_upload_img').css('position', 'absolute');

			$('#copy-btn')
					.click(
							function() {
								var bbs_url = $('input[name=bbs_url]').val();
								var bbs_code = $('input[name=code]').val();
								var textToClipboard = '地址：' + bbs_url
										+ '； 邀请码：' + bbs_code;
								var success = true;
								if (window.clipboardData) {
									window.clipboardData.setData("Text",
											textToClipboard);
								} else {
									var forExecElement = CreateElementForExecCommand(textToClipboard);
									SelectContent(forExecElement);
									var supported = true;
									try {
										if (window.netscape
												&& netscape.security) {
											netscape.security.PrivilegeManager
													.enablePrivilege("UniversalXPConnect");
										}
										success = document.execCommand("copy",
												false, null);
									} catch (e) {
										success = false;
									}
									document.body.removeChild(forExecElement);
								}
							});

			function CreateElementForExecCommand(textToClipboard) {
				var forExecElement = document.createElement("div");
				// place outside the visible area
				forExecElement.style.position = "absolute";
				forExecElement.style.left = "-10000px";
				forExecElement.style.top = "-10000px";
				// write the necessary text into the element and append to the document
				forExecElement.textContent = textToClipboard;
				document.body.appendChild(forExecElement);
				// the contentEditable mode is necessary for the  execCommand method in Firefox
				forExecElement.contentEditable = true;
				return forExecElement;
			}

			function SelectContent(element) {
				// first create a range
				var rangeToSelect = document.createRange();
				rangeToSelect.selectNodeContents(element);

				// select the contents
				var selection = window.getSelection();
				selection.removeAllRanges();
				selection.addRange(rangeToSelect);
			}
		</script>
		<!-- 右侧 end -->
	</div>
	<script type="text/javascript">
		$(".tag-box .label-tag").click(function(event) {
			$(this).addClass('current').siblings().removeClass('current');
		});
		$('#post_type').text($('#post_type_list li.current').text());

		//加载更多
		$(document)
				.ready(
						function() {
							$(window)
									.scroll(
											function() {
												if ($(document).scrollTop() >= $(
														document).height()
														- $(window).height()) {
													var hasmore = $('#more')
															.attr('more');
													var type = $('#more').attr(
															'type');
													var start = $('#more')
															.attr('start');
													var label = $('#more')
															.attr('label');
													if (hasmore) {
														$
																.ajax({
																	url : '/post/get_post',
																	type : 'GET',
																	dataType : 'json',
																	data : {
																		'type' : type,
																		'start' : start,
																		'label' : label,
																	},
																	success : function(
																			res) {
																		$(
																				'#more')
																				.attr(
																						'more',
																						res.data.hasmore);
																		$(
																				'#more')
																				.attr(
																						'start',
																						res.data.start);
																		if (JSON
																				.stringify(res.data.list) != '{}') {
																			var more_tpl = $(
																					'#more_tpl')
																					.html();
																			var more_post = tplReplace(
																					more_tpl,
																					res.data.list);
																			$(
																					'#post_list')
																					.append(
																							more_post);
																		}
																	}
																});
													}
												}
											})
						})

		function tplReplace(html, data) {
			var new_html = '';
			var html_tpl = html;
			var reply_like = '';
			for (var i = 0; i < data.length; i++) {
				if (data[i].type == 1) {
					reply_like = '<p>' + data[i].reply + '</p><p>回答</p>';
				} else {
					reply_like = '<p>' + data[i].like + '</p><p>喜欢</p>';
				}
				if (data[i].anonymous == 1) {
					data[i].user.bbs_nickname = '匿名';
					data[i].user.bbs_company = '';
					data[i].user.bbs_job = '';
				}
				new_html = new_html
						+ html_tpl.replace('{id}', data[i].id).replace(
								'{read}', data[i].read).replace('{reply_like}',
								reply_like).replace('{title}', data[i].title)
								.replace('{user.bbs_nickname}',
										data[i].user.bbs_nickname).replace(
										'{user.uid}', data[i].user.uid)
								.replace('{user.bbs_company}',
										data[i].user.bbs_company).replace(
										'{user.bbs_job}', data[i].user.bbs_job)
								.replace('{created_at}', data[i].created_at);
				html_tpl = html;
			}
			return new_html;
		}
	</script>

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