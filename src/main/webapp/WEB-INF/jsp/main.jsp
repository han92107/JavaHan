<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>首页</title>
<link href="static/css/base.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="http://static.cc.com/static/new_ui/js/picpng.js"></script>
<script type="text/javascript">
	DD_belatedPNG.fix('*');
</script>
<![endif]-->
</head>
<body>
<!-- 头部 -->
<div class="header">
  <div class="top wrapper">
    <!--这里可以替换logo图片-->

    <div class="info"><span class="name">${username}</span><span class="role">（操作员）</span><a href="###" class="settings">账户管理</a><span class="line">|</span><a href="${pageContext.request.contextPath }/logOut">注销</a></div>
  </div>
  <ul class="topnav wrapper">
    <li class="on"><a href="${pageContext.request.contextPath}/main" class="nav1">首页</a></li>
	<li ><a href="${pageContext.request.contextPath}/tableSetting" class="nav3">电子点餐系统</a></li>
	<li><a href="#" class="nav4">会员管理</a></li>
	<li><a href="#" class="nav2">权限管理</a></li>
	<li><a href="#" class="nav8">账号中心</a></li>
  </ul>
</div>
<!-- 头部 END -->
<!-- 串号搜索 
<div class="jindexB">
  <div class="wrapper"> <img src="../ui/img/jindexB1.png" />
    <div class="rChange">
      <p class="idntifinum"><span>输入串号:</span>
        <input type="text" value="" />
      </p>
      <a href="###" class="search">快速兑换</a> </div>
  </div>
</div>
-->
<!--余额提示-->
<div class="balPrompt">温馨提示：您的账户余额为 100.00元，为了避免付费服务无法正常使用而影响您的业务活动开展，请尽快联系我公司客服续费！</div>
<div class="wrapper">
  <div class="jindexC">
    <ul class="nav-home">
      <li><a href="${pageContext.request.contextPath}/tableSetting" class="nav3">电子点餐系统<em>查看所有用户在线订单，并对订单进行及时处理响应。</em></a></li>
      <li><a href="#" class="nav4">会员管理<em>查看所有用户在线订单，并对订单进行及时处理响应。</em></a></li>
	  <li><a href="#" class="nav2">权限管理<em>查看所有用户在线订单，并对订单进行及时处理响应。</em></a></li>
      <li><a href="#" class="nav8">帐号中心<em>查看所有用户在线订单，并对订单进行及时处理响应。</em></a></li>
    </ul>
    <div class="jindexCR">
      <p class="p1">当前余额：<img src="static/img/rmb.png"> <span class="ft-orange ft-blod ft-24">8888.00</span></p>
      <p class="p1">您好，如需帮助请联系您的专属客服！</p>
      <div class="phone">4008-028-028</div>
      <p><a href="###" class="input1 qq"><i></i>QQ交谈</a></p>
      <!--下载二维码
      <div><img src="../ui/img/QDcode.png"></div>
      -->
      <div class="p3">
        <p>公司地址：</p>
        <p>四川省成都市高新区益州大道1800号</p>
        <p>软件园c1栋303</p>
      </div>
    </div>
    <div style="clear:both;"></div>
  </div>
</div>
<div class="footer">
  <div class="wrapper">
    <div class="phone">4008-028-028</div>
    <p>Copyright 2012-2017 成都华特网络科技有限公司</p>
    <p><a href="###">关于我们</a> | <a href="###">条款和隐私权</a> | <a href="###">帮助中心</a></p>
  </div>
</div>
</body>
</html>
