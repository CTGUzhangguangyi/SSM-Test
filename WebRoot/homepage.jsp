<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homepage.jsp' starting page</title>
    
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
		<link rel="stylesheet" href="css/shouye.css" />
		
		<script type="text/javascript">
		$(document).ready(function() {
		 $("#myCarousel1").carousel('cycle');
		 $("#myCarousel2").carousel('cycle');
			$("#t1").click(function() {
				console.log("調到購物車");
			});
		});
	</script> 
		<!--点击改变登入框透明度-->
	<script>
		var flag1 = false;
		var flag2 = false;
		$(document).ready(function() {
			$("#loginbutton").click(function() {
				console.log("flag1:"+flag1);	
				$.ajax({
					url:"isloginjust",
					type:"post",
					success:function(data){
						console.log("data"+data);
						if(data=="true")
						{
							$("#reloginwarning").css("display","block");
						}
						else{
							if(flag1 == false) {
							$("#22").css("opacity", "255");
							$("#33").css("opacity","0");
							flag1 = true;
			
							flag2=false;
							} else {
							$("#22").css("opacity", "0");
							flag1 = false;
							flag2=true;
							}
						}
					}
				})
			})
		});
		$(document).ready(function() {
			$("#signinbutton").click(function() {
				console.log("flag2:"+flag2);
				if(flag2 == false) {
					$("#33").css("opacity", "255");
					flag2 = true;
					$("#22").css("opacity","0");
					flag1=false;
				} else {
					$("#33").css("opacity", "0");
					flag2 = false;
					flag1= true;
				}
			})
		});
	</script>
	
	<!--跳转到商城函数-->
	<script>
		function linktoStore() {
			window.location.href="Store.jsp";
		}
	</script>

	<!--弹出登入界面-->
	<script>
		function login() {
			console.log("登入");
		}
	</script>

	<!--弹出注册界面-->
	<script>
		function signin() {
			console.log("注册");
		}
	</script>
	<script>
		var flag =false;
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
		$("#shop").click(function(){
			window.location.href = "shopcartpage.jsp";
		})
		$("#bt").click(function(){
			console.log(1);
			$("#picture3").css("opacity", "0");
		})
	});
		
	</script>
	
	<script type="text/javascript">
	
		
			 $(document).ready(function(){
					$("#ttts").click(function(){
							var username=$("#username").val();
							var password=$("#password").val();
							/* console.log("clicked"); */
							
							if(username!=""&&password!="")
							{
							console.log("username"+username);
							console.log("password"+password);
								$.ajax({
								url:"login",
								type:"post",
								data:{username:username,password:password},
								success:function(data){
									if(data=="false")
									{
										$("#wlabel").text("用户名或密码错误");
									}
									else{
									$("#wlabel").text(" ");
									window.location.href="loadingAfterloginsuccess.jsp" ;
									}
								}
							})
							}
							else{
								$("#wlabel").text("用户名或密码不能为空");
							}
					})
			}) 
			
			
			
			 $(document).ready(function(){
					$("#signn").click(function(){
							var username=$("#signusername").val();
							var password=$("#signpassword").val();
							if(username!=""&&password!="")
							{
								 $.ajax({
								url:"ajustisNameUsed",
								type:"post",
								data:{username:username},
								success:function(data){
									
									 if(data=="false")
									{
									$("#slabel").text(" ");
									window.location.href="signin?username="+username+"&password="+password;
									}
									else{
									$("#slabel").text("该用户名已被注册");
									} 
								}
							})  
							}
							else{
								$("#slabel").text("用户名或密码为空");
							}
							
					})
			}) 
	</script>
  </head>
  
  <body>
   		<div style="position: absolute;top: 0px;left: 0px;">
			<img src="img/shouye1.png" style="z-index: 0;"></img>
			<div style="position: absolute;top: 2240px;left: 369px;">
				<p>
					<video width="1180px" height="420px" controls>
						<source src="video/52502173_1_0.mp4" type="video/mp4">
						<!-- <source src="movie.ogg" type="video/ogg"> -->
						您的浏览器不支持Video标签。
					</video>
				</p>
			</div>

			<!--
        	作者：offline
        	时间：2019-07-24
        	描述：第一個輪播
        -->
			<div style="position: absolute;top:99px;width: 1920px;height:700px ;">
				<!-- 个人中心按钮 -->
				<button style="position: absolute;top:-40px;left: 1540px;width: 15px;height: 16px;opacity: 0;z-index: 3;" id="personal"></button>
				<!-- 显示个人中心div块 -->
				<div>
					<img id="picture3" src="img/personal1.jpg" style="position: absolute;left: 1306px;top: 0px;opacity:0;z-index: 3;">
					<button type="button" style="position: absolute;top:199px;left:1403px; width: 55px;height: 14px;opacity: 0;z-index: 3;" id="bt"></button>
				</div>
				<!-- 购物车未登录状态下按钮 -->
				<button style="position: absolute;top:-40px;left: 1503px;width: 16px;height: 16px;opacity: 0;z-index: 3" id="shop"></button>
				<div id="myCarousel1" class="carousel slide" data-interval="1500">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel1" data-slide-to="1"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="img/banner1.jpg" alt="First slide">
						</div>
						<div class="item">
							<img src="img/banner2.png" alt="Second slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel1" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel1" data-slide="next">&rsaquo;</a>

				</div>
			</div>

			<!--配件輪播部分-->
			<div style="position: absolute; top:825px;width: 1920px;height: 325px;">
				<div id="myCarousel2" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel2" data-slide-to="1"></li>
						<li data-target="#myCarousel2" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="img/lunbo1.png" alt="First slide">
						</div>
						<div class="item">
							<img src="img/lunbo2.jpg" alt="Second slide">
						</div>
						<div class="item">
							<img src="img/lunbo3.jpg" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="carousel-control left" href="#myCarousel2" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel2" data-slide="next">&rsaquo;</a>

				</div>

			</div>

			<!--登入模块-->
		
			<div id="22" style="opacity: 0;">
			<img src="img/login_bac.png" class="x"></img>
				<input id="username" type="text" class="nametext" placeholder="  手机/邮箱/用户名" />
				<input id="password" type="password" class="pwdtext" placeholder="  密码" />
			    <input id="ttts" type="submit" class="btn btn-default" value="确认" style="z-index: 2;position: absolute;;left: 1206px;top: 317px;width: 313px;height: 40px;background-color: #eb0028;font-family: SourceHanSansCN-Normal;font-size: 16px;font-weight:bold;font-stretch: normal;color: #ffffff;" />
			    <!--错误提示-->
			 <label id="wlabel" style="z-index:4;position:absolute;left:1304px;top: 365px;width: 313px;height: 40px;font-size: 20;color: red;font-family: PingFang-SC-Regular;font-size: 13px;font-stretch: normal;"></label>
			</div>
			
			
			<!--注册模块-->
			
			<div id="33" style="opacity: 0;">
				<img src="img/zhuce.png" style="position: absolute;left: 1168px;top: 99px;width: 393px;height: 531px;"></img>
				<input id="signusername" type="text" style="z-index: 2;width: 313px;height: 40px;position: absolute;left: 1206px;top: 187px;"
				 placeholder="  手机/邮箱/用户名" />
				<input id="signpassword"  type="password" class="pwdtext1" placeholder="  密码" />
				<input id="signn" type="submit" class="btn btn-default" value="创建账户" style="z-index: 2;position: absolute;left: 1206px;top: 376px;width: 313px;height: 40px;background-color: #eb0028;font-family: SourceHanSansCN-Normal;font-size: 16px;font-weight:bold;font-stretch: normal;color: #ffffff;" />
				<!-- <button style="position: absolute;top: 440px;left:1345px;width: 36px;height: 17px; opacity: 100;z-index: 2;" id="checklogin"></button> -->
				<label id="slabel" style="z-index:4;position:absolute;left:1304px;top: 350px;width: 313px;height: 40px;font-size: 20;color: red;font-family: PingFang-SC-Regular;font-size: 13px;font-stretch: normal;"></label>
			</div>
			
			
			<label style="position: absolute;left: 850px;top:54px;width: 32px;height: 16px;font-family: PingFang-SC-Regular;font-size: 16px;font-weight: normal;font-stretch: normal;color: #333333;opacity: 0;"
			 onclick="linktoStore()">商城</label>
			<label style="position: absolute;left: 1490px;top:5px;width: 72px;height: 12px;font-family: PingFang-SC-Regular;font-size: 13px;font-weight: normal;font-stretch: normal;color: #333333;opacity: 0;"
			 id="loginbutton">登入</label>
			<label style="position: absolute;left: 1535px;top:5px;width: 32px;height: 12px;font-family: PingFang-SC-Regular;font-size: 13px;font-weight: normal;font-stretch: normal;color: #333333;opacity: 0;"
			 id="signinbutton">注册</label>
			<button style="position: absolute;left: 1520px;top:57px;width: 16	px;height: 16px;opacity: 0;" id="t1"><span>确定</span></button>

			 <label id="reloginwarning" style="position:absolute;left:1300px;top:10px;display:none">您已登入无需重复登录</label>
		</div>
  </body>
</html>
