<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>餐台管理</title>
<link href="static/css/base.css" rel="stylesheet" type="text/css" />
<link href="static/css/food_table_setting.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="http://ui2.cc.com/picPng.js"></script>
<script type="text/javascript">
	DD_belatedPNG.fix('*');
</script>
<![endif]-->
</head>
<body>
<div class="header">
  <div class="top wrapper"> <a href="#" class="logo"></a>
    <div class="info"><span class="name">ADMINCZY</span><span class="role">（操作员）</span><a href="###" class="settings">账户管理</a><span class="line">|</span><a href="###">注销</a></div>
  </div>
  <ul class="topnav wrapper">
	<li><a href="${pageContext.request.contextPath}/main" class="nav1">首页</a></li>
	<li class="on"><a href="${pageContext.request.contextPath}/tableSetting" class="nav3">电子点餐系统</a></li>
	<li><a href="#" class="nav4">会员管理</a></li>
	<li><a href="#" class="nav2">权限管理</a></li>
	<li><a href="#" class="nav8">账号中心</a></li>
  </ul>
  <div class="subnav">
    <div class="wrapper"> <a  class="on" href="${pageContext.request.contextPath}/tableSetting">餐台设置</a><i></i> <a  href="${pageContext.request.contextPath}/dish">菜谱设置</a><i></i> <a  href="${pageContext.request.contextPath}/settle" >结账</a><i></i> <a  href="food_book_manage_list.html">预约处理</a><i></i> <a href="print_setting.html">打印机设置</a></div>
  </div>
</div>
<div class="contain wrapper">
  <div class="page-title"><span class="h2">所有餐台</span></div>
  <div>
    <ul class="tabTest food_table_tabTest">
      <li class="on">大厅(11)</li>
      <li>包间</li>
      <div class="fr page" style="display:inline"> <a class="disable" href="#">上一页</a><span>1/6</span><a href="#">下一页</a>
        <input type="text" class="inputText w30 radius5"/>
        <input class="btn50" value="跳转"  type="button"/>
      </div>
    </ul>
    <div class="tabContent">
      <div class="food_table_add"></div>
      <div class="food_table_normal"><span>1</span></div>
      <div class="food_table_lock"><span>3</span></div>
      <div class="food_table_lock"><span>4</span></div>
      <div class="food_table_normal"><span>5</span></div>
      <div class="food_table_normal"><span>6</span></div>
      <div class="food_table_normal"><span>7</span></div>
      <div class="food_table_normal"><span>8</span></div>
      <div class="food_table_normal"><span>9</span></div>
      <div class="food_table_normal"><span>10</span></div>
      <div class="food_table_normal"><span>11</span></div>
      <div class="food_table_normal"><span>8</span></div>
      <div class="food_table_normal"><span>9</span></div>
      <div class="food_table_normal"><span>10</span></div>
      <div class="food_table_normal"><span>11</span></div>
    </div>
    <div class="tabContent undis">
      <div class="food_table_add_room"></div>
      <div class="food_table_normal_room"><span class="food_table_number">101</span><span class="food_table_name">国色天香</span></div>
      <div class="food_table_hover_room"><a class="food_table_edit">编辑</a><a>禁用</a><a>删除</a></div>
      <div class="food_table_lock_room"><span class="food_table_number">101</span><span class="food_table_name">国色天香</span></div>
      <div class="food_table_lock_hover_room"><a class="food_table_restore">恢复</a><a>删除</a></div>
      <div class="food_table_normal_room"><span class="food_table_number">2008</span></div>
      <div class="food_table_normal_room"><span class="food_table_name">天上人间</span></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="wrapper">
    <div class="phone">4008-028-028</div>
    <p>Copyright 2012-2017 成都华特网络科技有限公司</p>
    <p><a href="###">关于我们</a> | <a href="###">条款和隐私权</a> | <a href="###">帮助中心</a></p>
  </div>
