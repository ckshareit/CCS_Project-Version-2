package com.cognizant.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import com.cognizant.bean.UserBean;
import com.cognizant.util.DBConnection;

public class UserDao {
	public String checkDetails(UserBean userBean)
	 {
		
		 
		String uid = userBean.getUiD();
		String pass = userBean.getPasS();
		
		Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;
		 
		
		String UID = "";
		String PASSWORD = "";
		
		 
		 try
		 {
		 con = DBConnection.createConnection(); 
		 statement = con.createStatement(); 
		 resultSet = statement.executeQuery("select UIDs,Password from CCS_FORM where UIDs ="+uid); 
		 
		while(resultSet.next()) 
		 {
			
			UID = resultSet.getString("UIDs"); 
			PASSWORD = resultSet.getString("Password");
		  
		
			
		  
		  
		 }
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
	
			if(uid.equals(UID.trim())
					   && pass.equals(PASSWORD.trim())){
				 
			      return "SUCCESS"; 
			   }
			
		return "FAIL";
	 
	 }
	
}