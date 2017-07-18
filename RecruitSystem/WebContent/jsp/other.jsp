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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="../css/wangEditor.min.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/myjob.js"></script>
<script src="../js/doT.js"></script>
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

					<!-- 未登录显示 -->
					<div class="pull-right ">
						<a href="/index/register" class="top-btn">注册</a> <a
							href="/index/login" class="top-btn">登录</a>
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
						<li><a href="/">首页</a></li>
						<li><a href="/job/technology">技术职位</a></li>
						<li><a class="current" href="/job/other">职业中心</a></li>
						<li><a href="/bbs/bbs_index">技术牛社区</a></li>
						<li><a href="/index/home_office">技术宅</a></li>
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
	<!--  职位 -->
	<div class="inner clearfix main-container">
		<!-- 左侧菜单 -->
		<div id="sidebar">
			<div class="mainNavs">

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							产品 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=产品经理">产品经理</a> <a
							href="/job/search?is_tech=1&keyword=移动产品经理">移动产品经理</a> <a
							href="/job/search?is_tech=1&keyword=产品总监">产品总监</a> <a
							href="/job/search?is_tech=1&keyword=游戏制作人">游戏制作人</a> <a
							href="/job/search?is_tech=1&keyword=产品VP">产品VP</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 产品经理 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=产品经理">产品经理</a> <a
									href="/job/search?is_tech=1&keyword=网页产品经理">网页产品经理</a> <a
									href="/job/search?is_tech=1&keyword=移动产品经理">移动产品经理</a> <a
									href="/job/search?is_tech=1&keyword=产品助理">产品助理</a> <a
									href="/job/search?is_tech=1&keyword=数据产品经理">数据产品经理</a> <a
									href="/job/search?is_tech=1&keyword=电商产品经理">电商产品经理</a> <a
									href="/job/search?is_tech=1&keyword=游戏策划">游戏策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 产品设计师 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=网页产品设计师">网页产品设计师</a> <a
									href="/job/search?is_tech=1&keyword=无线产品设计师">无线产品设计师</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高端产品职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=产品部经理">产品部经理</a> <a
									href="/job/search?is_tech=1&keyword=产品总监">产品总监</a> <a
									href="/job/search?is_tech=1&keyword=游戏制作人">游戏制作人</a> <a
									href="/job/search?is_tech=1&keyword=产品VP">产品VP</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他产品职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他产品职位">其他产品职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							设计 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=视觉设计师">视觉设计师</a> <a
							href="/job/search?is_tech=1&keyword=网页设计师">网页设计师</a> <a
							href="/job/search?is_tech=1&keyword=原画师">原画师</a> <a
							href="/job/search?is_tech=1&keyword=游戏特效">游戏特效</a> <a
							href="/job/search?is_tech=1&keyword=包装设计">包装设计</a> <a
							href="/job/search?is_tech=1&keyword=交互设计师">交互设计师</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 视觉设计 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=视觉设计师">视觉设计师</a> <a
									href="/job/search?is_tech=1&keyword=网页设计师">网页设计师</a> <a
									href="/job/search?is_tech=1&keyword=Flash设计师">Flash设计师</a> <a
									href="/job/search?is_tech=1&keyword=APP设计师">APP设计师</a> <a
									href="/job/search?is_tech=1&keyword=UI设计师">UI设计师</a> <a
									href="/job/search?is_tech=1&keyword=平面设计师">平面设计师</a> <a
									href="/job/search?is_tech=1&keyword=美术设计师（2D/3D）">美术设计师（2D/3D）</a>
								<a href="/job/search?is_tech=1&keyword=广告设计师">广告设计师</a> <a
									href="/job/search?is_tech=1&keyword=多媒体设计师">多媒体设计师</a> <a
									href="/job/search?is_tech=1&keyword=原画师">原画师</a> <a
									href="/job/search?is_tech=1&keyword=游戏特效">游戏特效</a> <a
									href="/job/search?is_tech=1&keyword=游戏界面设计师">游戏界面设计师</a> <a
									href="/job/search?is_tech=1&keyword=游戏场景">游戏场景</a> <a
									href="/job/search?is_tech=1&keyword=游戏角色">游戏角色</a> <a
									href="/job/search?is_tech=1&keyword=游戏动作">游戏动作</a> <a
									href="/job/search?is_tech=1&keyword=三维/CAD/制图">三维/CAD/制图</a> <a
									href="/job/search?is_tech=1&keyword=美工">美工</a> <a
									href="/job/search?is_tech=1&keyword=包装设计">包装设计</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 交互设计 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=交互设计师">交互设计师</a> <a
									href="/job/search?is_tech=1&keyword=无线交互设计师">无线交互设计师</a> <a
									href="/job/search?is_tech=1&keyword=网页交互设计师">网页交互设计师</a> <a
									href="/job/search?is_tech=1&keyword=硬件交互设计师">硬件交互设计师</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 用户研究 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=数据分析师">数据分析师</a> <a
									href="/job/search?is_tech=1&keyword=用户研究员">用户研究员</a> <a
									href="/job/search?is_tech=1&keyword=游戏数值策划">游戏数值策划</a> <a
									href="/job/search?is_tech=1&keyword=UX设计师">UX设计师</a> <a
									href="/job/search?is_tech=1&keyword=用户研究经理">用户研究经理</a> <a
									href="/job/search?is_tech=1&keyword=用户研究总监">用户研究总监</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高端设计职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=设计经理/主管">设计经理/主管</a> <a
									href="/job/search?is_tech=1&keyword=设计总监">设计总监</a> <a
									href="/job/search?is_tech=1&keyword=视觉设计经理">视觉设计经理</a> <a
									href="/job/search?is_tech=1&keyword=视觉设计总监">视觉设计总监</a> <a
									href="/job/search?is_tech=1&keyword=交互设计经理/主管">交互设计经理/主管</a> <a
									href="/job/search?is_tech=1&keyword=交互设计总监">交互设计总监</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 非视觉设计 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=服装设计">服装设计</a> <a
									href="/job/search?is_tech=1&keyword=工业设计">工业设计</a> <a
									href="/job/search?is_tech=1&keyword=橱柜设计">橱柜设计</a> <a
									href="/job/search?is_tech=1&keyword=家具设计">家具设计</a> <a
									href="/job/search?is_tech=1&keyword=家居设计">家居设计</a> <a
									href="/job/search?is_tech=1&keyword=珠宝设计">珠宝设计</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他设计职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他设计职位">其他设计职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							运营 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=用户运营">用户运营</a> <a
							href="/job/search?is_tech=1&keyword=产品运营">产品运营</a> <a
							href="/job/search?is_tech=1&keyword=数据运营">数据运营</a> <a
							href="/job/search?is_tech=1&keyword=内容运营">内容运营</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 运营 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=用户运营">用户运营</a> <a
									href="/job/search?is_tech=1&keyword=产品运营">产品运营</a> <a
									href="/job/search?is_tech=1&keyword=数据运营">数据运营</a> <a
									href="/job/search?is_tech=1&keyword=内容运营">内容运营</a> <a
									href="/job/search?is_tech=1&keyword=活动运营">活动运营</a> <a
									href="/job/search?is_tech=1&keyword=商家运营">商家运营</a> <a
									href="/job/search?is_tech=1&keyword=品类运营">品类运营</a> <a
									href="/job/search?is_tech=1&keyword=游戏运营">游戏运营</a> <a
									href="/job/search?is_tech=1&keyword=网络推广">网络推广</a> <a
									href="/job/search?is_tech=1&keyword=网站运营">网站运营</a> <a
									href="/job/search?is_tech=1&keyword=新媒体运营">新媒体运营</a> <a
									href="/job/search?is_tech=1&keyword=社区运营">社区运营</a> <a
									href="/job/search?is_tech=1&keyword=微信运营">微信运营</a> <a
									href="/job/search?is_tech=1&keyword=微博运营">微博运营</a> <a
									href="/job/search?is_tech=1&keyword=策略运营">策略运营</a> <a
									href="/job/search?is_tech=1&keyword=线下拓展运营">线下拓展运营</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 编辑 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=副主编">副主编</a> <a
									href="/job/search?is_tech=1&keyword=内容编辑">内容编辑</a> <a
									href="/job/search?is_tech=1&keyword=文案策划">文案策划</a> <a
									href="/job/search?is_tech=1&keyword=网站编辑">网站编辑</a> <a
									href="/job/search?is_tech=1&keyword=记者">记者</a> <a
									href="/job/search?is_tech=1&keyword=采编">采编</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 客服 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=售前咨询">售前咨询</a> <a
									href="/job/search?is_tech=1&keyword=售后客服">售后客服</a> <a
									href="/job/search?is_tech=1&keyword=淘宝客服">淘宝客服</a> <a
									href="/job/search?is_tech=1&keyword=客服经理">客服经理</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高端运营职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=主编">主编</a> <a
									href="/job/search?is_tech=1&keyword=运营总监">运营总监</a> <a
									href="/job/search?is_tech=1&keyword=COO">COO</a> <a
									href="/job/search?is_tech=1&keyword=客服总监">客服总监</a> <a
									href="/job/search?is_tech=1&keyword=运营经理/主管">运营经理/主管</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他运营职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他运营职位">其他运营职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							市场 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=市场营销">市场营销</a> <a
							href="/job/search?is_tech=1&keyword=市场策划">市场策划</a> <a
							href="/job/search?is_tech=1&keyword=SEO">SEO</a> <a
							href="/job/search?is_tech=1&keyword=SEM">SEM</a> <a
							href="/job/search?is_tech=1&keyword=商务渠道">商务渠道</a> <a
							href="/job/search?is_tech=1&keyword=商业数据分析">商业数据分析</a> <a
							href="/job/search?is_tech=1&keyword=市场总监">市场总监</a> <a
							href="/job/search?is_tech=1&keyword=CMO">CMO</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 市场/营销 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=市场营销">市场营销</a> <a
									href="/job/search?is_tech=1&keyword=市场策划">市场策划</a> <a
									href="/job/search?is_tech=1&keyword=市场顾问">市场顾问</a> <a
									href="/job/search?is_tech=1&keyword=市场推广">市场推广</a> <a
									href="/job/search?is_tech=1&keyword=SEO">SEO</a> <a
									href="/job/search?is_tech=1&keyword=SEM">SEM</a> <a
									href="/job/search?is_tech=1&keyword=商务渠道">商务渠道</a> <a
									href="/job/search?is_tech=1&keyword=商业数据分析">商业数据分析</a> <a
									href="/job/search?is_tech=1&keyword=活动策划">活动策划</a> <a
									href="/job/search?is_tech=1&keyword=网络营销">网络营销</a> <a
									href="/job/search?is_tech=1&keyword=海外市场">海外市场</a> <a
									href="/job/search?is_tech=1&keyword=政府关系">政府关系</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 公关媒介 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=媒介经理">媒介经理</a> <a
									href="/job/search?is_tech=1&keyword=广告协调">广告协调</a> <a
									href="/job/search?is_tech=1&keyword=品牌公关">品牌公关</a> <a
									href="/job/search?is_tech=1&keyword=媒介专员">媒介专员</a> <a
									href="/job/search?is_tech=1&keyword=活动策划执行">活动策划执行</a> <a
									href="/job/search?is_tech=1&keyword=媒介策划">媒介策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 会务会展 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=会议活动销售">会议活动销售</a> <a
									href="/job/search?is_tech=1&keyword=会议活动策划">会议活动策划</a> <a
									href="/job/search?is_tech=1&keyword=会议活动执行">会议活动执行</a> <a
									href="/job/search?is_tech=1&keyword=会展活动销售">会展活动销售</a> <a
									href="/job/search?is_tech=1&keyword=会展活动策划">会展活动策划</a> <a
									href="/job/search?is_tech=1&keyword=会展活动执行">会展活动执行</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 广告 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=广告创意">广告创意</a> <a
									href="/job/search?is_tech=1&keyword=美术指导">美术指导</a> <a
									href="/job/search?is_tech=1&keyword=广告设计师">广告设计师</a> <a
									href="/job/search?is_tech=1&keyword=策划经理">策划经理</a> <a
									href="/job/search?is_tech=1&keyword=文案">文案</a> <a
									href="/job/search?is_tech=1&keyword=资深文案">资深文案</a> <a
									href="/job/search?is_tech=1&keyword=广告制作">广告制作</a> <a
									href="/job/search?is_tech=1&keyword=媒介投放">媒介投放</a> <a
									href="/job/search?is_tech=1&keyword=媒介合作">媒介合作</a> <a
									href="/job/search?is_tech=1&keyword=媒介顾问">媒介顾问</a> <a
									href="/job/search?is_tech=1&keyword=广告审核">广告审核</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高端市场职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=市场总监">市场总监</a> <a
									href="/job/search?is_tech=1&keyword=CMO">CMO</a> <a
									href="/job/search?is_tech=1&keyword=公关总监">公关总监</a> <a
									href="/job/search?is_tech=1&keyword=媒介总监">媒介总监</a> <a
									href="/job/search?is_tech=1&keyword=创意总监">创意总监</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他市场职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他市场职位">其他市场职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							职能/高级管理 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=人力资源">人力资源</a> <a
							href="/job/search?is_tech=1&keyword=HRBP">HRBP</a> <a
							href="/job/search?is_tech=1&keyword=前台">前台</a> <a
							href="/job/search?is_tech=1&keyword=行政">行政</a> <a
							href="/job/search?is_tech=1&keyword=财务">财务</a> <a
							href="/job/search?is_tech=1&keyword=法务">法务</a> <a
							href="/job/search?is_tech=1&keyword=律师">律师</a> <a
							href="/job/search?is_tech=1&keyword=专利">专利</a> <a
							href="/job/search?is_tech=1&keyword=CFO">CFO</a> <a
							href="/job/search?is_tech=1&keyword=财务VP">财务VP</a> <a
							href="/job/search?is_tech=1&keyword=人力资源VP">人力资源VP</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 人力资源 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=人力资源">人力资源</a> <a
									href="/job/search?is_tech=1&keyword=招聘">招聘</a> <a
									href="/job/search?is_tech=1&keyword=HRBP">HRBP</a> <a
									href="/job/search?is_tech=1&keyword=人事/HR">人事/HR</a> <a
									href="/job/search?is_tech=1&keyword=培训经理">培训经理</a> <a
									href="/job/search?is_tech=1&keyword=薪资福利经理">薪资福利经理</a> <a
									href="/job/search?is_tech=1&keyword=绩效考核经理">绩效考核经理</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 行政 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=助理">助理</a> <a
									href="/job/search?is_tech=1&keyword=前台">前台</a> <a
									href="/job/search?is_tech=1&keyword=行政">行政</a> <a
									href="/job/search?is_tech=1&keyword=总助">总助</a> <a
									href="/job/search?is_tech=1&keyword=文秘">文秘</a> <a
									href="/job/search?is_tech=1&keyword=后勤">后勤</a> <a
									href="/job/search?is_tech=1&keyword=商务司机">商务司机</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 财务 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=会计">会计</a> <a
									href="/job/search?is_tech=1&keyword=出纳">出纳</a> <a
									href="/job/search?is_tech=1&keyword=财务">财务</a> <a
									href="/job/search?is_tech=1&keyword=结算">结算</a> <a
									href="/job/search?is_tech=1&keyword=税务">税务</a> <a
									href="/job/search?is_tech=1&keyword=审计">审计</a> <a
									href="/job/search?is_tech=1&keyword=风控">风控</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 法务 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=法务">法务</a> <a
									href="/job/search?is_tech=1&keyword=律师">律师</a> <a
									href="/job/search?is_tech=1&keyword=专利">专利</a> <a
									href="/job/search?is_tech=1&keyword=法律顾问">法律顾问</a> <a
									href="/job/search?is_tech=1&keyword=法务专员">法务专员</a> <a
									href="/job/search?is_tech=1&keyword=法务经理/主管">法务经理/主管</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高级管理职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=行政总监/经理">行政总监/经理</a> <a
									href="/job/search?is_tech=1&keyword=财务总监/经理">财务总监/经理</a> <a
									href="/job/search?is_tech=1&keyword=HRD/HRM">HRD/HRM</a> <a
									href="/job/search?is_tech=1&keyword=CFO">CFO</a> <a
									href="/job/search?is_tech=1&keyword=财务VP">财务VP</a> <a
									href="/job/search?is_tech=1&keyword=人力资源VP">人力资源VP</a> <a
									href="/job/search?is_tech=1&keyword=CEO/总裁/总经理">CEO/总裁/总经理</a>
								<a href="/job/search?is_tech=1&keyword=副总裁/副总经理">副总裁/副总经理</a> <a
									href="/job/search?is_tech=1&keyword=事业部负责人">事业部负责人</a> <a
									href="/job/search?is_tech=1&keyword=区域/分公司/代表处负责人">区域/分公司/代表处负责人</a>
								<a href="/job/search?is_tech=1&keyword=总裁/总经理/董事长助理">总裁/总经理/董事长助理</a>
								<a href="/job/search?is_tech=1&keyword=合伙人">合伙人</a> <a
									href="/job/search?is_tech=1&keyword=创始人">创始人</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他职能职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他职能职位">其他职能职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							销售 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=销售专员">销售专员</a> <a
							href="/job/search?is_tech=1&keyword=销售经理">销售经理</a> <a
							href="/job/search?is_tech=1&keyword=客户代表">客户代表</a> <a
							href="/job/search?is_tech=1&keyword=销售总监">销售总监</a> <a
							href="/job/search?is_tech=1&keyword=销售VP">销售VP</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 销售 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=销售专员">销售专员</a> <a
									href="/job/search?is_tech=1&keyword=销售经理">销售经理</a> <a
									href="/job/search?is_tech=1&keyword=客户代表">客户代表</a> <a
									href="/job/search?is_tech=1&keyword=大客户代表">大客户代表</a> <a
									href="/job/search?is_tech=1&keyword=BD经理">BD经理</a> <a
									href="/job/search?is_tech=1&keyword=商务渠道">商务渠道</a> <a
									href="/job/search?is_tech=1&keyword=渠道销售">渠道销售</a> <a
									href="/job/search?is_tech=1&keyword=代理商销售">代理商销售</a> <a
									href="/job/search?is_tech=1&keyword=销售助理">销售助理</a> <a
									href="/job/search?is_tech=1&keyword=电话销售">电话销售</a> <a
									href="/job/search?is_tech=1&keyword=销售顾问">销售顾问</a> <a
									href="/job/search?is_tech=1&keyword=商品经理">商品经理</a> <a
									href="/job/search?is_tech=1&keyword=广告销售">广告销售</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 高端销售 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=销售总监">销售总监</a> <a
									href="/job/search?is_tech=1&keyword=商务总监">商务总监</a> <a
									href="/job/search?is_tech=1&keyword=区域总监">区域总监</a> <a
									href="/job/search?is_tech=1&keyword=城市经理">城市经理</a> <a
									href="/job/search?is_tech=1&keyword=销售VP">销售VP</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他销售职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他销售职位">其他销售职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							传媒 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=记者">记者</a> <a
							href="/job/search?is_tech=1&keyword=编辑">编辑</a> <a
							href="/job/search?is_tech=1&keyword=广告创意">广告创意</a> <a
							href="/job/search?is_tech=1&keyword=美术指导">美术指导</a> <a
							href="/job/search?is_tech=1&keyword=广告设计师">广告设计师</a> <a
							href="/job/search?is_tech=1&keyword=策划经理">策划经理</a> <a
							href="/job/search?is_tech=1&keyword=文案">文案</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 采编/写作/出版 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=记者">记者</a> <a
									href="/job/search?is_tech=1&keyword=编辑">编辑</a> <a
									href="/job/search?is_tech=1&keyword=采编">采编</a> <a
									href="/job/search?is_tech=1&keyword=撰稿人">撰稿人</a> <a
									href="/job/search?is_tech=1&keyword=出版发行">出版发行</a> <a
									href="/job/search?is_tech=1&keyword=校对录入">校对录入</a> <a
									href="/job/search?is_tech=1&keyword=总编">总编</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 公关媒介 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=媒介经理">媒介经理</a> <a
									href="/job/search?is_tech=1&keyword=媒介专员">媒介专员</a> <a
									href="/job/search?is_tech=1&keyword=广告协调">广告协调</a> <a
									href="/job/search?is_tech=1&keyword=品牌公关">品牌公关</a> <a
									href="/job/search?is_tech=1&keyword=活动策划执行">活动策划执行</a> <a
									href="/job/search?is_tech=1&keyword=媒介策划">媒介策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 会务会展 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=会议活动销售">会议活动销售</a> <a
									href="/job/search?is_tech=1&keyword=会议活动策划">会议活动策划</a> <a
									href="/job/search?is_tech=1&keyword=会议活动执行">会议活动执行</a> <a
									href="/job/search?is_tech=1&keyword=会展活动销售">会展活动销售</a> <a
									href="/job/search?is_tech=1&keyword=会展活动策划">会展活动策划</a> <a
									href="/job/search?is_tech=1&keyword=会展活动执行">会展活动执行</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 广告 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=广告创意">广告创意</a> <a
									href="/job/search?is_tech=1&keyword=美术指导">美术指导</a> <a
									href="/job/search?is_tech=1&keyword=广告设计师">广告设计师</a> <a
									href="/job/search?is_tech=1&keyword=策划经理">策划经理</a> <a
									href="/job/search?is_tech=1&keyword=文案">文案</a> <a
									href="/job/search?is_tech=1&keyword=资深文案">资深文案</a> <a
									href="/job/search?is_tech=1&keyword=广告制作">广告制作</a> <a
									href="/job/search?is_tech=1&keyword=媒介投放">媒介投放</a> <a
									href="/job/search?is_tech=1&keyword=媒介合作">媒介合作</a> <a
									href="/job/search?is_tech=1&keyword=媒介顾问">媒介顾问</a> <a
									href="/job/search?is_tech=1&keyword=广告审核">广告审核</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 影视媒体 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=导演/编导">导演/编导</a> <a
									href="/job/search?is_tech=1&keyword=摄影/影像师">摄影/影像师</a> <a
									href="/job/search?is_tech=1&keyword=视频编辑">视频编辑</a> <a
									href="/job/search?is_tech=1&keyword=音频编辑">音频编辑</a> <a
									href="/job/search?is_tech=1&keyword=经纪人">经纪人</a> <a
									href="/job/search?is_tech=1&keyword=后期制作">后期制作</a> <a
									href="/job/search?is_tech=1&keyword=影视制作">影视制作</a> <a
									href="/job/search?is_tech=1&keyword=影视发行">影视发行</a> <a
									href="/job/search?is_tech=1&keyword=影视策划">影视策划</a> <a
									href="/job/search?is_tech=1&keyword=主持人/主播/DJ">主持人/主播/DJ</a> <a
									href="/job/search?is_tech=1&keyword=演员/配音/模特">演员/配音/模特</a> <a
									href="/job/search?is_tech=1&keyword=化妆/造型/服装">化妆/造型/服装</a> <a
									href="/job/search?is_tech=1&keyword=放映管理">放映管理</a> <a
									href="/job/search?is_tech=1&keyword=录音/音效">录音/音效</a> <a
									href="/job/search?is_tech=1&keyword=制片人">制片人</a> <a
									href="/job/search?is_tech=1&keyword=编剧">编剧</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他传媒职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他传媒职位">其他传媒职位</a>
							</dd>
						</dl>
					</div>
				</div>

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							金融 <span></span>
						</h2>

						<a href="/job/search?is_tech=1&keyword=投资经理">投资经理</a> <a
							href="/job/search?is_tech=1&keyword=分析师">分析师</a> <a
							href="/job/search?is_tech=1&keyword=行业研究">行业研究</a> <a
							href="/job/search?is_tech=1&keyword=资产管理">资产管理</a> <a
							href="/job/search?is_tech=1&keyword=风控">风控</a> <a
							href="/job/search?is_tech=1&keyword=金融产品经理">金融产品经理</a>
					</div>
					<div class="menu_sub hide">
						<dl class="reset">
							<dt>
								<a href="###"> 投融资 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=投资经理">投资经理</a> <a
									href="/job/search?is_tech=1&keyword=分析师">分析师</a> <a
									href="/job/search?is_tech=1&keyword=行业研究">行业研究</a> <a
									href="/job/search?is_tech=1&keyword=资产管理">资产管理</a> <a
									href="/job/search?is_tech=1&keyword=理财顾问">理财顾问</a> <a
									href="/job/search?is_tech=1&keyword=交易员">交易员</a> <a
									href="/job/search?is_tech=1&keyword=风控">风控</a> <a
									href="/job/search?is_tech=1&keyword=合规稽查">合规稽查</a> <a
									href="/job/search?is_tech=1&keyword=审计">审计</a> <a
									href="/job/search?is_tech=1&keyword=清算">清算</a> <a
									href="/job/search?is_tech=1&keyword=投资总监">投资总监</a> <a
									href="/job/search?is_tech=1&keyword=投资VP">投资VP</a> <a
									href="/job/search?is_tech=1&keyword=投资合伙人">投资合伙人</a> <a
									href="/job/search?is_tech=1&keyword=融资">融资</a> <a
									href="/job/search?is_tech=1&keyword=并购">并购</a> <a
									href="/job/search?is_tech=1&keyword=投后管理">投后管理</a> <a
									href="/job/search?is_tech=1&keyword=投资助理">投资助理</a> <a
									href="/job/search?is_tech=1&keyword=其他投融资职位">其他投融资职位</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 风控 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=风控">风控</a> <a
									href="/job/search?is_tech=1&keyword=律师">律师</a> <a
									href="/job/search?is_tech=1&keyword=资信评估">资信评估</a> <a
									href="/job/search?is_tech=1&keyword=合规稽查">合规稽查</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 税务审计 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=审计">审计</a> <a
									href="/job/search?is_tech=1&keyword=法务">法务</a> <a
									href="/job/search?is_tech=1&keyword=会计">会计</a> <a
									href="/job/search?is_tech=1&keyword=清算">清算</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 银行 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=信用卡销售">信用卡销售</a> <a
									href="/job/search?is_tech=1&keyword=柜员">柜员</a> <a
									href="/job/search?is_tech=1&keyword=商务渠道">商务渠道</a> <a
									href="/job/search?is_tech=1&keyword=大堂经理">大堂经理</a> <a
									href="/job/search?is_tech=1&keyword=客户经理">客户经理</a> <a
									href="/job/search?is_tech=1&keyword=信贷管理">信贷管理</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 互联网金融 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=金融产品经理">金融产品经理</a> <a
									href="/job/search?is_tech=1&keyword=风控">风控</a> <a
									href="/job/search?is_tech=1&keyword=催收员">催收员</a> <a
									href="/job/search?is_tech=1&keyword=分析师">分析师</a> <a
									href="/job/search?is_tech=1&keyword=投资经理">投资经理</a> <a
									href="/job/search?is_tech=1&keyword=理财顾问">理财顾问</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 保险 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=保险业务">保险业务</a> <a
									href="/job/search?is_tech=1&keyword=精算师">精算师</a> <a
									href="/job/search?is_tech=1&keyword=保险理赔">保险理赔</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="###"> 其他金融职位 </a>
							</dt>
							<dd>
								<a href="/job/search?is_tech=1&keyword=其他金融职位">其他金融职位</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<!-- 左侧菜单end -->

		<!-- 右侧内容 -->
		<div class="content pull-right">
			<!-- 职位列表 -->
			<div class="job-content" id="option-keyword" default-value="职位 公司"
				value="">
				<h5 class="content-title">
					<span>最新职位</span>
				</h5>
				<div class="job-list">
					<a href="/job/job_detail/30569" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">招商专员（双休+高薪）</div>
								<div class="demand clearfix">
									<span class="star">4k-8k</span> <span>3-5年</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京伊康倍健医药科技有限公司</div>
								<div class="demand clearfix">
									<span>医疗健康</span> <span>未融资</span> <span>0-19人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/0/e/0eb4c53ae5d4879666a21dbcd4814b42.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 丰台区</span> <span
								class="location pull-right">2017-07-13 09:31:48</span>
						</div>
					</a> <a href="/job/job_detail/30564" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">新媒体运营</div>
								<div class="demand clearfix">
									<span class="star">8k-12k</span> <span>1-3年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">福建金诚丰担保有限公司北京分公司</div>
								<div class="demand clearfix">
									<span>不限</span> <span>不需要融资</span> <span>100-499人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/3/b/3b21cb93293505e5c2961d37da8ab56e.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-07-11 10:29:28</span>
						</div>
					</a> <a href="/job/job_detail/30561" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">4S实体机构运营支持</div>
								<div class="demand clearfix">
									<span class="star">5k-7k</span> <span>3-5年</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">今时信合（北京）国际科技有限公司</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>不需要融资</span> <span>100-499人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/8/7/8787d40875081f194eb9fcf76c22d062.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 丰台区</span> <span
								class="location pull-right">2017-07-10 16:44:32</span>
						</div>
					</a> <a href="/job/job_detail/30560" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">秘书处前台</div>
								<div class="demand clearfix">
									<span class="star">4k-6k</span> <span>1年以内</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">今时信合（北京）国际科技有限公司</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>不需要融资</span> <span>100-499人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/8/7/8787d40875081f194eb9fcf76c22d062.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 丰台区</span> <span
								class="location pull-right">2017-07-10 16:23:00</span>
						</div>
					</a> <a href="/job/job_detail/30531" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">管理培训生</div>
								<div class="demand clearfix">
									<span class="star">8k-15k</span> <span>应届生</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">易聚（北京）信息科技有限公司</div>
								<div class="demand clearfix">
									<span>金融</span> <span>未融资</span> <span>500-999人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/3/d/3d164424aa69eeaa6179954c67d82f2a.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-07-10 09:47:06</span>
						</div>
					</a> <a href="/job/job_detail/29244" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">三维/CAD/制图</div>
								<div class="demand clearfix">
									<span class="star">1k-2k</span> <span>1年以内</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">江小鱼科技中心</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>A轮</span> <span>1000-9999人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/6/a/6aa666f93d429b7a33129e1812d2f66a.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 东城区</span> <span
								class="location pull-right">2017-05-16 16:40:09</span>
						</div>
					</a> <a href="/job/job_detail/28813" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">游戏策划</div>
								<div class="demand clearfix">
									<span class="star">6k-7k</span> <span>1年以内</span> <span>硕士</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">江小鱼科技中心</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>A轮</span> <span>1000-9999人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/6/a/6aa666f93d429b7a33129e1812d2f66a.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 东城区</span> <span
								class="location pull-right">2017-04-06 13:49:15</span>
						</div>
					</a> <a href="/job/job_detail/29260" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">网店美工</div>
								<div class="demand clearfix">
									<span class="star">5k-12k</span> <span>1-3年</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京艺佰联腾电子科技有限公司</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>不需要融资</span> <span>0-19人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/2/6/262bff297360b9eca2c7971a46f903ea.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-05-17 16:26:13</span>
						</div>
					</a> <a href="/job/job_detail/29259" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">音频技术维护</div>
								<div class="demand clearfix">
									<span class="star">5k-7k</span> <span>1年以内</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京艺佰联腾电子科技有限公司</div>
								<div class="demand clearfix">
									<span>电子商务</span> <span>不需要融资</span> <span>0-19人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/2/6/262bff297360b9eca2c7971a46f903ea.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-05-17 16:23:57</span>
						</div>
					</a> <a href="/job/job_detail/30402" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">高级数据分析师</div>
								<div class="demand clearfix">
									<span class="star">15k-30k</span> <span>3-5年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京三快科技有限公司</div>
								<div class="demand clearfix">
									<span>移动互联网</span> <span>D轮及以上</span> <span>10000人以上</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/e/5/e554bdccacbe867c6238f4d166d5838c.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 通州区</span> <span
								class="location pull-right">2017-06-29 13:36:04</span>
						</div>
					</a> <a href="/job/job_detail/30404" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">数据分析师</div>
								<div class="demand clearfix">
									<span class="star">18k-36k</span> <span>3-5年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">便利蜂商贸有限公司</div>
								<div class="demand clearfix">
									<span>互联网</span> <span>天使轮</span> <span>500-999人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/7/1/71e8cd3d93e04c0c6985ce01d4d89ab5.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-06-29 13:36:04</span>
						</div>
					</a> <a href="/job/job_detail/30409" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">数据分析师</div>
								<div class="demand clearfix">
									<span class="star">8k-16k</span> <span>3-5年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">先花信息技术（北京）有限公司</div>
								<div class="demand clearfix">
									<span>互联网</span> <span>A轮</span> <span>100-499人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/3/8/38709f356df58a4817daf751547351eb.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 密云县</span> <span
								class="location pull-right">2017-06-29 13:36:04</span>
						</div>
					</a> <a href="/job/job_detail/30410" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">数据分析师</div>
								<div class="demand clearfix">
									<span class="star">15k-25k</span> <span>3-5年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京京东尚科信息技术有限公司</div>
								<div class="demand clearfix">
									<span>数据服务</span> <span>未融资</span> <span>0-19人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/f/3/f38e5c093b20c0640f1e7f8a7c63bec9.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 丰台区</span> <span
								class="location pull-right">2017-06-29 13:36:04</span>
						</div>
					</a> <a href="/job/job_detail/30413" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">数据分析师</div>
								<div class="demand clearfix">
									<span class="star">20k-30k</span> <span>3-5年</span> <span>本科</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">竞技世界（北京）网络技术有限公司</div>
								<div class="demand clearfix">
									<span>互联网</span> <span>未融资</span> <span>1000-9999人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/6/7/678d088364e0d62fa1ae51322714ab2a.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 通州区</span> <span
								class="location pull-right">2017-06-29 13:36:04</span>
						</div>
					</a> <a href="/job/job_detail/30368" target="_blank" class="job-item">
						<div class="job-item-t clearfix">
							<div class="job-item-l pull-left">
								<div class="job-name">电话销售</div>
								<div class="demand clearfix">
									<span class="star">5k-8k</span> <span>应届生</span> <span>大专</span>
								</div>
							</div>
							<div class="job-item-c pull-left">
								<div class="com-name">北京京开万达基金管理有限公司</div>
								<div class="demand clearfix">
									<span>金融</span> <span>天使轮</span> <span>20-99人</span>
								</div>
							</div>
							<div class="job-item-r pull-right">
								<div class="com-logo">
									<img
										src="http://game.myjob.com/upload/4/d/4df92d695491b3466d6de9488a1139ca.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="job-item-b">
							<span class="location pull-left">北京市 朝阳区</span> <span
								class="location pull-right">2017-06-28 16:24:04</span>
						</div>
					</a>
				</div>

			</div>
		</div>
		<!-- 右侧内容end-->
	</div>
	<!-- 职位 end -->

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