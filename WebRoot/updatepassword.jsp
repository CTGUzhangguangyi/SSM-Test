<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatepassword.jsp' starting page</title>
    
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
			.lab2{
				position: absolute;
				left: 391px;top: 281px;
				width: 100px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.lab3{
				position: absolute;
				left: 391px;top: 400px;
				width: 100px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.lab4{
				position: absolute;
				left: 391px;top: 512px;
				width: 120px;height: 20px;
				font-family: PingFang-SC-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #000000;
				z-index: 1;
			}
			.input1{
				position: absolute;
				top:332px;left: 391px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.input2{
				position: absolute;
				top:445px;left: 391px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.input3{
				position: absolute;
				top:564px;left: 391px;
				width: 314px;height: 36px;
				background-color: #ffffff;
				border-radius: 5px;
				border: solid 1px #cecece;
				z-index: 1;
			}
			.b1{
				position: absolute;
				left:391px ;top:657px ;
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
  <script type="text/javascript">
  $(function(){
  
    		$(".bu1").click(function(){
  			
  					window.location.href="kaishi?uid=1";
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
  			
  			$(".input3").blur(function(){
  			
  			
		  			if($(this).val()!="")
		  			{
		  				if($(this).siblings(".input2").val()!=$(this).val())
		  				{
		  				$(this).val("")
		  				$(this).prop("placeholder","密码不同，请重新输入");
		  				}else
		  				{
		  				$(this).siblings(".b1").prop("disabled",false)
		  				}
		  			}

  			})
  
  	$(".backhome").click(function(){
  			window.location.href="homepage.jsp";
  			})
  			
  })
  </script>
  <body>
    <div id="newdiv">
			<img src="img/newpersonal1.jpg"/>
		</div>
		<!-- 左侧导航栏 -->
		<button class="bu1">账户设定</button>
		<button class="bu2">订单信息</button>
		<button class="bu3">修改密码</button>
		<button class="bu4">收藏夹</button>
		<button class="bu5">售后管理</button>
		<button class="bu6">退出账号</button>
		
		<!-- 显示信息 -->
		<label class="lab1">修改密码</label>
		<label class="lab2">原密码:</label>
		<label class="lab3">新密码:</label>
		<label class="lab4">确认新密码:</label>
		<form action="updatemsg" method="post">
		<input type="hidden" name="uid" value="${u.uid}"/>
		<input type="text" class="input1" value="${u.password}"/>
		<input type="text" class="input2"  value=""/>
		<input type="text" class="input3" name="password" value=""/>
		<button class="b1" disabled="ture">保存</button>
		</form>
		<div style="position:absolute;top:27px;left:1635px;width: 16px;height: 16px" class="backhome"></div>
  </body>
</html>
