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
	<title>Home画面</title>
	<style type="text/css">
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:＃00ccff;
		   background:url(img/front.jpg) no-repeat center scroll;
		}
		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#00ccff;
		   margin-top:-30px;
		}
		.top {
		   text-align:center;
		   color:white;
		  font-weight:bold;
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
		     color:#00ccff;
		}
		
		.btn{
		    margin:30px auto 0px;
		    
		}

		.footer {
			width: 100%;
			height: 60px;
			background-color:#00ccff;
			clear:both;
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
		
		<s:form action="HomeAction">
		   <div class="btn"><input type="submit"  name="enter" value="enter"/></div>
		</s:form>
		 <s:if test="#session.id != null">
			<p>こちら<a href='<s:url action="LogoutAction" />'>こちら</a></p>
		</s:if>
	</div>
	<div class="footer">
	</div>
</body>
</html>
