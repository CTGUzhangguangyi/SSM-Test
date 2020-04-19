<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Store.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		
			<script>
		$(function() {
			$("#myCarousel").carousel('cycle');
			$("#t1").click(function() {
				window.location.href="Detail.jsp";
			})
			$("#t2").click(function() {
				
			})
			$("#t3").click(function() {
				
			})
			$("#t4").click(function() {
				
			})
			$("#t5").click(function() {
				
			})
			$("#t6").click(function() {
				/* window.location.href="detail.html"; */
			})
			$("#t7").click(function() {
				
			})
			$("#t8").click(function() {
				/* window.location.href="detail.html"; */
			})
			$("#t9").click(function() {

			})
			$("#t10").click(function() {

			})
			$("#t11").click(function() {

			})
			/* 返回首页按钮 */
			$("#back").click(function() {
				window.location.href = "homepage.jsp";
			})
			/* 弹出个人中心 */

			var flag = false;
			$(document).ready(function() {
				$("#personal").click(function() {
					console.log("登入");
					if (flag == false) {
						$("#picture3").css("opacity", "255");
						flag = true;
					} else {
						$("#picture3").css("opacity", "0");
						flag = false;
					}
				})
			});
			$("#shop").click(function(){
				window.location.href = "shoppage.html";
			})	
			$("#bt").click(function(){
				console.log(1);
				$("#picture3").css("opacity", "0");
			})
		});
	</script>
	
	<!--配件的点击事件-->
	
	<script type="text/javascript">
	$(document).ready(function(){
		$("#t7").click(function() {
				window.location.href="Detail1.jsp";
			})
	})
	</script>
  </head>
  
  <body>
   <div style="position: absolute;top: 0px;left: 0px;">
			<img src="img/shang.jpg" class="shangchen" style="z-index: 0;">
			<!-- 返回到首页按钮 -->
			<button style="position: absolute;top:11px;left: 360px;width: 44px;height: 44px;opacity: 0;" id="back"></button>
			<!-- 个人中心按钮 -->
			<button style="position: absolute;top:27px;left: 1545px;width: 15px;height: 16px;opacity: 0;" id="personal"></button>
			<!-- 购物车未登录状态下按钮 -->
			<button style="position: absolute;top:27px;left: 1503px;width: 16px;height: 16px;opacity: 0;" id="shop"></button>
			

			<!-- 显示个人中心div块 -->
			<div>
				<img id="picture3" src="img/personal1.jpg" style="position: absolute;left: 1306px;top: 70px;opacity:0;z-index: 2;">
				<button type="button" style="position: absolute;top:268px;left:1404px; width: 55px;height: 14px;opacity: 0;z-index: 2;" id="bt"></button>
			</div>
            
			
			<!-- 轮播图 -->
			<div style="position: absolute;left: 0px;top: 71px;z-index: 1;">
				<div id="myCarousel" class="carousel slide" data-interval="2000">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="img/ban1.png" alt="First slide">
						</div>
						<div class="item">
							<img src="img/ban2.png" alt="Second slide">
						</div>
						<div class="item">
							<img src="img/ban3.png" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			<!-- 主要产品 -->
			<div style="position: absolute;left: 174px;top: 586px;" id="t1">
				<img src="img/oneplus7pro.jpg">
			</div>
			<div style="position: absolute;left: 707px;top: 586px;" id="t2">
				<img src="img/oneplus7.jpg">
			</div>
			<div style="position: absolute;left: 1242px;top: 586px;" id="t3">
				<img src="img/oneplus6t.jpg">
			</div>
			<div style="position: absolute;left: 174px;top: 1316px;" id="t4">
				<img src="img/oneplus6.jpg">
			</div>
			<div style="position: absolute;left: 707px;top: 1316px;" id="t5">
				<img src="img/oneplus5t.jpg">
			</div>
			<div style="position: absolute;left: 1242px;top: 1316px;" id="t6">
				<img src="img/knowmore.jpg">
			</div>

			<!-- 配件 -->
			<div style="position: absolute;left: 174px;top: 2146px;" id="t7">
				<img src="img/earphone.png">
			</div>
			<div style="position: absolute;left: 707px;top: 2146px;" id="t8">
				<img src="img/explorer%20bag.png">
			</div>
			<div style="position: absolute;left: 1242px;top: 2146px;" id="t9">
				<img src="img/steelfilm.png">
			</div>
			<div style="position: absolute;left: 174px;top: 2876px;" id="t10">
				<img src="img/protecter.png">
			</div>
			<div style="position: absolute;left: 707px;top: 2876px;" id="t11">
				<img src="img/travelbag.jpg">
			</div>
			<div style="position: absolute;left: 1242px;top: 2876px;" id="t12">
				<img src="img/combination.png">
			</div>
		</div>
  </body>
</html>
