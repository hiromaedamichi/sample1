
package com.internousdev.template.action;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.LoginDAO;
import com.internousdev.template.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;





public class LoginAction extends ActionSupport implements SessionAware{
	private int id;
	private String login_id="";
	private String login_pass="";
	private String user_name;
	private int sex;
	private String email;
	private boolean loginMark;
	public Map<String,Object> session;
	private String missmatch="";
	private boolean save;
	private String save_visitor ="";

	public String execute(){

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();

	String result = SUCCESS;
	int search = 0;
	LoginDAO loginDAO = new LoginDAO();
	 LoginDTO  loginDTO = new LoginDTO();

	loginDTO =loginDAO.idSearch(login_id);

	if(loginDTO.getLogin_id()==null){
		setMissmatch("IDが違います。<br>");
		search++;
	}else if(!(loginDTO.getLogin_id().equals(login_id))){
		setMissmatch(missmatch+"IDが正しくありません。<br>");
		search++;

	}

	if(loginDTO.getLogin_pass()==null){
		setMissmatch(missmatch+"パスワードが違います。<br>");
	    search++;
	}else if(!(loginDTO.getLogin_pass().equals(login_pass))){
		setMissmatch(missmatch+"パスワードが違います。<br>");
		search++;
	}

	if(login_id.equals("")){
		setMissmatch(missmatch+"IDを入れてください。<br>");
		search++;
	}

	if(login_pass.equals("")){
		setMissmatch(missmatch+"パスワードを入力してください<br>");
	    search++;
	}

	if(login_id.length()<3){
		setMissmatch(missmatch+"IDは3文字以上10文字以下になります。<br>");
		search++;
	}

	if(login_pass.length()<3){
		setMissmatch(missmatch+"パスワードは3文字以上10文字以下になります。<br>");
		search++;
	}

	if(login_id.length()>10){
		setMissmatch(missmatch+"IDは3文字以上10文字以下になります。<br>");
	    search++;
	}

	if(login_id.length()>10){
		setMissmatch(missmatch+"パスワードは3文字以上10以下になります。<br>");
		search++;
	}

	if (!(login_id.matches("^[a-zA-Z0-9]+$"))) {
		setMissmatch(missmatch+"IDは半角英数字で入力してください。<br>");
		search++;
	}

	if (!(login_pass.matches("^[a-zA-Z0-9]+$"))) {
		setMissmatch(missmatch+"パスワード半角英数字で入力してください。<br>");
		search++;
	}

	if(search>0){
		result=ERROR;
	}else{

	     loginDTO = loginDAO.getLoginUserInfo(login_id,login_pass);
	     if(login_id.equals(loginDTO.getLogin_id())){
	     if(login_pass.equals(loginDTO.getLogin_pass())){
  	 session.put("login_id",loginDTO.getLogin_id());

	    	 String login_id = loginDTO.getLogin_id();
	         if(login_id!=null) {
	        	 boolean flgresult = loginDAO.loginMark(login_id,1);
	         if(flgresult){
	        	 result=SUCCESS;
	         }
	         }
	    	 }
	     }

	     if(save){
	    	 Cookie cookie = new Cookie("save_visitor","login_id");
	    	 cookie.setMaxAge(18000);

	    	 if("https".equals(request.getScheme())){
	    		 cookie.setSecure(true);
	    	 }
	    	 response.addCookie(cookie);

	     }
	     LoginPage();
	}return result;
	}

	public String LoginPage() {
		HttpServletRequest request = ServletActionContext.getRequest();

		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if("save_visitor".equals(cookie.getName())){
					save_visitor = cookie.getValue();
					break;
				}

			}
		}


	return SUCCESS;
	}
	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return login_id
	 */
	public String getLogin_id() {
		return login_id;
	}

	/**
	 * @param login_id セットする login_id
	 */
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	/**
	 * @return login_pass
	 */
	public String getLogin_pass() {
		return login_pass;
	}

	/**
	 * @param login_pass セットする login_pass
	 */
	public void setLogin_pass(String login_pass) {
		this.login_pass = login_pass;
	}

	/**
	 * @return user_name
	 */
	public String getUser_name() {
		return user_name;
	}

	/**
	 * @param user_name セットする user_name
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	/**
	 * @return sex
	 */
	public int getSex() {
		return sex;
	}

	/**
	 * @param sex セットする sex
	 */
	public void setSex(int sex) {
		this.sex = sex;
	}

	/**
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email セットする email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return loginMark
	 */
	public boolean isLoginMark() {
		return loginMark;
	}

	/**
	 * @param loginMark セットする loginMark
	 */
	public void setLoginMark(boolean loginMark) {
		this.loginMark = loginMark;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return missmatch
	 */
	public String getMissmatch() {
		return missmatch;
	}

	/**
	 * @param missmatch セットする missmatch
	 */
	public void setMissmatch(String missmatch) {
		this.missmatch = missmatch;
	}


	}

