<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script>$(document).ready(function() {
    $('.slider').bxSlider({
    	auto :true,
    	mode :'fade',
    	speed : 1000,
    	slideWidth : 400
    });
  });
  </script>
	<title>Home画面</title>
	<style type="text/css">
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:#43c0f6;
/* 		   background:url(img/front.jpg) no-repeat center scroll; */
		}
		.header {
		   width: 100%;
		   height: 100px;
		   background-color:#43c0f6;
		   margin-top:-18px;
		}
		.top {
		   text-align:center;
		   color:white;
		  font-weight:bold;
		  font-size:20px;
	          }
		.welcome{
		    text-align:center;
		    font-size:20px;
		    color:white;
		    front-weight:bold;
		}

		.to{
		   text-align:center;
		    font-size:20px;
		    color:white;
		    front-weight:bold;
		}


		.main {
		   width: 100%;
		   height: 600px;
		   text-align:center;
		}

		.logo{
		     text-align:center;
		     color:#43c0f6;
		}

		.box{
		margin-left:35%;
		margin-right:35%;

		}

		.slider{
		width:350px;
		height:300px;
		background-color:;
		}

		img{
		margin:0 auto;
		width:200px;
		height:200px;
		}

		.btn{
		    margin:150px auto 0px;

		}

		.footer {
			width: 100%;
			height: 60px;
			background-color:#43c0f6;
			clear:both;
		}

		.message{
		    text-align:center;
		    color:white;
		}
	</style>
</head>
<body>

	<div class="header">
	 	<div class="top">
	 	<p class="welcome">WELCOME</p>
		<p class="to">TO</p>
		</div>
	</div>

	<div class="main">
		<div class="logo">
		 <h1>WINGS</h1>
		</div>

		<div class="box">
		<div class="slider">
		<div><img src ="image/newbalance.jpg"></div>
		<div><img src ="image/converse.jpg"></div>
		<div><img src ="image/nike.jpg"></div>
		<div><img src ="image/amup.jpg"></div>
		<div><img src ="image/adidas.jpg"></div>
		<div><img src ="image/onitsukatigerlogo.jpg"></div>
		<div><img src ="image/vans.jpg"></div>
		<div><img src ="image/reebok.jpg"></div>
		</div>
		</div>

		<s:form action="HomeAction">
		   <div class="btn"><input type="submit"  name="enter" value="enter"/></div>
		</s:form>
		 <s:if test="#session.id != null">
			<p>こちら<a href='<s:url action="LogoutAction" />'>こちら</a></p>
		</s:if>
	</div>
	<div class="footer">
	<div class="message">
	WINGS×FUTURE
	</div>
	</div>
</body>
</html>
