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
		   color:#43c0f6;
		   background:white;
		}

		.header {
		   width: 1500px;
		   height: 90px;
		   background-color:#43c0f6;
		   margin-top:-20px;
		   }

	       .top {
		   text-align:center;
		   color:white;
		   width:1500px;
		   height:30px;
		}



		.main {
		   width: 100%;
		   height: 700px;
		   text-align: center;
		   margin:100px auto 0px ;
		}

		.thanks{
	        width:1500px;
			height:300px;
			text-align:center;
			color:#43c0f6;
			font-size:30px;

		}

		.other{
		      text-align:center;
			  color:#43c0f6;
			  width:1500px;

		}

		p {
    background: url("image/sky.jpg");
    -webkit-background-clip: text;
    -webkit-background-size: cover;
    -webkit-text-fill-color: transparent;
    -webkit-animation: 10s infinite linear animate;
    font-size: 50px;
    font-weight: bold;
    text-align: center;
}

	@-webkit-keyframes animate{
    0% {background-position: 0;}
    100% {background-position: -1000px 0;}
}

		.footer {
			width: 1500px;
			height: 70px;
			background-color: #43c0f6;
			clear:both;
		}

		.message{
		         color:white;
			     text-align:center;
			      width:1500px;
			      height:30px;
		}
	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
			<p>購入手続きが完了しました。</p>
		</div>
	</div>
	<div class="main">

		<div class="thanks"><p>注文ありがとうございます。<br>今後もWINGSのご利用よろしくお願いします。</p></div>
		<div class="other">
			<a href='<s:url action="MyPageAction" />'>こちら</a><span>から購入履歴の確認が可能です。</span>
				<p>HOMEへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				</div>
				<p>Animation Text</p>


	</div>
	<div class="footer">
		<div class="message">
			WINNGS×FUTURE
		</div>
	</div>
</body>
</html>

