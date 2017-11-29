package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.template.dto.LoginDTO;
import com.internousdev.template.util.DBConnector;

public class LoginDAO {



	/**
	 * ログインユーザ情報取得メソッド
	 *
	 * @param loginUserId
	 * @param loginPassword
	 * @return LoginDTO
	 */
	public LoginDTO getLoginUserInfo(String login_id, String login_pass) {
		 DBConnector dbConnector = new DBConnector();
		 Connection connection = dbConnector.getConnection();
		 LoginDTO loginDTO = new LoginDTO();

		 String sql = "SELECT * FROM login_user WHERE login_id = ? AND login_pass = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, login_id);
			preparedStatement.setString(2, login_pass);

			ResultSet resultSet = preparedStatement.executeQuery();

			if(resultSet.next()) {
				loginDTO.setLogin_id(resultSet.getString("login_id"));
				loginDTO.setLogin_pass(resultSet.getString("login_pass"));



//				if(!(resultSet.getString("login_id").equals(null))) {
//					loginDTO.setLoginFlg(true);
//				}
		}

		} catch(Exception e) {
			e.printStackTrace();
		}
		return loginDTO;
	}

	public LoginDTO idSearch (String login_id){
		DBConnector dbConnector = new DBConnector();
		 Connection connection = dbConnector.getConnection();
		 LoginDTO loginDTO = new LoginDTO();

		 String sql ="SELECT * FROM login_user WHERE login_id = ?";

	try{
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1,login_id);

		ResultSet resultSet =preparedStatement.executeQuery();
		if(resultSet.next()){
		     loginDTO.setLogin_id(resultSet.getString("login_id"));
		     loginDTO.setLogin_pass(resultSet.getString("login_pass"));
		}
	}catch(Exception e){
		e.printStackTrace();
	}
		     return loginDTO;
	}

public boolean loginMark(String login_id, int loginMark){
	DBConnector dbConnector = new DBConnector();
	 Connection connection = dbConnector.getConnection();

	boolean result = false;
	String sql ="UPDATE login_user SET logined = ? WHERE login_id=?";

	try{
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement .setInt(1,loginMark);
		preparedStatement .setString(2, login_id);

		preparedStatement.execute();
		result = true;
	}catch(Exception e){
		e.printStackTrace();
	}
  return result;
}}


