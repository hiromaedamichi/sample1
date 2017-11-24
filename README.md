package com.internousdev.ECsite.action;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ECsite.dao.CartActionDAO;
import com.internousdev.ECsite.dao.LoginDAO;
import com.internousdev.ECsite.dto.UserDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
    private int id;

    private String user_id="";

    private String password="";

	private String family_name_kana;

	private String family_name;

	private String first_name_kana;

	private String first_name;

	private int sex;

	private String email;

	private boolean hozon;

	public Map<String, Object> session;

	private String errorMessage="";

   private LoginDAO loginDAO = new LoginDAO();

	private UserDTO userDTO = new UserDTO();

	private String save_user ="";



	public String execute() {

		// GET HttpServletRequest
		HttpServletRequest request = ServletActionContext.getRequest();

		// GET HttpServletResponse
		HttpServletResponse response = ServletActionContext.getResponse();

		String result = SUCCESS;
		int log = 0;

		userDTO =loginDAO.userSearch(user_id);



		if(userDTO.getUser_id()==null) {
			setErrorMessage("IDが正しくありません。<br>");
			log++;
		}
		if(userDTO.getPassword()==null){
			setErrorMessage(errorMessage+"入力されたパスワードが異なります。<br>");
			log++;
		}else if(!(userDTO.getPassword().equals(password))){
			setErrorMessage(errorMessage+"入力されたパスワードが異なります。<br>");
			log++;
		}

		if(user_id.equals("")){
			setErrorMessage(errorMessage+"IDを入力してください。<br>");
			log++;
		}
		if(password.equals("")){
			setErrorMessage(errorMessage+"パスワードを入力してください。<br>");
			log++;
		}

		if(user_id.length() < 1){
			setErrorMessage(errorMessage+"IDは1文字以上8文字以下で入力してください。<br>");
			log++;
		}
		if(password.length() < 1){
			setErrorMessage(errorMessage+"パスワードは1文字以上16文字以下で入力してください。<br>");
			log++;
		}

		if(user_id.length() >8){
			setErrorMessage(errorMessage+"IDは1文字以上8文字以下で入力してください。<br>");
			log++;
		}
		if(password.length() > 16){
			setErrorMessage(errorMessage+"パスワードは1文字以上16文字以下で入力してください。<br>");
			log++;
		}

		if (!(user_id.matches("^[a-zA-Z0-9]+$"))) {
			setErrorMessage(errorMessage+"IDは半角英数字で入力してください。<br>");
			log++;
		}

		if (!(password.matches("^[a-zA-Z0-9]+$"))) {
			setErrorMessage(errorMessage+"パスワード半角英数字で入力してください。<br>");
			log++;
		}

		if(log>0){
			result=ERROR;
		}else{
              userDTO = loginDAO.getLoginUserInfo(user_id, password);
              if(user_id.equals(userDTO.getUser_id())){
            	  if(password.equals(userDTO.getPassword())){
                      session.put("user_id", userDTO.getUser_id());
                      session.put("user_name", userDTO.getFamily_name()+" "+userDTO.getFirst_name());
                      String login_id = userDTO.getUser_id();
                      if(login_id!=null) {
        				boolean flgresult = loginDAO.loginFlg(user_id, 1);
        				CartActionDAO CADAO = new CartActionDAO();
        				String tmpID = session.get("tmpID").toString();
        				CADAO.CartLoginUpdate(tmpID, login_id);

        				if(flgresult){
        					result=SUCCESS;
        				}
                      }
            	  }

              }
		}

		if(hozon){
			Cookie cookie = new Cookie("save_user", user_id);
			cookie.setMaxAge(180);

	        //httpsで稼働している環境であればCookieが暗号化されるようSecure属性をつける
	        if ("https".equals(request.getScheme())) {
	            cookie.setSecure(true);
	        }
	        response.addCookie(cookie);

		}
		LoginPage();

	return result;
	}

	public String LoginPage() {
		// GET HttpServletRequest
		HttpServletRequest request = ServletActionContext.getRequest();

		Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("save_user".equals(cookie.getName())) {
                	save_user = cookie.getValue();
                    break;
                }
            }
        }

		return SUCCESS;
	}

	public String Logout(){
		String now_user = session.get("user_id").toString();
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.loginFlg(now_user, 0);

		session.clear();

		return SUCCESS;
	}


	/**
	 * @return errorMessage
	 */
	public String getErrorMessage() {
		return errorMessage;
	}



	/**
	 * @param errorMessage セットする errorMessage
	 */
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}



	/**
	 * idを取得します。
	 * @return id
	 */
	public int getId() {
	    return id;
	}



	/**
	 * idを設定します。
	 * @param id id
	 */
	public void setId(int id) {
	    this.id = id;
	}



	/**
	 * user_idを取得します。
	 * @return user_id
	 */
	public String getUser_id() {
	    return user_id;
	}



	/**
	 * user_idを設定します。
	 * @param user_id user_id
	 */
	public void setUser_id(String user_id) {
	    this.user_id = user_id;
	}



	/**
	 * passwordを取得します。
	 * @return password
	 */
	public String getPassword() {
	    return password;
	}



	/**
	 * passwordを設定します。
	 * @param password password
	 */
	public void setPassword(String password) {
	    this.password = password;
	}



	/**
	 * family_name_kanaを取得します。
	 * @return family_name_kana
	 */
	public String getFamily_name_kana() {
	    return family_name_kana;
	}



	/**
	 * family_name_kanaを設定します。
	 * @param family_name_kana family_name_kana
	 */
	public void setFamily_name_kana(String family_name_kana) {
	    this.family_name_kana = family_name_kana;
	}



	/**
	 * family_nameを取得します。
	 * @return family_name
	 */
	public String getFamily_name() {
	    return family_name;
	}



	/**
	 * family_nameを設定します。
	 * @param family_name family_name
	 */
	public void setFamily_name(String family_name) {
	    this.family_name = family_name;
	}



	/**
	 * first_name_kanaを取得します。
	 * @return first_name_kana
	 */
	public String getFirst_name_kana() {
	    return first_name_kana;
	}



	/**
	 * first_name_kanaを設定します。
	 * @param first_name_kana first_name_kana
	 */
	public void setFirst_name_kana(String first_name_kana) {
	    this.first_name_kana = first_name_kana;
	}



	/**
	 * first_nameを取得します。
	 * @return first_name
	 */
	public String getFirst_name() {
	    return first_name;
	}



	/**
	 * first_nameを設定します。
	 * @param first_name first_name
	 */
	public void setFirst_name(String first_name) {
	    this.first_name = first_name;
	}



	/**
	 * sexを取得します。
	 * @return sex
	 */
	public int getSex() {
	    return sex;
	}



	/**
	 * sexを設定します。
	 * @param sex sex
	 */
	public void setSex(int sex) {
	    this.sex = sex;
	}



	/**
	 * emailを取得します。
	 * @return email
	 */
	public String getEmail() {
	    return email;
	}



	/**
	 * emailを設定します。
	 * @param email email
	 */
	public void setEmail(String email) {
	    this.email = email;
	}





	/**
	 * hozonを取得します。
	 * @return hozon
	 */
	public boolean isHozon() {
	    return hozon;
	}



	/**
	 * hozonを設定します。
	 * @param hozon hozon
	 */
	public void setHozon(boolean hozon) {
	    this.hozon = hozon;
	}



	/**
	 * sessionを取得します。
	 * @return session
	 */
	public Map<String,Object> getSession() {
	    return session;
	}



	public String getSave_user() {
		return save_user;
	}

	public void setSave_user(String save_user) {
		this.save_user = save_user;
	}

	/**
	 * sessionを設定します。
	 * @param session session
	 */
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}}
	
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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <meta http-equiv="imagetoolbar" content="no" />
   <meta name="description" content="" />
   <meta name="keywords" content="" />
   <meta charset="utf-8">
