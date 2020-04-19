<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'collection.jsp' starting page</title>
    
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
			.dv1{
				position: relative;
				left:0 px ;top:0px ;
				float:
				width: 1314px;
				
				z-index: 1;
			}
			.dv2{
				position: absolute;
				left: 0px;
				width: 1314px;height: 74px;
				background-color: #FFFFFF;
				z-index: 1;
			}
			.id1{
				position: relative;
				width: 197px;height: 42px;
				left: 800px;top: 16px;
				background-color: #ec0000;
				border: none;
				border-radius: 6px;
				z-index: 1;
				
				font-family: AdobeHeitiStd-Regular;
				font-size: 18px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #ffffff;
			}
			.id1:hover{
				background-color: #b5011f;
			}
			.id2{
				position: relative;
				width: 197px;height: 42px;
				left: 850px;top: 16px;
				background-color: #ec0000;
				border: none;
				border-radius: 6px;
				z-index: 1;
				
				font-family: AdobeHeitiStd-Regular;
				font-size: 18px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #ffffff;
			}
			.id2:hover{
				background-color: #b5011f;
			}
			.dv{
				width:1314px;
				height: 500px;
				position: absolute;
				top:237px;
				left:334px;
				z-index: 5;
			}
			.div3{
				width:1314px;
				height:200px;
				background: red;
				position: absolute;
	
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
  			
  			$(".dele").click(function(){
  			
  						window.location.href="deleshop?uid="+${u.uid}+"&pid="+$(this).prop("name");
  			})
  			$(".backhome").click(function(){
  			window.location.href="homepage.jsp";
  			})
  			
  
  })
  </script>
  <body>
    <div id="newdiv">
			<img src="img/newpersonal.jpg" />
		</div>
		<!-- 左侧导航栏 -->
		<button class="bu1">账户设定</button>
		<button class="bu2">订单信息</button>
		<button class="bu3">修改密码</button>
		<button class="bu4">收藏夹</button>
		<button class="bu5">售后管理</button>
		<button class="bu6">退出账号</button>
		<label class="lab1">个人收藏</label>
		
		
		<div class="dv">
		<!-- 存放数据的div -->
		<div class="dv1"> 
		  	<table class="table">
		  	<tr style="height: 80px">
			<td>商品名称</td>
			<td>商品价格</td>
			<td>商品状态</td>
			<td>商品颜色</td>
			<td>选项</td>
			</tr>
		  	<c:forEach var="s" items="${slist}">
		<tr>
			<td>${s.p.pname}</td>
			<td>${s.p.price}</td>
			<td>${s.p.ptype}</td>
			<td>${s.p.pcolor}</td>
			<td><button class="dele" name="${s.p.pid}">删除</button></td>
			</tr>
		</c:forEach>
			</table>
		 </div>
		<!-- 存放按钮的div -->
		<div class="dv2">
			<button class="id1">返回商城 了解更多</button>
			<button class="id2">一键加入购物车</button>
		</div>
		
    	</div>
    	<div style="position:absolute;top:27px;left:1635px;width: 16px;height: 16px" class="backhome"></div>
  </body>
</html>
