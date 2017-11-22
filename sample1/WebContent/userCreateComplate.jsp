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
	<meta charset="utf-8">
	<title>UserCreateComplate画面</title>
	<style type="text/css">
		/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:white;
		   background:#00ccff;
		}
		
		.header {
		   width:100%;
		   height:90px;
		   background-color: #00ccff;
		}

		.top {
		   color:white;
		   font-weight:bold;
		   font-size:50px;
		}
		
		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		
		.asi{
		   width:800px;
		   height:90px;
		   color:00ccff;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color:#00ccff;
			clear:both;
		}
		
		.link{
	              text-align:center;	S
		}
		
		.h3{
		   text-align:center;
		}
	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
			<p>メンバーの登録が完了しました</p>
		</div>
	</div>
	<div class="main">
		<div class="asi"><h3>WINGSは楽しい足足をつくるためのサポートをいたします。</h3></div>
		<div class="link">
		<a href='<s:url action="HomeAction" />'>ログインへ</a>
		</div>
	</div>
	<div id="footer">
	 	<div class="h3">
			wings×future
		</div>
	</div>
</body>
</html>

