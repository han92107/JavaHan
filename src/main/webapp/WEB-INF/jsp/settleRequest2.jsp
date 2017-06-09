<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>结账管理</title>
<link href="static/css/base.css" rel="stylesheet" type="text/css" />
<link href="static/css/food_check.css" rel="stylesheet" type="text/css" />
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
  <!--<li><a href="#" class="nav1">首页</a></li>
			<li><a href="#" class="nav2">营销工具</a></li>
			<li><a href="#" class="nav9">微官网</a></li>
			<li><a href="#" class="nav10">微杂志</a></li>
			<li class="on"><a href="#" class="nav3">电子点餐系统</a></li>
			<li><a href="#" class="nav4">会员管理</a></li>
			<li><a href="#" class="nav5">充值套餐</a></li>
			<li><a href="#" class="nav6">公共帐号设置</a></li>
			<li><a href="#" class="nav7">统计查询</a></li>
			<li><a href="#" class="nav8">账号中心</a></li>-->
			<li><a href="index.html" class="nav1">首页</a></li>
			<li class="on"><a href="check_request.html" class="nav3">电子点餐系统</a></li>
			<li><a href="#" class="nav4">会员管理</a></li>
			<li><a href="#" class="nav2">权限管理</a></li>
			<li><a href="#" class="nav8">账号中心</a></li>
  </ul>
  <div class="subnav">
    <div class="wrapper"> <a  href="food_table_setting.html">餐台设置</a><i></i> <a  href="food_menu_dish_list_.html">菜谱设置</a><i></i> <a  href="check_request.html" class="on" >结账</a><i></i> <a  href="food_book_manage_list.html">预约处理</a><i></i> <a  href="print_setting.html">打印机设置</a></div>
  </div>
</div>
<div class="contain wrapper">
  <div class="page-title"><span class="h2">结账</span></div>
  <ul class="tabTest">
    <li class="on">结账请求</li>
    <li>消费中</li>
    <li>已结账</li>
  </ul>
  <div class="tabContent">
    <div class="page-intro clearfix"><span class="fl">8号餐台 曾小姐 13012345678</span><span class="tinge fr">会员等级：铂金会员  预存款：5000.00</span></div>
    <table class="table-list2">
      <thead>
        <tr>
          <td>编号</td>
          <td>菜名</td>
          <td>单价</td>
          <td>数量</td>
          <td>小计</td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>01</td>
          <td><img src="static/img/pic1.png" class="pic" />至尊菌王汤</td>
          <td>￥	44.00</td>
          <td>1</td>
          <td><span class="red">￥44.00</span></td>
        </tr>
        <tr>
          <td>02</td>
          <td><img src="static/img/pic1.png" class="pic" />至尊菌王汤</td>
          <td>￥	44.00</td>
          <td>1</td>
          <td><span class="red2" title="已作废，原因：上错菜">￥44.00</span></td>
        </tr>
        <tr>
          <td>03</td>
          <td><img src="static/img/pic1.png" class="pic" />至尊菌王汤</td>
          <td>￥	44.00</td>
          <td>1</td>
          <td><span class="red">￥44.00</span></td>
        </tr>
        <tr>
          <td>04</td>
          <td><img src="static/img/pic1.png" class="pic" />至尊菌王汤</td>
          <td>￥	44.00</td>
          <td>1</td>
          <td><span class="red">￥44.00</span></td>
        </tr>
      </tbody>
    </table>
    <div class="mtb10 clearfix"> <span>
      <input type="text" class="inputText" placeholder="输入优惠券号码"/>
      <input type="button" value="确定" class="btn50" />
      </span>
      <dl class="dropdown" dropdown-type="select">
        <dt> <span>不使用会员折扣</span>
          <input type="hidden" value="">
        </dt>
        <dd>
          <ul>
            <li><a href="###">不使用会员折扣</a></li>
          </ul>
        </dd>
      </dl>
      <dl class="dropdown fr" dropdown-type="select">
        <dt> <span>现金/刷卡</span>
          <input type="hidden" value="">
        </dt>
        <dd>
          <ul>
            <li><a href="###">现金</a></li>
            <li><a href="###">刷卡</a></li>
          </ul>
        </dd>
      </dl>
    </div>
	
	<!--列表-->
	<div class="list_main">
		<div class="item_main">
			<div class="item_left">
				<p>俏江南满200元抵用50元代金券</p>
				<p><span>￥</span><span class="item_left_money">50</span><span>元</span></p>
				<p><span>手机号：</span><span>180&nbsp;8093&nbsp;6146</span></p>
			</div>
			<div class="item_right">
				<p class="item_right_p1">剩5张</p>
				<div class="item_right_div">
					<a href="###" class="check_request_item_minus"></a>
					<span class="item_right_span">22222</span>
					<a href="###" class="check_request_item_plus"></a>
				</div>
				<div style="clear:both"></div>
				<p class="item_right_p2">收券</p>
			</div>
		</div>
		
		<div class="item_main">
			<div class="item_left">
				<p>俏江南满200元抵用50元代金券</p>
				<p><span>￥</span><span class="item_left_money">50</span><span>元</span></p>
				<p><span>手机号：</span><span>180&nbsp;8093&nbsp;6146</span></p>
			</div>
			<div class="item_right">
				<p class="item_right_p1">剩5张</p>
				<div class="item_right_div">
					<a href="###" class="check_request_item_minus"></a>
					<span class="item_right_span">22222</span>
					<a href="###" class="check_request_item_plus"></a>
				</div>
				<div style="clear:both"></div>
				<p class="item_right_p2">收券</p>
			</div>
		</div>
		
		<div style="clear:both"></div>
	</div>
	
	
	
    <div class="mtb10 ar"> 总份数：13   总价：<span class="red">￥112.00</span> 会员折扣：9折  实收：<span class="price">￥101.00</span> </div>
    <div class="mtb10 ar"> 输入实收金额：
      <input type="text" class="inputText"/>
    </div>
    <div class="mtb10 ar"> <a href="###" class="grayBut">返回</a> <a href="${pageContext.request.contextPath}/settle3" class="blueBut">确定结账</a> </div>
	
	
	
	
  </div>
   <div class="tabContent undis"><div class="desk-consumption-box">
     	<span class="num"><em>1</em>号</span>
        <span class="name">张先生</span>
        <span class="status">已开台</span>
      
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box2">
     	<span class="num"><em>2004</em></span>
        <span class="name">国色天香</span>
        <span class="status">已开台</span>
        
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box">
     	<span class="num"><em>1</em>号</span>
        <span class="name">张先生</span>
        <span class="status">已开台</span>
     
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box2">
     	<span class="num"><em>2004</em></span>
        <span class="name">国色天香</span>
        <span class="status">已开台</span>
       
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box">
     	<span class="num"><em>1</em>号</span>
        <span class="name">张先生</span>
        <span class="status">已开台</span>
       
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box2">
     	<span class="num"><em>2004</em></span>
        <span class="name">国色天香</span>
        <span class="status">已开台</span>
        
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box">
     	<span class="num"><em>1</em>号</span>
        <span class="name">张先生</span>
        <span class="status">已开台</span>
      
        <a href="#" class="link">立即结账</a>
     </div>
     <div class="desk-consumption-box2">
     	<span class="num"><em>2004</em></span>
        <span class="name">国色天香</span>
        <span class="status">已开台</span>
        
        <a href="#" class="link">立即结账</a>
     </div></div>
  <div class="tabContent undis">
   <p class="tabListLable">
     <span>今日共计收银0.00(元)</span>
	 <span>现金0.00(元)</span>
	 <span>预存款0.00(元)</span>
	 <span>信用卡0.00(元)</span>
	 <span>存储卡0.00(元)</span>
