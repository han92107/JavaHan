<%@ page import="com.ittx.model.DishCategory" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>添加菜品</title>
<link href="static/css/base.css" rel="stylesheet" type="text/css" />
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
  <div class="top wrapper"> <a href="#" class="logo"></a>
    <div class="info"><span class="name">ADMINCZY</span><span class="role">（操作员）</span><a href="###" class="settings">账户管理</a><span class="line">|</span><a href="###">注销</a></div>
  </div>
  <ul class="topnav wrapper">
   
	<li><a href="${pageContext.request.contextPath}/main" class="nav1">首页</a></li>
	<li class="on"><a href="check_request.html" class="nav3">电子点餐系统</a></li>
	<li><a href="#" class="nav4">会员管理</a></li>
	<li><a href="#" class="nav2">权限管理</a></li>
	<li><a href="#" class="nav8">账号中心</a></li>
  </ul>
  <div class="subnav">
     <div class="wrapper"> <a  href="${pageContext.request.contextPath}/tableSetting">餐台设置</a><i></i> <a class="on" href="${pageContext.request.contextPath}/dish">菜谱设置</a><i></i> <a  href="${pageContext.request.contextPath}/settle" >结账</a><i></i> <a  href="food_book_manage_list.html">预约处理</a><i></i> <a href="print_setting.html">打印机设置</a></div>
  </div>
</div>
<div class="contain wrapper">
  <div class="pageT"> <i class="arrow"></i><span class="h2">菜谱设置</span> </div>
  <ul>
    <li> <a href="#" class="input1" style="float:right;">排序</a> </li>
    <!-- 分类切换时js隐藏显示此按钮-->
  </ul>
  <ul class="tabTest">
    <li class="on">菜品</li>
    <li>分类</li>
  </ul>
  <div class="tabContent">
    <div class="wrap2 clearfix" style="margin-top:10px;">
      <div class="left2">
        <div class="food_dish_list_item" style="margin-top:0px;">
          <h3 style="margin-top:5px;">菜名</h3>
          <img src="static/img/food/p_imgMin.png">
          <div class="food_dish_detail">
            <p>招牌类</p>
            <p>原价<s>￥&nbsp;元</s><span style="color: #EF5521; font-weight:bold;"> 特价￥&nbsp;元</span></p>
            <p>&nbsp;</p>
            <a href="###">未上架</a> </div>
        </div>
      </div>
      <div class="right2">
        <div class="title">
          <h3>添加菜品</h3>
        </div>
        <div class="content">
          <div class="dishDetail">
            <p class="modifidishtype_p">名称<span style="float:right; color: #D4D4D4;">限制字数为10</span></p>
            <p class="modifidishtype_p">
              <input type="text" name="name" value="ss" style="width:100%;">
            </p>
            <p class="modifidishtype_p">图片<span style="float:right; color: #D4D4D4;">大图片建议尺寸：2048*1408</span></p>
            <p class="modifidishtype_p">
            <div class="uploaddiv"><img src="static/img/p_upload.png"></div>
            </p>
            <p class="modifidishtype_p">价格</p>
            <p class="modifidishtype_p">
              <input type="text" name="price" style="width:310px;">
              <a href="#" class="input1" id="createPrice">创建特价</a> </p>
            <p class="modifidishtype_p" >类别</p>
            <p class="modifidishtype_p">
            <dl class="dropdown" dropdown-type="select" style="width:700px;" >
              <dt> <span>全部菜品</span>
                <input type="hidden" name="dishType" value="">
              </dt>
              <dd>
                <ul>
                	<!-- 所有菜品分类 -->
					<c:forEach items="${dishCategory}" var="dishCategory">
						<li><a href="${dishCategory.id}">${dishCategory.name}</a></li>
					</c:forEach>
                </ul>
              </dd>
            </dl>
            </p>
            <p class="modifidishtype_p">标签</p>
            <div class="tags-box">
            	<a href="#" class="on">时令小炒<i></i></a>
                <a href="#" class="on">主厨推荐<i></i></a>
                <a href="#">超喜欢的<i></i></a>
                <a href="#" class="add" id="addTag"></a>
            </div>
            <p class="modifidishtype_p">做法</p>
            <div class="tags-box2">
            	<a href="#" class="on"><em>吃法</em><span>三成熟</span><span>五成熟</span><span>七成熟</span><i class="edit"></i><i class="del"></i></a>
                <a href="#"><em>分量</em><span>大份</span><span>中份</span><span>小份</span><i class="edit"></i><i class="del"></i></a>
                <a href="#" class="add" id="addCooking"></a>            </div>
            
            
            <p class="modifidishtype_p" style="line-height:20px;">商品详情</p>
            <p class="modifidishtype_p" >
              <input type="text" name="description" style="width:700px; height:100px;">
            </p>
            <p class="modifidishtype_p"> <a href="#" class="grayBut">保存(未上架)</a> <a href="${pageContext.request.contextPath}/saveDish" class="blueBut" style="float:right;">发布</a> <a href="#" class="grayBut" style="float:right;">返回</a> </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="tabContent undis" >
    <div class="food_dish_list">
      <div class="food_dish_list_add_item"> <a href="###" id="modifiType">
        <div class="adddish"><img src="static/img/add.png"></div>
        </a> </div>
      <div class="food_dish_type_list_item" align="center">
        <div style="position:relative;">
          <h3 style="margin-top:5px; float:left; margin-left:10px;">特色菜(12)</h3>
          <div class="optionDeldiv" ></div>
        </div>
        <div class="food_dish_type_detail" align="center"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> <img src="static/img/food/p_imgMin.png"> </div>
        <a href="###" class="blueBut" id="modifiType2">编辑</a> </div>
    </div>
  </div>
</div>
<div class="popup w300 hid" id="modifiTypeDiv">
  <div class="popHead"><span>编辑分类</span>
    <input type="button" class="closePop"/>
  </div>
  <div class="popContent pd20"> 名称:
    <input type="text"/>
  </div>
  <div class="formfoot"> <a href="#" class="grayBut closePop">取消</a><a href="#" class="blueBut closePop">确认</a> </div>
</div>
<div class="popup w300 hid" id="addTagDiv">
  <div class="popHead"><span>添加标签</span>
    <input type="button" class="closePop"/>
  </div>
  <div class="popContent pd20"> 名称:
    <input type="text"/>
  </div>
  <div class="formfoot"> <a href="#" class="grayBut closePop">取消</a><a href="#" class="blueBut closePop">确认</a> </div>
</div>
<div class="popup w300 hid" id="addCookingDiv">
	<div class="popHead"><span>添加新做法</span>
		<input type="button" class="closePop"/>
	</div>
	<div class="popContent pd20"> 
	名称:<input type="text"/>
	<p>做法: 大份 中份 小份 <a class="addLable" href="#"><img src="http://static.cc.com/img/add.png"></a></p>
	</div>
	<div class="formfoot"> <a href="#" class="grayBut closePop">取消</a><a href="#" class="blueBut closePop">确认</a> </div>
</div> 

<div class="footer">
  <div class="wrapper">
    <div class="phone">4008-028-028</div>
    <p>Copyright 2012-2014 成都华特网络科技有限公司</p>
    <p><a href="###">关于我们</a> | <a href="###">条款和隐私权</a> | <a href="###">帮助中心</a></p>
  </div>
</div>
<script type="text/javascript"language="javascript" src="static/js/jquery-1.8.3.js" ></script> 
<script type="text/javascript"language="javascript" src="static/js/base.js" ></script> 
<script type="text/javascript"language="javascript" src="static/js/main.js" ></script>
</body>
</html>
