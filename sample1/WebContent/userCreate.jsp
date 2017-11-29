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
	<title>UserCreate画面</title>
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
		   width: 100%;
		   height: 90px;
		   background-color:#43c0f6;
		   margin:-29px;
		}

		.top {
		   text-align:center;
		   color:white;
		   font-size:28px;
		}

		.main {
		   width: 100%;
		   height: 600px;


		}

		.table1{
		  width:500px;
		  height:200px;
		  text-align: center;
		   border:solid 2px ;
		    margin:100px auto 0px;
		}

		.next{
				margin: 20px auto 0px;
				text-align:center;


		}

		.footer {
			width: 100%;
			height: 70px;
			background-color:#43c0f6;
			clear:both;
		}

		.mark{
		      text-align:center;
		      color:white;
		}

		.link{
		      text-align:center;
		}
	</style>
</head>
<body>
	<div class="header">
	 	<div class="top">
		<p>メンバー登録</p>
		</div>
	</div>
	<div class="main">

		<s:if test="errorMassage != ''">
		<s:property value="errorMassage" escape="false" />
		</s:if>

		<s:form action="UserCreateConfirmAction">
		<table class="table1">
		    <tr>
		     <th>ID:</th>
		     <td><input type="text" name="loginUserId" value="" /></td>
		     </tr>

		      <tr>
		      <th>PASSWORD:</th>
		      <td><input type="text" name="loginPassword" value="" /></td>
		      </tr>

		      <tr>
       		      <th>NAME:</th>
		      <td><input type="text" name="userName" value="" /></td>
		       </tr>
			</table>
			<div class="next"><input type="submit" name="next" value="次へ" /></div>
			</s:form>

			<div class="link">
			<span>ログイン画面へ</span><a href='<s:url action="HomeAction" />'>戻る</a>
			</div>

	</div>
		<div class="footer">
	 	<div class="mark">
		WINGS×FUTURE
		</div>
	</div>
</body>
</html>
