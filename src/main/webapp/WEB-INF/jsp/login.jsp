<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>  
    <link rel="stylesheet" href="static/css/pintuer.css">
    <link rel="stylesheet" href="static/css/admin.css">
    <script src="static/js/jquery.js"></script>
    <script src="static/js/pintuer.js"></script> 
    <script>
    /**
    	1、self:当前窗口对象（如果是在iframe里，则为该框架的窗口对象）
		2、top:父窗口对象
		3、location:该对象包含当前url信息，拥有多个属性。默认属性为 location.href,表示整个url，即如果设置location="http://www.ddd.cn",则等同于location.href="http://www.ddd.cn".
    */
// 	if (self != top) {
// 		top.location = self.location;  //iframe中窗口对象转换成父窗口对象
// 	} 
</script> 
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>                  
            <form action="${pageContext.request.contextPath }/logins" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>管理员登陆</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="username" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                  
                </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录">
                </div>
<%--                 <font size="5" color="red"><%=request.getAttribute("mag")==null?" ":request.getAttribute("mag")%>                --%>
            </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>