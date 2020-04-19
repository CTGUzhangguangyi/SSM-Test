<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loadingAfterloginsuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="layer/layer.js"></script>
		<script>
			var number=5;
			window.onload=function(){
				var index=layer.load(0,{shader:false});
			}
			
			setInterval(function(){
				number--;
				 if(number==0)
				{
				window.location.href="homepage.jsp";
				}  
				if(number>0)
				$("#number").text(number);
					
			},1000);
		</script>
  </head>
  
  <body>
    <h1 style="position:absolute;left:820px;top:400px">注册成功</h1>
    <h1 style="position:absolute;left:1020px;top:400px">秒后跳转</h1>
    <h1 id="number"  style="position:absolute;left:980px;top:400px">5</h1>
  </body>
</html>
