<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'management.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
			#data{
				position: absolute;
				left: 357px;top: 309px;
				width: 1241px;height: 954px;
				background-color: #FFFFFF;
				z-index: 0;
			}
			#newdiv {
				position: absolute;
				left: 0px;
				top: 0px;
				z-index: 0;
			}
			
			.bu1 {
				position: absolute;
				top: 326px;
				left: 54px;
				width: 234px;
				height: 59px;
				background-color: #eb0028;
				border: none;
				border-radius: 10px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #ffffff;
			}
			
			.bu1:hover {
				background-color: #ffffff;
				color: #333333;
				border: solid 1px #eb0028;
			}
			
			.bu2 {
				position: absolute;
				top: 396px;
				left: 54px;
				width: 234px;
				height: 59px;
				background-color: #eb0028;
				border: none;
				border-radius: 10px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #ffffff;
			}
			
			.bu2:hover {
				background-color: #ffffff;
				color: #333333;
				border: solid 1px #eb0028;
			}
			
			.bu3 {
				position: absolute;
				top: 466px;
				left: 54px;
				width: 234px;
				height: 59px;
				background-color: #eb0028;
				border: none;
				border-radius: 10px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #ffffff;
			}
			
			.bu3:hover {
				background-color: #ffffff;
				color: #333333;
				border: solid 1px #eb0028;
			}
			
			.bu4 {
				position: absolute;
				top: 539px;
				left: 54px;
				width: 234px;
				height: 59px;
				background-color: #eb0028;
				border: none;
				border-radius: 10px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #ffffff;
			}
			
			.bu4:hover {
				background-color: #ffffff;
				color: #333333;
				border: solid 1px #eb0028;
			}
			
			.bu5 {
				position: absolute;
				top: 614px;
				left: 54px;
				width: 234px;
				height: 59px;
				background-color: #eb0028;
				border: none;
				border-radius: 10px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #ffffff;
			}
			
			.bu5:hover {
				background-color: #ffffff;
				color: #333333;
				border: solid 1px #eb0028;
			}
			
			.bu6 {
				position: absolute;
				top: 708px;
				left: 54px;
				height: 59px;
				width: 234px;
				border: none;
				border: solid 1px #328ece;
				border-radius: 8px;
				z-index: 1;
			
				font-family: AdobeHeitiStd-Regular;
				text-align: center;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 62px;
				letter-spacing: 1px;
				color: #328ece;
			
			}
			
			.bu6:hover {
				background-color: #328ece;
				color: #ffffff;
			}
			
			.lab1 {
				position: absolute;
				top: 202px;
				left: 344px;
				width: 100px;
				height: 22px; 
				font-family: PingFang-SC-Regular;
				font-size: 22px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px;*/
				letter-spacing: 1px; 
				color: #000000;
				z-index: 1;
			}
			.lab2{
				position: absolute;
				left: 373px;top: 270px;
				width: 130px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px; */
				letter-spacing: 1px;
				color: #010000;
				z-index: 1;
			}
			.lab3{
				position: absolute;
				left: 692px;top: 270px;
				width: 100px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px; */
				letter-spacing: 1px;
				color: #010000;
				z-index: 1;
			}
			.lab4{
				position: absolute;
				left: 971px;top: 271px;
				width: 100px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px; */
				letter-spacing: 1px;
				color: #010000;
				z-index: 1;
			}
			.lab5{
				position: absolute;
				left: 1267px;top: 271px;
				width: 100px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px; */
				letter-spacing: 1px;
				color: #010000;
				z-index: 1;
			}
			.div1{
				position: absolute;
				top: 305px;left: 356px;
				width: 1041px;height: 2px;
				background-color:#eb0028 ;
				z-index: 1;
			}
			.c1{
				position: absolute;
				left: 334px;top: 313px;
				width: 1080px;height: 790px;
				z-index: 1;
			}
			
		</style>
    <script type="text/javascript">
  $(function(){
  
    		$(".bu1").click(function(){
  			
  					window.location.href="kaishi?uid="+${u.uid};
  			})
  
  			$(".bu2").click(function(){
  			
  					window.location.href="orderByuid?uid="+${u.uid}
  			})
  			$(".bu3").click(function(){
  			
  					window.location.href="updatepassword.jsp"
  			})
  			$(".bu4").click(function(){
  			
  					window.location.href="collection?uid="+${u.uid}
  			})
  			$(".bu5").click(function(){
  			
  					window.location.href="management.jsp"
  			})
  			
  				$(".backhome").click(function(){
  			window.location.href="homepage.jsp";
  			})
  			
  
  
  })
  </script>
  <body>
   <div id="newdiv">
			<img src="img/newpersonal1.jpg" />
		</div>
		<!-- 装数据的div -->
		<div id="data"></div>
		<!-- 左侧导航栏 -->
		<button class="bu1">账户设定</button>
		<button class="bu2">订单信息</button>
		<button class="bu3">修改密码</button>
		<button class="bu4">收藏夹</button>
		<button class="bu5">售后管理</button>
		<button class="bu6">退出账号</button>
		
		<!-- 显示信息 -->
		<label class="lab1">售后申请</label>
		<label class="lab2">售后申请编号</label>
		<label class="lab3">处理流程</label>
		<label class="lab4">售后评价</label>
		<label class="lab5">申请记录</label>
		<div class="div1"></div>
		<!-- 存放数据的div -->
		<div class="c1"></div>
		<div style="position:absolute;top:27px;left:1635px;width: 16px;height: 16px" class="backhome"></div>
  </body>
</html>
