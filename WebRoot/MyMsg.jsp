<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyMsg.jsp' starting page</title>
    
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
<style>
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
				left: 334px;
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
			
			.lab2 {
				position: absolute;
				top: 328px;left: 393px;
				width: 90px;height: 20px; 
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px;
				/*letter-spacing: 1px; */
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.lab3 {
				position: absolute;
				top: 425px;left: 393px;
				width: 120px;height: 20px; 
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px;
				/*letter-spacing: 1px; */
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.lab4 {
				position: absolute;
				top: 513px;left: 393px;
				width: 120px;height: 20px; 
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px;
				/*letter-spacing: 1px; */
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.lab5 {
				position: absolute;
				top: 602px;left: 393px;
				width: 200px;height: 20px; 
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				/* line-height: 62px;
				/*letter-spacing: 1px; */
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.input1{
				position: absolute;
				top:368px;left: 390px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.input2{
				position: absolute;
				top:460px;left: 390px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.input3{
				position: absolute;
				top:550px;left: 390px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.input4{
				position: absolute;
				top:643px;left: 390px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.b1{
				position: absolute;
				left:391px ;top:717px ;
				width: 358px;height: 39px;
				background-color: #eb0028;
				border: none;
				border-radius: 5px;
				
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				text-align: center;
				/* line-height: 62px;
				letter-spacing: 0px; */
				color: #ffffff;
				z-index: 1;
			}
			.b1:hover{
				background-color: #b5011f;
			}
		</style>
  </head>
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
		<button class="bu1">账户设定</button>
		<button class="bu2">订单信息</button>
		<button class="bu3">修改密码</button>
		<button class="bu4">收藏夹</button>
		<button class="bu5">售后管理</button>
		<button class="bu6">退出账号</button>
		<label class="lab1">账户设定</label>
		<label class="lab2">您的姓名:</label>
		<label class="lab3">您的手机号:</label>
		<label class="lab4">您的邮箱:</label>
		<label class="lab5">默认收件地址:</label>
		<form action="xiugai" method="post">
		<input type="text" class="input1" name="username" value="${u.username}" />
		<input type="text" class="input2" name="phone" value="${u.phone}" />
		<input type="text" class="input3" name="email" value="${u.email}" />
		<input type="text" class="input4" name="address" value="${u.address}" />
		<input type="text" class="input5" name="uid" value="${u.uid}"/>
		<input type="submit"  class="b1">保存</button>
		</form>
		
		
		<div style="position:absolute;top:27px;left:1635px;width: 16px;height: 16px" class="backhome"></div>
</html>
