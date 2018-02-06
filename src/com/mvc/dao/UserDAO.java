package com.mvc.dao;

import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import com.mvc.bean.UserBean;
import com.mvc.connection.ConnectionManager;

 public class UserDAO {
 public String authenticateUser(UserBean loginBean)
 {
 
String userName = loginBean.getUsername();
 String password = loginBean.getPassword();
 
Connection con = null;
 Statement statement = null;
 ResultSet resultSet = null;
 
String userNameDB; 
 String passwordDB; 
 
try
 {
 con = ConnectionManager.createConnection(); 
 statement = con.createStatement(); 
 resultSet = statement.executeQuery("select username,password from login"); 
 
while(resultSet.next()) 
 {
  userNameDB = resultSet.getString("username"); 
  passwordDB = resultSet.getString("password");
 
   if(userName.equals(userNameDB) && password.equals(passwordDB))
   {
      return "SUCCESS"; 
   }
 }
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 return "Invalid user credentials"; 
 }
 }