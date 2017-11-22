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
		   color:white;
		   background-color:#00ccff;
		}
		
		.header {
		   width: 100%;
		   height: 90px;
		   background-color:#00ccff;
		}
		
		.top {
		   margin:10px auto 0px;
		   color:white;
		   font-size:20px;
		}

		.main {
		   width: 100%;
		   height: 600px;
		   
		}
		
		.table1{
		  width:500px;
		  height:200px;
		  text-align: center;
		   border:solid 2px white;
		   backgroud-color:00ccff;
		}
		
		.next{
		  
		}

		.footer {
			width: 100%;
			height: 70px;
			background-color:#00ccff;
			clear:both;
		}
		
		.mark{
		      text-align:center;
		}
	</style>
</head>
<body>
	<div id="header">
	 	<div id="top">
		<p>メンバー登録</p>
		</div>
	</div>
	<div id="main">
		
		<s:if test="errorMassage != ''">
		<s:property value="errorMassage" escape="false" />
		</s:if>

		<table class="table1">	
		<s:form action="UserCreateConfirmAction">
		    <tr>
		     <td><label>ID:</label></td>
		     <td><input type="text" name="loginUserId" value="" /></td>
		     </tr>
		     
		      <tr>
		      <td><label>PASSWORD:</label></td>
		      <td><input type="text" name="loginPassword" value="" /></td>
		      </tr>
				
		      <tr>
       		      <td><label>NAME:</label></td>
		      <td><input type="text" name="userName" value="" /></td>
		       </tr>
				<input type="submit" name="next" value="次へ"　class="next"/>
			</s:form>
			</table>
			
			<div>
			<span>ログイン画面へ</span><a href='<s:url action="HomeAction" />'>戻る</a>
			</div>
		
	</div>
		<div id="footer">
	 	<div id="mark">
		wings×future
		</div>
	</div>
</body>
</html>
