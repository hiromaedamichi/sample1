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
		   color:#43c0f6;

		}

		.header {
		   width:100%;
		   height:90px;
		   background-color: #43c0f6;

		}

		.top {
		   color:white;
		   font-weight:bold;
		   font-size:20px;
		   text-align:center;
		}

		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}

		.asi{
			margin:90px auto 0px;
			 font-size:38px;
		}


		.footer {
			width:100%;
			height: 80px;
			background-color:#43c0f6;
			clear:both;
		}

		.link{
	           text-align:center;
		}

		.message{
		   text-align:center;
		}
	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
			メンバーの登録が完了しました
		</div>
	</div>
	<div class="main">
		<div class="asi">WINGSは楽しい足足をつくるためのサポートをいたします。</div>
		<div class="link">
		<a href='<s:url action="HomeAction" />'>ログインへ</a>
		</div>
	</div>
	<div class="footer">
	 	<div class="message">
			WINGS×FUTURE
		</div>
	</div>
</body>
</html>

