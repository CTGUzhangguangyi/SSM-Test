<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Detail1.jsp' starting page</title>
    
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
		<link rel="stylesheet" href="css/newshouye.css" />
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style>
			#div1{
				position: absolute;
				top:229px;left:356px;
				width: 498px;height: 696px;
				background-color: #f6f6f6;
				z-index: 2;
			}
			#button1{
				position: absolute;
				top:971px; left:508px;
				width: 78px;height: 84px;
				background-color: #f6f6f6;
				border: none;
				z-index: 3;
			}
			#button1:hover{
				background-color: white;
				border:solid 1px #eb0028;
			}
			#button2{
				position: absolute;
				top:971px; left:628px;
				width: 78px;height: 84px;
				background-color: #f6f6f6;
				border: none;
				z-index: 3;
			}
			#button2:hover{
				background-color: white;
				border:solid 1px #eb0028;
			}
			#bb1{
				position: absolute;
				top:399px;left:1030px;
				width: 320px;height: 59px;
				background-color: #eb0028;
				border: none;
				
				font-family: PingFang-SC-Regular;
				font-size: 18px;
				border: none;
				color: white;
				text-align: center;
				text-decoration: none;
				transition-duration: 0.4s;
				z-index: 3;
			}
			#bb1:hover{
				background-color: #ba0409;
				color: white;
			}
		</style>
  </head>
  <script type="text/javascript">
		$(function() {
			$("#back").click(function() {
				window.location.href = "store.html";
			})
			$("#button1").click(function(){
				$("#div1").html("<img src='img/earsmall.png' style='position: relative;padding:97px 38px 77px 41px;'/>")
			})
			$("#button2").click(function(){
				$("#div1").html("<img src='img/ear2.png' style='position: relative;padding:61px 85px 113px 85px;'/>")
			})
		});
	</script>
	
	<!--当你点击购物车按钮时进行判断-->
	<script type="text/javascript">
  $(document).ready(function(){
  			$("#cartclickbutton").click(function(){
  				console.log("clicked");
  						$.ajax({
								url:"isloginjustWithJudegeEmpty",
								type:"post",
								dataType:"json",
								success:function(data){
									var j=0;
									var is_login=false;
									var is_empty=true;
									$(data).each(function(i,s){
									
										if(j==0&&s==true)
										{
											is_login=true;
										}
										if(j==1&&s==false)
										{
											is_empty=false;
										}
										j++;
									});	
									console.log(is_login);	
									console.log(is_empty);
								if(is_login==false)
								{
									 window.location.href="shopcartpageWhenNotlogin.jsp";
								}	
								else if(is_empty==true)
								{
									window.location.href="shopcartpageWhenloginButEmpty.jsp"; 
								}	
								else{
									window.location.href="shopingcartDisplay.jsp";
								}
					}
				}) 
  			})
  		})
  </script>
  <body>
   <div style="position: absolute;left:0px;top:0px;width: 1920px;">
			<img src="img/xiangqing1.jpg" "position: absolute;left:0px;top:0px;width: 1920px;"></img>
		</div>
		
		<div id="div1">
			<img src="img/earsmall.png" style="position: relative;padding: 97px 38px 77px 41px;"/>
		</div>
		
		<button id="button1">
			<img src="img/earbig.png" style="position: relative;padding:4px 8px 3px 1px;"/>
		</button>
		<button id="button2">
			<img src="img/ear1.png"/>
		</button>
		<button id="bb1">加入购物车</button>
		<!-- 返回商城 -->
		<div style="position: absolute;top:0px;left: 843px;width: 50px;height: 70px;z-index: 2;" id="back"></div>
		<!--主商品-->
		<div id="a1" style="position: absolute;left:360px;top:156px;width: 548px;height: 715px;z-index: 1;" />
		</div>
		<!--保障服务-->
		<div id="a2" style="position: absolute;left:967px;top:634px;width: 282px;height: 120px;z-index: 1;"></div>
		<div id="a3" style="position: absolute;left:1277px;top:634px;width: 282px;height: 120px;z-index: 1;"></div>
		<div name="a4" style="position: absolute;left:967px;top:773px;width: 282px;height: 120px;z-index: 1;"></div>
		<div id="a5" style="position: absolute;left:1277px;top:773px;width: 282px;height: 120px;z-index: 1;"></div>
		<!--价格-->
		<div id="a6" style="position: absolute;left:967px;top:130px;width: 189px;height: 56px;z-index: 1;"></div>
		<!--评论-->
		<div id="a7" style="position: absolute;left:360px;top:1329px;width: 1200px;height: 262px;z-index: 1;"></div>
		<!--商城-->
		<div id="a8" style="position: absolute;left:852px;top:26px;width: 32px;height: 16px;z-index: 1;"></div>
		<!--个人信息-->
		<div id="a9" style="position: absolute;left:1545px;top:26px;width: 16px;height: 16px;z-index: 1;"></div>
		<!--购物车-->
		<div id="cartclickbutton" style="position: absolute;left:1503px;top:26px;width: 16px;height: 16px;z-index: 1;">fsf</div>
		
		
		
		<!--登入模块-->
		<div id="22" style="opacity: 255;">
			<img src="img/login_bac.png" class="x"></img>
				<button id="closebutton" type="button" style="background-color:transparent;border-style:hidden;z-index:4;width:50px;height:50px;position:relative;left:1200px;top:65px" >
					<span class="glyphicon glyphicon-remove" style="font-size:30"></span>
				</button>
				<input id="username" type="text" style="z-index: 4;position:absolute;left:904px;top:185px;width: 313px;height: 40px;background-color: #ffffff;border-radius: 2px;border: solid 1px #8f8f8f;" placeholder="  手机/邮箱/用户名" />
				<input id="password" type="password" style="position: absolute;left: 904px;top:250px;width: 313px;height: 40px;background-color: #ffffff;border-radius: 2px;border: solid 1px #aaaaaa;	z-index: 4;" placeholder="  密码" />
			    <input id="ttts" type="submit" class="btn btn-default" value="确认" style="z-index: 4;position: absolute;;left: 906px;top: 317px;width: 313px;height: 40px;background-color: #eb0028;font-family: SourceHanSansCN-Normal;font-size: 16px;font-weight:bold;font-stretch: normal;color: #ffffff;" />
			    <!--错误提示-->
			 <label id="wlabel" style="z-index:5;position:absolute;left:1004px;top: 365px;width: 313px;height: 40px;font-size: 20;color: red;font-family: PingFang-SC-Regular;font-size: 13px;font-stretch: normal;"></label>
			</div>
			<button id="cartclickbutton" style="position: absolute;left:1503px;top:27px;width:16;height:16;z-index:3;opacity:0"></button>
			<button id="personMsgclickbutton" style="position: absolute;left:1545px;top:27px;width:16;height:16;z-index:3;opacity:0"></button>
			
			<!--暂时存取pid值-->
			<input id="temppid" type="text"/>
			
			<!--显示该用户购物车内的商品数量-->
			<div id="box"></div>
			
  </body>
</html>
