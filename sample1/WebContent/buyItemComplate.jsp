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
	<title>BuyItemComplate画面</title>
	<style type="text/css">
	    body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:#00ccff;
		   background:white;
		}
		
		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#00ccff;

	       .top {
		   text-align:center;
		   color:white;
		}

		
		}

		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		
		.thanks{
	               width:800px;
			height:50px;
			text-align:center;
			color:#ooccff;
		}
		
		.other{
		      textalign:center;
			color:#00ccff;
		}

		.footer {
			width: 100%;
			height: 70px;
			background-color: #00ccff;
			clear:both;
		}
		
		.message{
		         color:white;
			text-align:center;
		}
	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
			<p>購入て続きが完了しました。</p>
		</div>
	</div>
	<div clas="main">
		
		<div　class="thanks"><p>注文ありがとうございます。<br>今後もWINGSのご利用よろしくお願いします。</p><div>
		<div class="other">
			<a href='<s:url action="MyPageAction" />'>こちら</a><span>から購入履歴の確認が可能です。</span>
				<p>HOMEへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="message">
			WINNGSFUTURE
		</div>
	</div>
</body>
</html>