</div>
<script src="static/js/jquery-1.8.3.js" ></script> 
<script src="static/js/base.js" ></script> 
<script src="static/js/main.js" ></script> 
<script language="javascript">
$(document).ready(function(e) {
    
	$(".food_table_add").mouseenter(function(){
	   
	   $(this).css("background","url(static/img/foodImg_3.png) no-repeat");
	   $(this).append("<a href='javascript:void (0)'>添加餐台</a>");
	   $(this).find("a").css("font-size","17px");
	   $(this).find("a").css("width","130px");
	   $(this).find("a").css("line-height","130px");
	   $(this).find("a").css("text-align","center");
	   $(this).find("a").css("display","inline-block");
	   $(this).find("a").css("text-decoration","none");
	   $(this).find("a").css("color","white");
	});
	$(".food_table_add").mouseleave(function(){
		
	    $(".food_table_add").css("background","url(static/img/foodImg_1.png) no-repeat");
		$(".food_table_add a").remove();	
	});
	
	$(".food_table_normal").mouseenter(function(){
		$(this).removeClass("food_table_normal");
		$(this).addClass("food_table_hover");
		$(this).append("<a class='food_table_edit'>编辑</a><a>禁用</a><a>删除</a>");
		$(this).find("span").hide();
	});
	
	$(".food_table_normal").mouseleave(function(){
		
		$(this).removeClass("food_table_hover");
		$(this).addClass("food_table_normal");
		$(this).find("a").remove();
		$(this).find("span").show();
		if(parseInt($(this).find("span").text())<10){
		   $(this).find("span").css("margin-left","45px");	
		}
		else{
		   $(this).find("span").css("margin-left","25px");
		}
		
	});
	
	$(".food_table_lock").mouseenter(function(){
		$(this).removeClass("food_table_lock");
		$(this).addClass("food_table_lock_hover");
		$(this).append("<a class='food_table_restore'>恢复</a><a>删除</a>");
		$(this).find("span").hide();
	});
	
	$(".food_table_lock").mouseleave(function(){
		
		$(this).removeClass("food_table_lock_hover");
		$(this).addClass("food_table_lock");
		$(this).find("a").remove();
		$(this).find("span").show();
		
		if(parseInt($(this).find("span").text())<10){
		   $(this).find("span").css("margin-left","45px");	
		}
		else{
		   $(this).find("span").css("margin-left","25px");
		}
		
	})
	
	/*包间JS*/
	$(".food_table_add_room").mouseenter(function(){
		
	   $(this).css("background","url()");
	   $(this).css("background-color","#666465");
	   $(this).append("<a href='javascript:void (0)'>添加餐台</a>");
	   $(this).find("a").css("font-size","17px");
	   $(this).find("a").css("width","130px");
	   $(this).find("a").css("line-height","130px");
	   $(this).find("a").css("text-align","center");
	   $(this).find("a").css("display","inline-block");
	   $(this).find("a").css("text-decoration","none");
	   $(this).find("a").css("color","white");
	});
	$(".food_table_add_room").mouseleave(function(){
		
	    $(this).css("background","url(static/img/foodImg_1.png) no-repeat");
		$(this).css("background-color","#D6D7D9");
		$(".food_table_add_room a").remove();	
	});
	
	
	$(".food_table_normal_room").mouseenter(function(){
		$(this).removeClass("food_table_normal_room");
		$(this).addClass("food_table_hover_room");
		$(this).append("<a class='food_table_edit'>编辑</a><a>禁用</a><a>删除</a>");
		$(this).find("span").hide();
	});
	
	$(".food_table_normal_room").mouseleave(function(){
		
		$(this).removeClass("food_table_hover_room");
		$(this).addClass("food_table_normal_room");
		$(this).find("a").remove();
		$(this).find("span").show();
		$(this).find("span").css("display","block");
		$(this).find("span").css("line-height","45px");
		
	});
	
	
	$(".food_table_lock_room").mouseenter(function(){
		$(this).removeClass("food_table_lock_room");
		$(this).addClass("food_table_lock_hover_room");
		$(this).append("<a class='food_table_restore'>恢复</a><a>删除</a>");
		$(this).find("span").hide();
	});
	
	$(".food_table_lock_room").mouseleave(function(){
		
		$(this).removeClass("food_table_lock_hover_room");
		$(this).addClass("food_table_lock_room");
		$(this).find("a").remove();
		$(this).find("span").show();
		$(this).find("span").css("display","block");
		$(this).find("span").css("line-height","45px");
		
	})
	
	
});
</script>
</body>
</html>
