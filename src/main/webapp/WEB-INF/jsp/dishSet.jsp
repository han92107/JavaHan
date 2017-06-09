<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ittx.model.DishCategory" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>菜谱设置</title>
<link href="static/css/base.css" rel="stylesheet"
	type="text/css" />
<link href="static/css/food_menu.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="static/js/picpng.js"></script>
<script type="text/javascript">
	DD_belatedPNG.fix('*');
</script>
<![endif]-->
</head>
<body>
	<div class="header">
		<div class="top wrapper">
			<a href="#" class="logo"></a>
			<div class="info">
				<span class="name">ADMINCZY</span><span class="role">（操作员）</span><a
					href="###" class="settings">账户管理</a><span class="line">|</span><a
					href="###">注销</a>
			</div>
		</div>
		<ul class="topnav wrapper">
			
			<li><a href="${pageContext.request.contextPath}/main" class="nav1">首页</a></li>
			<li class="on"><a href="${pageContext.request.contextPath}/tableSetting" class="nav3">电子点餐系统</a></li>
			<li><a href="#" class="nav4">会员管理</a></li>
			<li><a href="#" class="nav2">权限管理</a></li>
			<li><a href="#" class="nav8">账号中心</a></li>
		</ul>
		<div class="subnav">
			 <div class="wrapper"> <a  href="${pageContext.request.contextPath}/tableSetting">餐台设置</a><i></i> <a class="on" href="${pageContext.request.contextPath}/dish">菜谱设置</a><i></i> <a  href="check_request.html" >结账</a><i></i> <a  href="food_book_manage_list.html">预约处理</a><i></i> <a href="print_setting.html">打印机设置</a></div>
		</div>
		<div class="contain wrapper">
			<div class="pageT">
				<i class="arrow"></i><span class="h2">菜谱设置</span>
			</div>
			<div>
				<ul>
					<li><input type="button" class="fr" value="搜索"
						style="margin-top: 10px;" /> <input type="text" class="fr"
						style="margin-top: 8px;" /></li>
				</ul>
				<ul class="tabTest">
					<li class="on">菜品</li>
					<li>分类</li>
				</ul>
				<div class="tabContent">
					<dl class="dropdown w240" dropdown-type="select"
						style="margin-top: 10px;">
						<dt>
							<span>全部菜品</span> <input type="hidden" name="dishType" value="">
						</dt>
						<dd>
							<ul>
								<!-- 所有菜品分类 -->
								<c:forEach items="${dishCategory}" var="dishCategory">
									<li><a href="###">${dishCategory.name}</a></li>
								</c:forEach>
							</ul>
						</dd>
					</dl>
					<!-- 添加菜品 -->
					<div id="divPagenation" style="float: right; margin-top: 10px;"></div>
					<div class="food_dish_list">
						<div class="food_dish_list_add_item">
							<a href="addDish">
								<div class="adddish">
									<img src="static/img/add.png">
								</div>
							</a>
						</div>
						<div class="food_dish_list_item">
							<h3 style="margin-top: 5px;">凉拌鸡丝</h3>
							<img src="static/img/food/p_imgMin.png">
							<div class="food_dish_detail">
								<p>招牌类</p>
								<p>
									原价<s>￥25元</s><span style="color: #E98516; font-weight: bold;">
										特价￥18元</span>
								</p>
								<p>#主厨推荐#</p>
								<a href="###">已上架</a>
							</div>
						</div>
						<div class="food_dish_list_item"
							style="background-color: #DFDFDF;">
							<div style="position: relative;">
								<h3 style="margin-top: 5px;">凉拌鸡丝</h3>
								<div class="optionDeldiv"></div>
							</div>
							<img src="static/img/food/p_imgMin.png">
							<div class="food_dish_detail">
								<p>招牌类</p>
								<p></p>
								<a href="###" style="background-color: #C8C8C8;">未上架</a>
							</div>
						</div>
					</div>
				</div>
				<div class="tabContent undis">
					<div class="food_dish_list">
						<div class="food_dish_list_add_item">
							<a href="###" class="popBtn">
								<div class="adddish">
									<img src="static/img/add.png">
								</div>
							</a>
						</div>
						<c:forEach items="${dishCategory}" var="dishCategory">
						<div class="food_dish_type_list_item" align="center">
							<div style="position: relative;">
								<h3 style="margin-top: 5px; float: left; margin-left: 10px;">${dishCategory.name}(</h3>
<%-- 								<h3 style="margin-top: 5px; float: left; margin-left: 10px;">${fn:length(dishCategory)})</h3> --%>
								<div class="modifdiv"></div>
							</div>
							<div class="food_dish_type_detail">
								<img src="static/img/food/lbj.jpg"> <img
									src="static/img/food/p_imgMin.png"> <img
									src="static/img/food/lbj.jpg"> <img
									src="static/img/food/p_imgMin.png"> <img
									src="static/img/pic1.png"> <img
									src="static/img/food/p_imgMin.png"> <img
									src="static/img/food/lbj.jpg"> <img
									src="static/img/food/p_imgMin.png"> <img
									src="static/img/food/lbj.jpg">
							</div>
							<a href="###" class="blueBut">编辑</a>
						</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
		</div>
		<div class="popup w300 hid">
			<div class="popHead">
				<span>新增分类</span> <input type="button" class="closePop" />
			</div>
			<div class="popContent pd20">
				名称: <input type="text" />
			</div>
			<div class="formfoot">
				<a href="#" class="grayBut closePop">取消</a><a href="#"
					class="blueBut closePop">确认</a>
			</div>
		</div>
		<div class="footer">
			<div class="wrapper">
				<div class="phone">4008-028-028</div>
				<p>Copyright 2012-2017 成都华特网络科技有限公司</p>
				<p>
					<a href="###">关于我们</a> | <a href="###">条款和隐私权</a> | <a href="###">帮助中心</a>
				</p>
			</div>
		</div>
		</div>
		<script type="text/javascript" language="javascript" src="static/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" language="javascript"	 src="static/js/base.js"></script>
		<script type="text/javascript" language="javascript"	 src="static/js/main.js"></script>
		<script type="text/javascript" language="javascript"  src="food_menu.js"></script>
</body>
</html>