</p>
			<table class="tb" width="100%" border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>流水号</th>
						<th>餐台/包间</th>
						<th>结账时间</th>
						<th>消费类型</th>
						<th>收银员</th>
						<th>实收金额</th>
						<th>消费详细</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>sdf</td>
						<td>sdf</td>
						<td>fadfa</td>
						<td>sdf</td>
						<td>sdf</td>
							<td><a href="###" id="billList">查看</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>sdf</td>
						<td>sdf</td>
						<td>fadfa</td>
						<td>sdf</td>
						<td>sdf</td>
						<td><a href="###">查看</a></td>
					</tr>
				</tbody>
			</table>
  </div>
</div>
</div>
<!--弹出框1-->
			<div class="popup w340 hid">
  		<div class="popHead"><span>确认结账</span>
    		<input type="button" class="closePop"/>
  		</div>
  		<div class="popContent pd20">
    		<p class="red" style="display:block;width:300px;text-align:center"><span>应收：</span><span>￥112.00</span></p>
    		<p class="red" style="display:block;width:300px;text-align:center"><span>实收：</span><span>￥102.00</span></p>
  		</div>
  		<div class="formfoot"> 
			<a href="#" class="blueBut closePop">确认</a> <a href="#" class="grayBut closePop">取消</a> </div>
		</div>
	</div>
	
	<!--弹出框2-->
	<div class="popup w340 hid">
  		<div class="popHead"><span>确认结账</span>
    		<input type="button" class="closePop"/>
  		</div>
  		<div class="popContent pd20">
    		<p class="red" ><span>应收：</span><span>￥112.00</span><span>实收：</span><span>￥102.00</span></p>
			<p><span>账户余额</span><span style="margin-left:5px;">5000.00</span></p>
			<p><span>扣费金额<textarea class="area" style="margin-left:5px;width:240px; height:30px; resize:none;display: inline-block;vertical-align:middle;"></textarea></span></p>
			<p><span>账户密码<textarea class="area" style="margin-left:5px;width:240px; height:30px; resize:none;display: inline-block;vertical-align:middle;"></textarea></span></p>
  		</div>
  		<div class="formfoot"> 
			<a href="#" class="blueBut closePop">确认</a> <a href="#" class="grayBut closePop">取消</a> </div>
		</div>
	</div>
<div class="popup w300 hid" id="billListDiv">
			<div class="popHead">
				<span>消费清单</span> <input type="button" class="closePop" />
			</div>
			<div class="popContent pd20">
			<span style="font-size:16px; color:#000000; font-weight:bold;">蜀九香</span>
			<p class="alertP">欢迎光临蜀九香高新店</p>
			<p class="alertP">电话:028-487415487</p>
			<p class="cutLine"></p>
			<p class="alertP">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>数量</th>
						<th>名称</th>
						<th>单价</th>
						<th>小计</th>
						
					</tr>
				</thead>
				<tbody  style="text-align:center">
					<tr>
						<td>1</td>
						<td>sdf</td>
						<td>sdf</td>
						<td>fadfa</td>
						
					</tr>
					<tr>
						<td>2</td>
						<td>sdf</td>
						<td>sdf</td>
						<td>fadfa</td>
						
					</tr>
				</tbody>
			</table></p>
			<p class="cutLine"></p>
			<p> 小计<span style="color:#000000; font-weight:bold; font-size:16px; float:right;">￥320</span></p>
			<p class="alertP">优惠</p>
			<p class="alertP">应收</p>
			<p class="alertP">流水号 1564561561456</p>
			</div>
			
			
			
			
			
</div>
<!-- footer -->
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
</body>
</html>
