package com.internousdev.template.dto;

public class LoginDTO {

	private String login_id;

	private String login_pass;

	private String user_name;

	private int sex;

	private String email;

	private boolean loginMark = false;

	private int logined;

	private String insert_date;
	private String update_date;
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
	 * @return mark
	 */
	public boolean isloginMark() {
		return loginMark;
	}
	/**
	 * @param mark セットする mark
	 */
	public void setLoginMark(boolean loginMark) {
		this.loginMark = loginMark;
	}
	/**
	 * @return logined
	 */
	public int getLogined() {
		return logined;
	}
	/**
	 * @param logined セットする logined
	 */
	public void setLogined(int logined) {
		this.logined = logined;
	}
	/**
	 * @return insert_date
	 */
	public String getInsert_date() {
		return insert_date;
	}
	/**
	 * @param insert_date セットする insert_date
	 */
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	/**
	 * @return update_date
	 */
	public String getUpdate_date() {
		return update_date;
	}
	/**
	 * @param update_date セットする update_date
	 */
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}}

