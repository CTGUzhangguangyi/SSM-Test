<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopcartpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
			.button_su{
			  overflow: hidden;
			  position: absolute;
			  top:537px;left:855px ;
			  display: inline-block;
			  border-radius: 3px;
			  margin-bottom: 30px;
			}
			.su_button_circle{
			  /* background-color: red; */
			  border-radius: 1000px;
			  position: absolute;
			  left:0;
			  top:0;
			  width: 0px;
			  height: 0px;
			  margin-left: 0px;
			  margin-top: 0px;
			  pointer-events: none;
			  /*animation-timing-function: ease-in-out;*/ 
			} 
			.button_su_inner{
				display: inline-block;
				width: 206px;
				height: 42px;
				border: none;
				border-radius: 3px;
				background: #e80f0f;
				
				font-family: SourceHanSansCN-Norm;
				color: #ffffff;
				font-size: 20px;
				font-weight: normal;
				text-align: center;
				line-height: 28px;
				letter-spacing: 0px;
				transition: 400ms;
				text-decoration: none;
				z-index: 100000;
			}
			.button_text_container{
			   position:relative;
			   z-index: 10000;
			}
			.explode-circle {
			   animation: explode 0.5s forwards;
			
			}
			.desplode-circle{
			   animation: desplode 0.5s forwards;
			}
			@keyframes explode {
			  0% {
				width: 0px;
				height: 0px;
				margin-left: 0px;
				margin-top: 0px;
				background-color: rgba(42, 53, 80,0.2);
			  }
			  100% {
				width: 400px;
				height: 400px;
				margin-left: -200px;
				margin-top: -200px;
				/* background-color: rgba(20, 180, 87,0.8); */
				/* background-color: rgba(240, 108, 108,0.8); */
				background-color: rgba(25, 133, 217,0.8);
			  }
			}
			@keyframes desplode {
			  0% {
				width: 400px;
				height: 400px;
				margin-left: -200px;
				margin-top: -200px;
				/* background-color: rgba(20, 180, 87,0.8); */
				/* background-color: rgba(240, 108, 108,0.8); */
				background-color: rgba(25, 133, 217,0.8);
			  }
			  100% {
				width: 0px;
				height: 0px;
				margin-left: 0px;
				margin-top: 0px;
				/* background-color: rgba(129, 80, 108,0.6); */
				background-color: rgba(42, 53, 80,0.2);
			  }
			}
		</style>
  </head>
  <script>
		$(document).ready(function(){
			$(".button_su_inner").click(function(){
				window.location.href = "homepage.jsp";
			})
		
		$( ".button_su_inner" ).mouseenter(function(e) {
		   var parentOffset = $(this).offset(); 
		  
		   var relX = e.pageX - parentOffset.left;
		   var relY = e.pageY - parentOffset.top;
		   $(this).prev(".su_button_circle").css({"left": relX, "top": relY });
		   $(this).prev(".su_button_circle").removeClass("desplode-circle");
		   $(this).prev(".su_button_circle").addClass("explode-circle");
		
		});
		
		$( ".button_su_inner" ).mouseleave(function(e) {
		
		     var parentOffset = $(this).offset(); 
		
		     var relX = e.pageX - parentOffset.left;
		     var relY = e.pageY - parentOffset.top;
		     $(this).prev(".su_button_circle").css({"left": relX, "top": relY });
		     $(this).prev(".su_button_circle").removeClass("explode-circle");
		     $(this).prev(".su_button_circle").addClass("desplode-circle");
		
		});
		})
	</script>
  <body>
    <div style="position: absolute;top:0px;height: 0px;z-index: 0;">
			<img src="img/noshoplogin.jpg"/>
		</div>
		
		<div class="button_su">
		  <span class="su_button_circle">
		  </span>
		  <button href="#" class="button_su_inner">
		    <span class="button_text_container"> 
		      去登录
		    </span>
		  </button>
		</div>
  </body>
</html>
