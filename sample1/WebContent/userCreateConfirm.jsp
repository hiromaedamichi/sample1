
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
	<title>UserCreateConfirm画面</title>
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
		   background:#00cccff;
		}
		
		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#00ccff;
		}

		.top {
			font-size:20px;
		        margin:10px auto 0px;
			text-align:center;
			color:white;
		}
		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		
		.h3{
		    width:300px;
		    height:30px;
		}

		.box {
			border: 1px solid:#00ccff;
		}

		.footer {
			width: 100%;
			height: 80px;
			background-color:#00ccff;
			clear:both;
		}
		
		.h3{
		text-align:center;
		}
	</style>
</head>
<body>
	<div class="header">
	 <div class="top">
	    <p>登録内容を確認して下さい。</p>
	</div>
	</div>
	
	<div class="main">
	  <div><h3>登録する内容は以下でよろしいですか。</h3></div>
	     <table class="box">
		<s:form action="UserCreateComplateAction">
		<tr>
		<td><label>ID:</label></td>
		<td><s:property value="loginUserId" escape="false" /></td>
		</tr>
		<tr>		
		<td><label>PASSWORD:</label></td>
		<td><s:property value="loginPassword" escape="false" /></td>
		</tr>
		
		<tr>
		<td><label>NAME:</label></td>
		<td><s:property value="userName" escape="false" /></td>
		</tr>
					
		<input type="submit"  name="OK"value="OK" />
		</s:form>
		</table>
		</div>
	
	<div id="footer">
	 	<div class="h3">
		wings×future
		</div>
	</div>
</body>
</html>
