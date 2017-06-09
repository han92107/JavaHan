<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>登录</title>
<link href="static/css/logo.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 6]>
<script src="http://static.cc.com/static/new_ui/js/picpng.js"></script>
<script type="text/javascript">
	DD_belatedPNG.fix('*');
</script>
<![endif]-->
</head>
<body>
<!-- logo -->
<div class="logoMain clearfix">
  <div class="lmLeft">
    <div class="lmlContent">
      <h6>你的自动化点餐助手</h6>
      <p>智能云点餐管理系统为商家提供高效、规范、轻松的餐饮管理环境，对客户点餐、预约、菜品及会员进行统一管理，让客户掌握店铺菜品信息，实现轻松进店分享美食。</p>
    </div>
  </div>
  <div class="lmRight">
    <h6 class="titleH6">智能云点餐管理系统</h6>
    <p class="titleP">Intelligent Cloud meal management System</p>
    <div class="logoBox">
    <form action="${pageContext.request.contextPath}/logins" method="post">
      <p><input type="text" name="username" class="inputText" placeholder="用户名"></p>
      <p><input type="password" name="password" class="inputText" placeholder="密 码"></p>
      <p><input type="submit" value="确 认" class="inputBtnSubmit" onclick="window.location.href='index.html'"/></p>
       <a style="color:red;">
                <% 
                	if(request.getAttribute("message") == null){
                		out.print("");
                	}else{
                		out.print(request.getAttribute("message"));
                	}
                %></a>
    </form>
    </div>
    <div class="phone">4008-028-028</div>
    <p class="tipsP">密码遗忘，<br>请联系你的客服专员修改密码！</p>
    <div class="fCopyright">
      <p>Copyright 2012-2017 成都华特网络科技有限公司</p>
      <p><a href="###">关于我们</a> | <a href="###">条款和隐私权</a> | <a href="###">帮助中心</a></p>
    </div>  
  </div>
</div>
</body>
</html>
