<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Detail.jsp' starting page</title>
    
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
		<link rel="stylesheet" href="css/newshouye.css" />
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
				<style>
				#a7{
				position: relative;
				width: 1200px;height: 262px;
				margin-bottom: 34px;
				background-color: #FFFFFF;
				z-index: 1;
			}
			#a8{
				position: relative;
				width: 1200px;height: 262px;
				margin-bottom: 34px;
				background-color: #FFFFFF;
				z-index: 1;
			}
			#a9{
				position: relative;
				width: 1200px;height: 262px;
				margin-bottom: 34px;
				background-color: #FFFFFF;
				z-index: 1;
			}
			#i1{
				position: relative;
				float: left;
				width: 59px;height: 59px;
				background-color: #FFFFFF;
				margin-left: 55px;
				margin-top: 42px;
				margin-right: 0px;
				margin-bottom: 0x;

			}
			#la1{
				position: relative;
				float: left;
				margin-left: 15px;margin-top:52px;margin-bottom: 0px;
				background-color: #FFFFFF;
				font-family: SourceHanSansCN-Normal;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
				z-index: 1;
			
			}
			#xing{
				position: relative;
				float: left;
				width: 134px;height: 22px;
				margin-left:818px;margin-top: 53px;margin-bottom: 0px;
				margin-right: 68px;
				background-color: #FFFFFF;
				z-index: 1;
			}
			#la2{
				position: relative;
				margin-left: 15px;margin-top: 11px;margin-bottom: 0px;
				background-color: #FFFFFF;
				font-family: SourceHanSansCN-Normal;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
				z-index: 1;
			}
			#article{
				position: relative;
				margin-left: 129px;margin-top: 25px;margin-bottom: 25px;margin-right: 70px;
				font-family: SourceHanSansCN-Normal;
				text-align: center;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				line-height: 25px;
				letter-spacing: 1px;
				color: #333333;
				z-index: 1;
			}
			.bon{
				position: absolute;
				width: 27px;height: 27px;
				left: 1532px;top: 2200px;
				opacity: 0;
				z-index: 2;
			}
			#cover{
				background:#000;
				position:absolute;
				left:0px;top:0px;width:100%;height: 2626px;
				filter:alpha(opacity=30);opacity:0.3;display:none;
				z-index:3;
			}
			#send{
				position: absolute;
				left:360px;top:1903px;
				width: 1200px;height: 280px;
				background-color: #FFFFFF;
				display: none;
				z-index: 8;
			}
			#i2{
				position: relative;
				float: left;
				width: 59px;height: 59px;
				background-color: #FFFFFF;
				margin-left: 55px;
				margin-top: 42px;
				margin-right: 0px;
				margin-bottom: 0px;
			}
			#l1{
				position: relative;
				float: left;
				margin-left: 15px;margin-top:50px;margin-bottom: 0px;
				background-color: #FFFFFF;
				font-family: SourceHanSansCN-Normal;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
				opacity: 100;
			}
			#tt1{
				position: relative;
				float: left;
				align-items: center;
				margin-left:818px ;margin-top: 30px;margin-right: 0px;margin-bottom: 0px;
			}
			.like{
				font-size:35px;  color:#ccc; cursor:pointer;
			}
			.cs{font-size:35px;  color:#f00;cursor:pointer;}
			#tt2{
				position: relative;
				float: left;
				margin-left:0px ;margin-top: 30px;margin-right: 0px;margin-bottom: 0px;
			}
			#tt3{
				position: relative;
				float: left;
				margin-left:0px ;margin-top: 30px;margin-right: 0px;margin-bottom: 0px;
			}
			#tt4{
				position: relative;
				float: left;
				margin-left:0px ;margin-top: 30px;margin-right: 0px;margin-bottom: 0px;
			}
			#tt5{
				position: relative;
				float: left;
				margin-left:0px ;margin-top: 30px;margin-right: 0px;margin-bottom: 0px;
			}
			#l2{
				position: relative;
				margin-left: 15px;margin-top: 5px;margin-bottom: 0px;
				background-color: #FFFFFF;
				font-family: SourceHanSansCN-Normal;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
			}
			#in1{
				position: relative;
				width: 1016px;height: 80px;
				border: none;
				background-color: #cfcfcf;
				margin-left: 129px;margin-top: 24px;margin-bottom: 0;margin-right: 55px;
			}
			#n1{
				position: relative;
				float: left;
				width: 90px;height: 27px;
				background-color: #eb0028;
				margin-left: 129px;
				border: none;margin-top: 20px;margin-bottom: 0;margin-right: 0px;
				border-radius: 2px;
				
				font-family: SourceHanSansCN-Light;
				text-align: center;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 0px;
				color: #ffffff;
			}
			#n2{
				position: relative;
				float: left;
				width: 50px;height: 27px;
				background-color: #eb0028;
				margin-left: 876px;margin-top: 20px;margin-bottom: 0;
				border: none;
				border-radius: 2px;
				
				font-family: SourceHanSansCN-Light;
				text-align: center;
				font-size: 16px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 0px;
				color: #ffffff;
			}
			#comment{
				position: absolute;
				width: 1200px;
				height: 880px;
				top:1309px;
				left: 360px;
				background-color: #eeeeee;
			}
				#box{
				 height: 18px;
          	  	 width: 18px;
            	 background: #f00;
           		 border-radius: 50%;
           		 position: absolute;
           		 left:1513px;
           		 top:35px;
           		 z-index:4;
           		 color:white;
           		 font-weight:bold;
           		 text-align:center
				}
			#bb1{
				position: absolute;
				top: 979px;left:372px ;
				width: 244px;height: 58px;
				background-color: #eb0028;
				border: none;
				
				font-family: PingFang-SC-Medium;
				font-weight: normal;
				font-stretch: normal;
				font-size: 25px;
				color: #eeeeee;
				text-align: center;
				text-decoration: none;
				transition-duration: 0.4s;
				z-index: 1;
			}
			#bb1:hover {
				background-color: #a80817;
				color: white;
			}
			#bb2{
				position: absolute;
				top: 979px;left:646px ;
				width: 244px;height: 58px;
				background-color: #eb0028;
				border: none;
				
				font-family: PingFang-SC-Medium;
				font-weight: normal;
				font-stretch: normal;
				font-size: 25px;
				color: #eeeeee;
				text-align: center;
				text-decoration: none;
				transition-duration: 0.4s;
				z-index: 1;
			}
			#bb2:hover {
				background-color: #a80817;
				color: white;
			}
			#bth1 {
				position: absolute;
				top: 825px;
				left: 413px;
				width: 125px;
				height: 41px;
				background-color: white;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			#bth1:hover {
				background-color: #eb0028;
				color: white;
			}
			#bth2 {
				position: absolute;
				top: 825px;
				left: 571px;
				width: 125px;
				height: 41px;
				background-color: white;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			#bth2:hover {
				background-color: #eb0028;
				color: white;
			}
			#bth3 {
				position: absolute;
				top: 825px;
				left: 728px;
				width: 125px;
				height: 41px;
				background-color: white;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			#bth3:hover {
				border: solid 2px #eb0028;
				color: #000000;
			}
			
			
			#kind1{
			background-color: #f2f2f2;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			
			#kind1:hover {
				border: solid 2px #eb0028;
				color: #000000;
			}
			
			#kind2{
			background-color: #f2f2f2;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			
			#kind2:hover {
				border: solid 2px #eb0028;
				color: #000000;
			}
			
			#kind3{
			background-color: #f2f2f2;
				border-radius: 4px;
				/* Green */
				font-family: PingFang-SC-Regular;
				font-size: 16px;
				border: none;
				color: #000000;
				text-align: center;
				text-decoration: none;
				/* display: inline-block; */
				transition-duration: 0.8s;
				z-index: 2;
			}
			
			#kind3:hover {
				border: solid 2px #eb0028;
				color: #000000;
			}
		</style>
  </head>
  
  
 <!--  点击购物车图标时跳转界面 -->
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
									console.log("is_login"+is_login);	
									console.log("is_empty"+is_empty);
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
  <script type="text/javascript">
  		$(document).ready(function(){
  			$("#bb2").click(function(){
  				console.log("clicked");
  						$.ajax({
								url:"isloginjust",
								type:"post",
								success:function(data){
									console.log(data);
									if(data!="true")
									{
										$("#22").css("opacity","255");
										$("#cover").css("display","block");
										$("#cover").css("height","4054px");
									}
									else{
										$("#22").css("opacity","0");
									}
									
					}
				})
  			})
  		})
  
  		$(document).ready(function(){
  		$("#closebutton").click(function(){
  			$("#22").css("opacity","0");
  			$("#cover").css("display","none");
  		})
  		})
		$(function() {
			$("#a1").click(function() {
				console.log("+++++")
			})
			$("#a2").click(function() {
				console.log("+++++")
			})
			$("#a3").click(function() {
				console.log("+++++")
			})
			$("#a4").click(function() {
				console.log("+++++")
			})
			$("#a5").click(function() {
				console.log("+++++")
			})
			$("#a6").click(function() {
				console.log("+++++")
			})
			$("#a7").click(function() {
				console.log("+++++")
			})
			$("#a8").click(function() {
				console.log("+++++")
			})
			$("#a9").click(function() {
				console.log("+++++")
			})
			$("#a10").click(function() {
				console.log("+++++")
			})
			$("#a11").click(function() {
				console.log("+++++")
			})
			$("#a12").click(function() {
				console.log("+++++")
			})
			$("#back").click(function() {
				window.location.href = "Store.jsp";
			})
			$("#bth1").click(function() {
				$("#div1").html("<img class='img1' src='img/3.png'/>")
				$("#kind1").text("星雾蓝6G+256GB");
				$("#kind2").text("星雾蓝8G+256GB");
				$("#kind3").text("星雾蓝12G+256GB");
				
			})
			$("#bth2").click(function() {
				$("#div1").html("<img class='img1' src='img/1.png'/>")	
				$("#kind1").text("曜石灰6G+256GB");
				$("#kind2").text("曜石灰8G+256GB");
				$("#kind3").text("曜石灰12G+256GB");
				
			})
			$("#bth3").click(function() {
				$("#div1").html("<img class='img1' src='img/2.png'/>")
				$("#kind1").text("皓月金6G+256GB");
				$("#kind2").text("皓月金8G+256GB");
				$("#kind3").text("皓月金12G+256GB");
			})


		});
	</script>
	
	<script>
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
									window.location.href="Detail.jsp" ;
									}
								}
							})
							}
							else{
								$("#wlabel").text("用户名或密码不能为空");
							}
					})
			}) 
	</script>
	<script type="text/javascript">
	
	$(document).ready(function()
	{
	$("#kind1").click(function(){
		$("#price").text("3999.00");
	})
	$("#kind2").click(function(){
		$("#price").text("4499.00");
	})
	$("#kind3").click(function(){
		$("#price").text("4999.00");
	})
	
	})
	</script>
	
	
	<!--加入购物车点击事件-->
	<script>
		$(document).ready(function(){
				
				$("#bb1").click(function(){
				var pid = $("#temppid").val();
				 console.log("clicked");
				 /*只有当你选中一个手机型号并点击加入购物车时才起作用*/
				  if(pid!="")
				  {
				  console.log("ajax worked");
				  	$.ajax({
						url:"addintoshopcart",
						type:"post",
						data:{pid:pid},
						success:function(data){
							console.log("uid"+data);
						}
					})
					$.ajax({
						url:"judgeShopEmptyAgain",
						type:"post",
					})
				  }
				})
		})
	</script>
	
	<!--当点击手机类型时动态获取手机型号pid-->
	<script>
		/*手机型号第一个按钮*/
		$(document).ready(function(){
				$("#kind1").click(function(){
					var ptype = $(this).html();
					
					$.ajax({
						url:"getphoneid",
						type:"post",
						data:{ptype:ptype},
						success:function(data){
							$("#temppid").val(data);
						}
					})
				})
		})
		
		/*手机型号第二个按钮*/
		$(document).ready(function(){
				$("#kind2").click(function(){
					var ptype = $(this).html();
					console.log("button2"+ptype);
					 $.ajax({
						url:"getphoneid",
						type:"post",
						data:{ptype:ptype},
						success:function(data){
							 $("#temppid").val(data);
						}
					}) 
				})
		})
		
		/*手机型号第三个按钮*/
		$(document).ready(function(){
				$("#kind3").click(function(){
					var ptype = $(this).html();
					console.log("button3"+ptype);
					 $.ajax({
						url:"getphoneid",
						type:"post",
						data:{ptype:ptype},
						success:function(data){
							console.log(data);
							  $("#temppid").val(data); 
						}
					}) 
				})
		})
		
		$(function () { 
			$(".bon").click(function(){
				$("#cover").css("display","block");
				$("#send").css("display","block");
			})
			var flag = 0 ;
			$("#n1").click(function(){
				
				$("#cover").css("display","none");
				$("#send").css("display","none");
			})
			$("#n2").click(function(){
				console.log(flag);
				var content=$(this).siblings("#in1").val();
				var pid = $("#temppid").val();
				var uid = $(this).prop("class");
					$.ajax({
						url:"insertComment",
						type:"post",
						data:{flag:flag,content:content,pid:pid,uid:uid},
						success:function(data){
							var   str="<div id='a7'><div id='i1'><img src='img/tuxiang.png'></div><label id='la1'>霉你**</label>"
							for(var i=1;i<=5;i++)
							{
							if(i<=flag)
							 str+= "<p id='tt"+i+"' class='cs' style='pointer-events: none;'>&#9752</p>"
							 else
							 {
							  str+="<p id='tt"+i+"' class='like' style='pointer-events: none;'>&#9752</p>"
							 }
							}
							 str+="<label id='la2'>2019.6.29 14:53</label><label id='article'>"+content+"</label></div>"	
							 $(str).insertBefore("#a7");
							 $("#cover").css("display","none");
							 $("#send").css("display","none");
							 $("#a9").css("display","none");
							 $("#a8").prop("id","a9");
						}
					}) 
				
			})
			$(".like").click(function () {
				
				//if($(this).prevAll().prop("class")=="cs")
				var myflag = parseInt($(this).prop("id").charAt(2));
				if(myflag>=flag)
				{
			 	
				$(this).prevAll().prop("class",'cs') 
				$(this).prop("class",'cs')  
				flag = myflag;
				}else
				{
				if(myflag==1)
				{
				
				$(this).prop("class",'like') 
				}
				for(var i=myflag+1;i<=flag;i++)
				{
					
					var t = "#tt"+i;
					$(this).siblings(t).prop("class","like")
				}
				flag = myflag;
				}
				
			})
			$("#personMsgclickbutton").click(function(){
			window.location.href="kaishi?uid="+${uid}
			});
			
		});
		
	</script>
  <body>
  
  <br><br><br><!--遮罩层-->
  <div id="cover" style="background:#000;position:absolute;left:0px;top:0px;width:100%;filter:alpha(opacity=30);opacity:0.3;display:none;z-index:3;"></div>
    <div style="position: absolute;left:0px;top:0px;width: 1920px;">
			<img src="img/xiangqing.jpg" "position: absolute;left:0px;top:0px;width: 1920px;"></img>
		</div>
		
		<div style="position: absolute;top: 200px;left: 416px;width:431px;height: 568px;z-index: 2;" id="div1">
			<img class="img1" src="img/3.png" />
		</div>
		<button id="bth1">星雾蓝</button>
		<button id="bth2">曜石灰</button>
		<button id="bth3">皓月金</button>
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
		<!-- <div id="a7" style="position: absolute;left:360px;top:1329px;width: 1200px;height: 262px;z-index: 1;"></div> -->
		<div id="comment">
			
		<div id="a7">
			<div id="i1"><img src="img/tuxiang.png"></div>
			<label id="la1">霉你**</label>
				
			<!-- <div id="xing"> -->
				<p id="tt1" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt2" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt3" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt4" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt5" class="like" style="pointer-events: none;">&#9752</p>
			<!-- </div> -->
			<label id="la2">2019.6.29 14:53</label>
			<label id="article">加越来越好，永远坚持“不将就”理念！
			</label>
		</div>	
			
		<div id="a8">
			<div id="i1"><img src="img/tuxiang.png"></div>
			<label id="la1">霉你**</label>
				
			<!-- <div id="xing"> -->
				<p id="tt1" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt2" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt3" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt4" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt5" class="like" style="pointer-events: none;">&#9752</p>
			<!-- </div> -->
			<label id="la2">2019.6.29 14:53</label>
			<label id="article">5月22日下的单，用了快一个月了，7P的2K+90hz用了真的就回不去了，续航已经很强了，4000MA电池加上全新的Warp闪充，没电瞬间满血复活，曲面屏显示效果特别好，画质清晰细腻，93%的屏占比也很惊艳，第一个一加手机是5代，用了两年系统依旧流畅，要不是被7
				   P惊艳到可能还在用继续用着5，7P目前已经是最强安卓机的第一梯队了，祝愿一加越来越好，永远坚持“不将就”理念！
			</label>
		</div>
		<div id="a9">
			<div id="i1"><img src="img/tuxiang.png"></div>
			<label id="la1">霉你**</label>
				
			<!-- <div id="xing"> -->
				<p id="tt1" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt2" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt3" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt4" class="like" style="pointer-events: none;">&#9752</p>
				<p id="tt5" class="like" style="pointer-events: none;">&#9752</p>
			<!-- </div> -->
			<label id="la2">2019.6.29 14:53</label>
			<label id="article">5月22日下的单，用了快一个月了，7P的2K+90hz用了真的就回不去了，续航已经很强了，4000MA电池加上全新的Warp闪充，没电瞬间满血复活，曲面屏显示效果特别好，画质清晰细腻，93%的屏占比也很惊艳，第一个一加手机是5代，用了两年系统依旧流畅，要不是被7
				   P惊艳到可能还在用继续用着5，7P目前已经是最强安卓机的第一梯队了，祝愿一加越来越好，永远坚持“不将就”理念！
			</label>
		</div>
		
		</div>
		  
		<div id="send" >
			<div id="i2"><img src="img/tuxiang.png"></div>
			<label id="l1">霉你**</label>
			<p id="tt1" class="like">&#9752</p>
			<p id="tt2" class="like">&#9752</p>
			<p id="tt3" class="like">&#9752</p>
			<p id="tt4" class="like">&#9752</p>
			<p id="tt5" class="like">&#9752</p>
			<label id="l2">2019.6.29 14:53</label>
			<textarea rows="3" id="in1" style="resize: none;"></textarea>
			<button id="n1" >暂不发表</button>
			<button id="n2" class="${uid}">发表</button>
			
			
		</div>
		
		
		<button class="bon"></button>
		<img src="img/comment.png" style="position: absolute;left: 1532px;top: 2200px;z-index: 1;"/>
		<!-- 遮罩 -->
		<div id="cover"></div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!--商城-->
		<div id="a12" style="position: absolute;left:852px;top:26px;width: 32px;height: 16px;z-index: 1;"></div>
		<!--个人信息-->
		<div id="a13" style="position: absolute;left:1545px;top:26px;width: 16px;height: 16px;z-index: 1;"></div>
		<!--购物车-->
		<div id="a14" style="position: absolute;left:1503px;top:26px;width: 16px;height: 16px;z-index: 1;"></div>
		<button id="bb1">加入购物车</button>
		<button id="bb2">立即购买</button>
		
		<!--型号选择按钮-->
		<!--星雾蓝色系-->
		<div style="width:429px;height:137px;position:absolute;left:967px;top:419px;z-index:3">
		<button  class="xinghao1" id="kind1" style="width:178px;height:41px;position:absolute;left:20px;top:20px;z-index:3">星雾蓝6G+256GB</button>
		<button  class="xinghao1" id="kind2" style="width:178px;height:41px;position:absolute;left:220px;top:20px;z-index:3">星雾蓝8G+256GB</button>
		<button  class="xinghao1"  id="kind3"  style="width:178px;height:41px;position:absolute;left:20px;top:80px;z-index:3">星雾蓝12G+256GB</button>
		</div>
		
		
	
		<!--价格显示-->
		<h4 id="price" style="position:absolute;left:1000px;top:152px;height: 30px;line-height:30px;color: #444;text-align: left;font-weight: bold;font-size: 25px">4999.00 </h4>
	
	
		<!--登入模块-->
		<div id="22" style="opacity: 0;">
			<img src="img/login_bac.png" class="x"></img>
				<button id="closebutton" type="button" style="background-color:transparent;border-style:hidden;z-index:4;width:50px;height:50px;position:relative;left:1200px;top:65px" >
					<span class="glyphicon glyphicon-remove" style="font-size:30" id="deletespan"></span>
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