<title>❒　Login画面</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<style type="text/css">
body {
/* 		   margin:0; */
/* 		   padding:0; */
/* 		   line-height:1.6; */
/* 		   letter-spacing:1px; */
/* 		   font-family:Verdana, Helvetica, sans-serif; */
/* 		   font-size:18px; */
/* 		   color:#333; */
/* 		   background:#fff; */
		}
.er{
        color:#e2041b;
}
.t1{
		width:400px;
		height:200px;
		margin:30px auto;
		border:2px solid #248;
		padding:0px 20px;
			}



.center{
        width:100%;
        height:50px;
		font-size: 40px;
		color:#248;
		text-align:center;
		font-weight:bold;
		margin-top:-30px;
      }

.main {
		   width: 100%;
		   height: 600px;
		   text-align: center;

		   }
.f{
   		    font-size:18px;
   		    font-weight:bold;
   		    color:#248;
}

.c{
			width:250px;
			height:25px;
			background-color:#f5f5f5;
			color:#248;
			font-size:18px;
}

.c:hover{
 			background-color:#fce3e9;
		}
.s{
   width:25px;
   height:25px;
   }

.t2 {
    float:left;
	width:50%;
	height:40px;
	text-align:right;

}
.btn{
    float:left;
    width:20%;
	height:40px;
	margin:0px auto 0px;

	}

