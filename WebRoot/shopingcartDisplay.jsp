<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopingcartDisplay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!--加减框样式-->
		<style>
			
            ul,
            li {
                list-style: none;
            }
            
              /*margin用来上下移动位置*/
            .btn-numbox {
                overflow: hidden;
                margin-top: 23px;
            }
            
            .btn-numbox li {
                float: left;
            }
            
            .btn-numbox li .number,
            .kucun {
                display: inline-block;
                font-size: 12px;
                color: #808080;
                vertical-align: sub;
            }
            
          
            .btn-numbox .count {
                overflow: hidden;
                margin: 0 16px 0 -20px;
            }
            
            .btn-numbox .count .num-jian,
            .input-num,
            .num-jia {
                display: inline-block;
                width: 28px;
                height: 28px;
                text-align: center;
                font-size: 18px;
                color: #999;
                cursor: pointer;
                border: 1px solid #e6e6e6;
            }
            .btn-numbox .count .input-num {
                width: 32px;
                height: 29px;
                color: #333;
                border-left: 0;
                border-right: 0;
            }
            #proname{
            	font-size: 20;
				font-weight: bold;
				margin-top:23px;
            }
             #proprice{
            	font-size: 20;
				font-weight: bold;
				margin-top:23px;
            }
		</style>
		  <style>
	    	#la{
	    		position: relative;
	    		margin-left: 10px;
	    		margin-top: 2px;
	    		width: 140px;
				height: 17px;
				font-family: SourceHanSansCN-Regular;
				font-size: 18px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
	    	}
	    	#la1{
	    		position: relative;
	    		margin-left: 634px;
	    		margin-top: 2px;
	    		width: 140px;
				height: 17px;
				font-family: SourceHanSansCN-Regular;
				font-size: 18px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
	    	}
	    	#la2{
	    		font-weight: bolder;
	    		position: relative;
	    		margin-left: 45px;
	    		margin-right: 10px;
	    		margin-top: 2px;
	    		width: 200px;
				height: 17px;
				text-align: center;
				font-family: SourceHanSansCN-Regular;
				font-size: 20px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #000000;
				
	    	}
	    	#la3{
	    		position: relative;
	    		margin-left: 787px;
	    		margin-right: 10px;
	    		margin-top: 25px;
	    		width: 140px;
				height: 17px;
				font-family: SourceHanSansCN-Regular;
				font-size: 17px;
				font-weight: normal;
				font-stretch: normal;
				letter-spacing: 1px;
				color: #666666;
				
	    	}
	    </style>
	    
	    <style>
			.button_su {
				overflow: hidden;
				display: inline-block;
				position: relative;
				margin-left: 784px;
				border-radius: 3px;
				margin-bottom: 25px;
				margin-top: 30px;
				z-index: 1;
			}
			
			.su_button_circle {
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
			
			.button_su_inner {
				display: inline-block;
				width: 156px;
				height: 42px;
				border: none;
				border-radius: 3px;
				border: solid 1px #333333;
				background: white;
				font-family: SourceHanSansCN-Norm;
				color: #333333;
				font-size: 20px;
				font-weight: normal;
				text-align: center;
				line-height: 28px;
				letter-spacing: 0px;
				transition: 400ms;
				text-decoration: none;
				z-index: 100000;
			}
			
			.button_text_container {
				position: relative;
				z-index: 10000;
			}
			
			.explode-circle {
				animation: explode 0.5s forwards;
			}
			
			.desplode-circle {
				animation: desplode 0.5s forwards;
			}
			
			@keyframes explode {
				0% {
					width: 0px;
					height: 0px;
					margin-left: 0px;
					margin-top: 0px;
					background-color: rgba(42, 53, 80, 0.2);
				}
				100% {
					width: 400px;
					height: 400px;
					margin-left: -200px;
					margin-top: -200px;
					/* background-color: rgba(20, 180, 87,0.8); */
					/* background-color: rgba(240, 108, 108,0.8); */
					background-color: rgba(25, 133, 217, 0.8);
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
					background-color: rgba(25, 133, 217, 0.8);
				}
				100% {
					width: 0px;
					height: 0px;
					margin-left: 0px;
					margin-top: 0px;
					/* background-color: rgba(129, 80, 108,0.6); */
					background-color: rgba(42, 53, 80, 0.2);
				}
			}
			
			.button_button_su {
				/*overflow: hidden;
			    position: relative;
				display: inline-block;
				border-radius: 3px;
				margin-top: 25px;
				margin-bottom: 30px;
				z-index: 1;*/
				overflow: hidden;
				display: inline-block;
				position: relative;
				top:0px;
				left: 900px;
				border-radius: 3px;
				margin-bottom: 25px;
				margin-top: 30px;
				z-index: 1;
			}
			
			.su_button_button_circle {
				/* background-color: red; */
				border-radius: 1000px;
				position: absolute;
				left: 0;
				top: 0;
				width: 0px;
				height: 0px;
				margin-left: 0px;
				margin-top: 0px;
				pointer-events: none;
				/*animation-timing-function: ease-in-out;*/
			}
			
			.button_button_su_inner {
				display: inline-block;
				width: 156px;
				height: 42px;
				border: none;
				border-radius: 3px;
				background: #e80f0f;
				font-family: SourceHanSansCN-Norm;
				color: #FFFFFF;
				font-size: 20px;
				font-weight: normal;
				text-align: center;
				line-height: 28px;
				letter-spacing: 0px;
				transition: 400ms;
				text-decoration: none;
				z-index: 100000;
			}
			
			.button_button_text_container {
				position: relative;
				z-index: 10000;
			}
			
			.explode-circle {
				animation: explode 0.5s forwards;
			}
			
			.desplode-circle {
				animation: desplode 0.5s forwards;
			}
			.gouwu{
				
					width: 200px;
					height: 24px;
					font-family: AdobeHeitiStd-Regular;
					font-size: 25px;
					font-weight: normal;
					font-stretch: normal;
					line-height: 28px;
					letter-spacing: 1px;
					color: #000000;
					margin-top: 40px;
					margin-bottom: 40px;
					margin-left: 25px;
					
			}
			
			@keyframes explode {
				0% {
					width: 0px;
					height: 0px;
					margin-left: 0px;
					margin-top: 0px;
					background-color: rgba(42, 53, 80, 0.2);
				}
				100% {
					width: 400px;
					height: 400px;
					margin-left: -200px;
					margin-top: -200px;
					/* background-color: rgba(20, 180, 87,0.8); */
					/* background-color: rgba(240, 108, 108,0.8); */
					background-color: rgba(25, 133, 217, 0.8);
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
					background-color: rgba(25, 133, 217, 0.8);
				}
				100% {
					width: 0px;
					height: 0px;
					margin-left: 0px;
					margin-top: 0px;
					/* background-color: rgba(129, 80, 108,0.6); */
					background-color: rgba(42, 53, 80, 0.2);
				}
			}
		</style>
  </head>
  <!--页面加载成功后执行ajax 方法获取table 值--> 
  <!--data放回后动态生成table-->
  <script type="text/javascript">
  
  					var t=0;
  					var totalprice =0;
  		window.onload=function(){
  		console.log("hello");
  		 	$.ajax({
  				url:"getShopcartTableMsgByuidAndpid",
  				type:"post",
  				dataType:"json",
  				success:function(data){
  					console.log("tesst");
  					var str="";
  					
  					$(data).each(function(i,s){
  						t=t+s.pnumber;
  						totalprice = totalprice+s.price*s.pnumber;
  							/* console.log(s.pname);
							console.log(s.price);
							console.log(s.pimg);
							console.log(s.pnumber); */	
							if(s.pnumber>0)
							{ 
							str+="<tr style='height: 100px;'><td style='text-align: center;'><img src='"+s.pimg+"'/></td><td style='text-align: center;'><label id='proname'>"+s.pname+"</label></td><td style='text-align: center;' id='propricecolumn'><span>￥</span><label id='proprice'>"+s.price+"</label></td><td style='text-align: center;' id='numboxcolumn'><ul class='btn-numbox'><li><ul class='count'><li  class='"+s.pid+"'><span id='num-jian' class='num-jian'>-</span></li> <li id='input-numli'><input type='text' class='input-num' id='input-num' value='"+s.pnumber+"' /></li><li class='"+s.pid+"' id='pidcq'><span id='num-jia' class='num-jia'>+</span></li></ul></li></ul></td><td style='text-align: center;' class='"+s.pid+"' id='pidcolumn' ><span    class='glyphicon glyphicon-remove' style='font-size:25;margin-top:23px' id='deletespan'></span></td></tr>"
							}
						

						});	
						$("#shoptable").children("tbody")[0].innerHTML=str;
						$("#goodsnumber").text(t);
						
						$("#la2").children("h1").text("￥"+totalprice);
  				}
  			}) 
  		}
  		
  		
  		
  			/*为删除按钮添加点击事件*/
  			$(document).on('click','#deletespan',function(){
  					
  					
  					var pid= $(this).parent().prop("class");
  					var thistd=$(this).parent().parent();
  					//console.log($(this).parent().html());

  					var tempgoodsprice=$(this).parent().siblings("#propricecolumn").children("#proprice").text();
  					//console.log($(this).parent().siblings("#numboxcolumn").children().children().children().children("#input-numli").children().val());
  					var rowgoodsnumber = $(this).parent().siblings("#numboxcolumn").children().children().children().children("#input-numli").children().val();
  					totalprice=totalprice-rowgoodsnumber*tempgoodsprice;
  					t=t-rowgoodsnumber;
  					
  					$("#goodsnumber").text(t);
  					$("#la2").children("h1").text("￥"+totalprice);
  					thistd.remove();
  					
  					$("#goodsnumber").text(t);
  					$.ajax({
  						url:"deleteProductByuidAndpid",
  						type:"post",
  						data:{pid:pid},
  						success:function(data){
  							
  						}
  				
  					})
  			})
  
  			/*为加减按钮添加点击事件*/
  			$(document).on('click','#num-jia',function(){
  			
  					var tnumber =$(this).parent().parent().children("#input-numli").children().val() ;
  					tnumber++;
  					$(this).parent().parent().children("#input-numli").children().val(tnumber);
  					var pid =($(this).parent().prop("class"));
  					console.log(pid);
  					
  					/*获取商品价格*/
  					//console.log("商品价格测试"+$(this).parent().parent().parent().parent().parent().parent().children("#propricecolumn").children("#proprice").text());
  					var ppprice=$(this).parent().parent().parent().parent().parent().parent().children("#propricecolumn").children("#proprice").text();
  					totalprice=totalprice+parseInt(ppprice);
  					$("#la2").children("h1").text("￥"+totalprice);
  					
  					
  					/*获取商品数量*/
  					
  					t=t+1;
  					$("#goodsnumber").text(t);
  					$.ajax({
  						 url:"addgoodsnumberBypidanduid",
  						 type:"post",
  						 data:{pid:pid},
  						 success:function(data){
  							//console.log("hello");
  						}
  					})
  			})
  			
  			$(document).on('click','#num-jian',function(){
  			
  						
  					var tnumber =$(this).parent().parent().children("#input-numli").children().val() ;
  					if(tnumber-1>=1)
  					{
  					
  					tnumber--;
  					$(this).parent().parent().children("#input-numli").children().val(tnumber);
  					
  					var pid = ($(this).parent().prop("class"));
  					
  					
  					/*获取商品价格*/
  					//console.log("商品价格测试"+$(this).parent().parent().parent().parent().parent().parent().children("#propricecolumn").children("#proprice").text());
  					var ppprice=$(this).parent().parent().parent().parent().parent().parent().children("#propricecolumn").children("#proprice").text();
  					totalprice=totalprice-parseInt(ppprice);
  					$("#la2").children("h1").text("￥"+totalprice);
  					
  					
  					/*获取商品数量*/
  					//var rowgoodsnumber = $(this).parent().siblings("#numboxcolumn").children().children().children().children("#input-numli").children().val();
  					
  					
  					t=t-1;
  					$("#goodsnumber").text(t);
  					$.ajax({
  						 url:"reducegoodsnumberBypidanduid",
  						 type:"post",
  						 data:{pid:pid},
  						 success:function(data){
  							//console.log("hello");
  						}
  					})
  					}
  					
  			})
  			
			$(document).ready(function() {
			$(".button_su_inner").mouseenter(function(e) {
				var parentOffset = $(this).offset();

				var relX = e.pageX - parentOffset.left;
				var relY = e.pageY - parentOffset.top;
				$(this).prev(".su_button_circle").css({
					"left": relX,
					"top": relY
				});
				$(this).prev(".su_button_circle").removeClass("desplode-circle");
				$(this).prev(".su_button_circle").addClass("explode-circle");

			});

			$(".button_su_inner").mouseleave(function(e) {

				var parentOffset = $(this).offset();

				var relX = e.pageX - parentOffset.left;
				var relY = e.pageY - parentOffset.top;
				$(this).prev(".su_button_circle").css({
					"left": relX,
					"top": relY
				});
				$(this).prev(".su_button_circle").removeClass("explode-circle");
				$(this).prev(".su_button_circle").addClass("desplode-circle");

			});

			$(".button_button_su_inner").mouseenter(function(e) {
				var parentOffset = $(this).offset();

				var relX = e.pageX - parentOffset.left;
				var relY = e.pageY - parentOffset.top;
				$(this).prev(".su_button_button_circle").css({
					"left": relX,
					"top": relY
				});
				$(this).prev(".su_button_button_circle").removeClass("desplode-circle");
				$(this).prev(".su_button_button_circle").addClass("explode-circle");

			});

			$(".button_button_su_inner").mouseleave(function(e) {

				var parentOffset = $(this).offset();

				var relX = e.pageX - parentOffset.left;
				var relY = e.pageY - parentOffset.top;
				$(this).prev(".su_button_button_circle").css({
					"left": relX,
					"top": relY
				});
				$(this).prev(".su_button_button_circle").removeClass("explode-circle");
				$(this).prev(".su_button_button_circle").addClass("desplode-circle");

			});
		});
		</script>
		<script>
			$(document).ready(function(){
				$(".button_su_inner").click(function(){
					window.location.href="Store.jsp";
				})
			})
		</script>
  <body style="background-color: #eeeeee;">
		<!--导航栏-->
			<div ><img src="img/navigator.png" /> </div>
		<!--购物车-->
			<div style="width: 1200px;margin-left: 360px;margin-top: 80px;background-color: white;">
				<label class="gouwu">购物车</label>
			</div>
			<div style="width:1200px ;margin-left: 360px;background-color: white;margin-bottom: -20px;">
				<table class="table table-borderedt" id="shoptable">
				<tr style="height: 100px;">
					<td style="text-align: center;"><img src="img/phone-lan.png"/></td>
					<td style="text-align: center;"><label id="proname">OnePlusPro7 星雾蓝</label></td>
					<td style="text-align: center;"><label id="proprice">￥3999</label></td>
					<td style="text-align: center;" id="numboxcolumn">
					<ul class="btn-numbox">
           			 <li>
               		 <ul class="count">
                    <li><span id="num-jian" class="num-jian">-</span></li>
                    <li><input type="text" class="input-num" id="input-num" value="0" /></li>
                    <li><span id="num-jia" class="num-jia">+</span></li>
                	</ul>
           			 </li>
             		</ul>
            		 </td>
					<td style="text-align: center;"><span class="glyphicon glyphicon-remove" style="font-size:25;margin-top:23px"></span></td>
				</tr>
				
				</table>
			</div>
		<!--总价-->
			<div style="position:relative;width: 1200px;margin-left: 360px;background-color: white;" id="d1">
				<label id="la">已选择<span id="goodsnumber">0</span>件商品</label>
				<label id="la1">总价</label>
				<label id="la2"><h1>￥1289.20</h1></label>
				<label id="la3">支持免邮</label>
			</div>
		<!--按钮-->
		<div style="width: 1200px;margin-left: 360px;background-color: white;">
			<div style="position: relative;left: 0px;top:0px">
				<div class="button_su" >
					<span class="su_button_circle">
		  </span>
					<button href="#" class="button_su_inner">
		    <span class="button_text_container"> 
		      继续购物
		    </span>
		  </button>
				</div>
				<div class="button_button_su" style="position: relative;left: 68px;top: 0px;">
					<span class="su_button_button_circle">
		  </span>
					<button href="#" class="button_button_su_inner">
		    <span class="button_button_text_container"> 
		      去结算
		    </span>
		  </button>
				</div>
			</div>
		</div>
		<!--可能喜欢-->
			<div style="margin-left: 880px;margin-bottom: 50px;margin-top: 50px;">
				<label style="position: relative;width: 131px;height: 25px;font-size: 25px;font-family: 'arial rounded mt bold';font-weight: normal;font-stretch: normal;">你可能喜欢</label>
			</div>
		<!--手机图片-->
			<div style="position: relative;margin-left: 360px;margin-bottom: 100px;">
				<img src="img/likeExp1.png" style="position: relative;left: 0px;top: 0px;" />
				<img src="img/likeExp2.png" style="position: relative;left: 20px;top: 0px;" />
				<img src="img/likeExp3.png" style="position: relative;left: 40px;top: 0px;" />
			</div>
		<!--展示更多-->
			<div style="margin-left: 880px;margin-bottom: 80px;">
					<label  style="width: 200px;height: 20px;font-size: 25px;font-family: 'arial rounded mt bold';font-weight: normal;font-stretch: normal;">+展示更多商品</label>			
			</div>
		<!--底部信息-->
			<div>
				<img src="img/pagefoot.png" />
			</div>
	</body>
</html>
