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
		   font-size:15px;
		   color:#000 ;
		   background:url(img/menu.jpg)no-repeat center scroll ;
		   background-size:cover;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

	/* ========ID LAYOUT======== */


		#header {
		   width: 100%;
		   height: 70px;
		   background-color:#110000;
		   margin-top:-30px;
		}

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
		}

		#footer {
			width: 100%;
			height: 18px;
			background-color:#110000;
			clear:both;
		}

		#pot {
		      margin:auto;
		      text-align:center;
		     font-size:26px;
		     color:#EEEEEE;
        }




	</style>
</head>
<body>
	<div id="header">
	 	<div id="pot">
			<p>ORDER</p>
		</div>
	</div>

     <div id="main">
		<s:form action="BuyItemAction">
			<table>
				<tr>
					<td>
						<span>name</span>
					</td>
					<td>
						<s:property value="session.buyItem_name" /><br>
					</td>
				</tr>
				<tr>
					<td>
						<span>price</span>
					</td>
					<td>
						<span>￥</span><s:property value="session.buyItem_price" />
					</td>
				</tr>
				<tr>
					<td>
						<span>number</span>
					</td>
					<td>
						<select name="count">
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
						<span>method of payment</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">cash
						<input type="radio" name="pay" value="2">creditcard
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="Decision"/>
					</td>
				</tr>
			</table>
		</s:form>
			<div>
				<p>お戻る場合は<a href='<s:url action="GoHomeAction" />'>please this way</a></p>
				<p>OderList:<a href='<s:url action="MyPageAction" />'>please this way</a></p>
			</div>
		</div>
	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>