.bt {
    width: 105px;
	height: 103px;
	background:white;
	border: 1px dotted #248;
	border-radius: 88px;
	moz-border-radius: 88px;
	webkit-border-radius: 88px;
	color:#999999;
	padding: 37px 30px 35px;
    text-align: center;
      font-weight:bold;
	font-size: 120%;
	transition: background-color 0.5s ease-in;
	webkit-transition: background-color 0.5s ease-in;
	font-style: italic;


}

.bt:hover{
			background: #248;
	        color: #FFF;
	        border: 3px solid #66ccff;
	        font-style: italic;
}



</style>
<script type="text/javascript">
<!--
function open_new() {
	var form = document.forms.mainForm;
	var user = form.LoginFlag.value;
	if(user.length>0){parent.top.location.href="Home.jsp";}
}
// -->
</script>

</head>
<body onLoad="open_new()">
<form name="mainForm">
<input type="hidden" name="LoginFlag" value="<s:property value="#session.user_id"/>">
</form>

<script type="text/javascript" src="./js/MainScript.js"></script>
<div class="header">
	 <div class="center"><p>Login</p></div>
	</div>

<div class="main">
  <form action="LoginAction">
    <div class="er">
    <s:if test="errorMessage!=''">
     <s:property value="errorMessage" escape="false" />
     </s:if>
     </div>
     <table class="t1">

   <tr>
   <td ><label class="f">ログインID</label></td><td><input type= text name="user_id" value="<s:property value="save_user"/>" class="c"  /></td>
      </tr>

   <tr>
      <td><label class="f">パスワード</label></td><td><input type=password name="password" value=""  class="c" /></td>
      </tr>

      <tr>
      <td><label class="f">保存</label></td>
      <td><input type=checkbox  name="hozon" value=true class="s"  /></td>
      </tr>
      </table>

       <table class="t2">
   <tr>
   <td><p>新規登録は<a href='<s:url action="UserAction" />'>こちら</a></p></td>
   </tr>
      <tr>
   <td><p>パスワードの再発行は<a href='<s:url action="SaipassAction" />'>こちら</a></p></td>
      </tr>
      </table>

<div class="btn">
 <input type="submit" value="login" class="bt"  />
</div>
   </form>






   </div>
<div class="footer">
<!-- target="_parent" <frameset>を定義したウインドウにリンク先のページを表示する -->
<a href='<s:url action="HomeAction" />' target="_parent" >ホームに戻る✔</a>
</div>

</body>

