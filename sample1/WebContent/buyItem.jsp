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
	<title>BuyItem画面</title>
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
		   background:url(img/menu.jpg)no-repeat center scroll ;
		   background-size:cover;
		}


		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#00ccff;
		   margin-top:-30px;
		}
		
		.top{
	          textalign:center;
		  font-size:white;
	          font-size:30px;
		 font-weight:bold;	
		}

		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		
		.t1{
		   width:500px;
		   height:300px;
		   margin:20px auto 0px;
		   border:1px solid #00ccff;
		}
		
		.buy{}
		

		.footer {
			width: 100%;
			height: 70px;
			background-color:#00ffcc;
			clear:both;
		}

		.class {
		      text-align:center;
		     font-size:14px;
		     color:#00ccff;
        }




	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
			<p>SHOPPING</p>
		</div>
	</div>

     <div class="main">
		<s:form action="BuyItemAction">
			<table class="t1">
			<tr>
			<td><span>商品名</span></td>
			<td><s:property value="session.buyItem_name" /></td>
			</tr>
				
			<tr>
			<td><span>金額</span></td>
			<td><span>￥</span><s:property value="session.buyItem_price" /></td>
			</tr>
				
			<tr>
			<td><span>足数</span></td>
			<td><select name="count">
			<option value="1" selected="selected">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</select>
			</td>
			</tr>
				
			<tr>
			<td>
			<span>支払い方法</span>
			</td>
			<td>
			<input type="radio" name="pay" value="1" checked="checked">現金
			<input type="radio" name="pay" value="2">クレジットカード
			</td>
			</tr>
			</table>
				
			
			<input type="submit" name="buy" value="購入" class="buy"/>
		</s:form>
			<div>
				<p>戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				<p>注文履歴は<a href='<s:url action="MyPageAction" />'>こちら</a></p>
			</div>
		</div>
	<div class="footer">
	 	<div class="message">
			WINGS×FUTURE
		</div>
	</div>
</body>
</html>
