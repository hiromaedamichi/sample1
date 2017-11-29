
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>BuyItemConfirm画面</title>
	<style type="text/css">

		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:white;

		}
		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#43c0f6;
		   margin-top:-40px;
		}

		.top {
		   text-align:center;
		   font-size:40px;
		   color:white;
		}



		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		.table{
				margin:10px auto 0px;
				width:300px;
				height:500px;
		}

		.yes{
				margin:10px auto 0px;
		}

		.no{
				margin:10px auto 0px;
		}

		.footer {
			width: 100%;
			height: 70px;
			background-color:#43c0f6;
			clear:both;
		}

		.message{
		     text-align:center;
		     color:white;
		}
	</style>
	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div class="header">
	 	<div class="top">
			<p>購入内容の確認</p>
		</div>
	</div>
	<div id="main">
	 <s:form action ="BuyItemConfirmAction">
	 <table class="table">
	   <tr>
	   <td>商品名</td>
	   <td><s:property value="session.buyItem_name" /></td>
	   </tr>

	   <tr>
	   <td>金額</td>
	   <td><span>￥</span><s:property value="session.total_price" /></td>
	   </tr>

	    <tr>
	   <td>足数</td>
	   <td><s:property value="session.count" /><span>品</span></td>
	   </tr>

	   <tr>
	   <td>支払い方法</td>
	   <td><s:property value="session.pay" /></td>
	   </tr>

           <tr>
	  <td><input type="button" value="NO" onclick="submitAction('HomeAction')" class="no"/></td>
	   <td><input type="button" value="YES" onclick="submitAction('BuyItemConfirmAction')" class="yse" /></td>
	   </tr>
	   </table>
	  </s:form>
	</div>
	<div class="footer">
		<div class="message">
		WINGS×FUTURE
		</div>
	</div>
</body>
</html>
