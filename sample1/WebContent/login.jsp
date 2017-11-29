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
	<title>Login画面</title>
	<style type="text/css">

		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:16px;
		   color:#43c0f6;
		   backgroud-color:white;
/* 		   background:url(img/reception.jpg) no-repeat ; */
/* 		   background-size:cover; */
		}
		.header {
		   width: 100%;
		   height: 100px;
		   background-color:#43c0f6;
		   margin-top:-40px;
		}
		.top {
		   font-size:40px;
		   text-align:center;
		    color:white;
		    font-weight:bold;
		}
		.h3{
		   font-size:20px;
		}
		.table1{
			width:500px;
			height:200px;
			border:solid 1px #43c0f6;
			margin:30px auto 0px;
		}
		.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;
		}
		.s{
		   width:25px;
		   height:25px;
		}

		.footer {
			width: 100%;
			height: 80px;
			background-color:#43c0f6;
			clear:both;
		}
		.link {
			text-align:center;
		}
		.link2{
			text-align:center;
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
			<p>ログイン</p>
		</div>

	</div>
	<div class="main">

		<div class="h3">
			<h3>IDとPASSWORDを入力してください。</h3>
			</div>
			<s:form action="LoginAction">
			<s:if test="missmatch!=''">
     <s:property value="missmatch" escape="false" />
     </s:if>
				<table class="table1">
				<tr>
				<td>ID</td><td><input type="text" name="login_id" value="" /></td>
				</tr>
				<tr>
				<td>パスワード</td><td><input type="password" name="login_pass" value=""/></td>
				</tr>

				<tr>
				<td>保存<input type="checkbox" name="save" value=true  class="s" /></td>
				<td><input type="submit" value="enter"/></td>
				</tr>
				</table>

			</s:form>
			<br/>
			<div class="link">
				<p>新規の方は<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
			</div>

			<div class="link2">
	 	<p>HOMEへ<a href='<s:url action="GoHomeAction" />'>戻る</a></p>
		</div>
	</div>

	<div class="footer">
	<div class="message">
	WINGS×FUTURE
	</div>
	</div>
</body>
