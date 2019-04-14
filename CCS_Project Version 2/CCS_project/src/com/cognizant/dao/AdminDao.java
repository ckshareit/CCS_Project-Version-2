package com.cognizant.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

import com.cognizant.bean.AdminBean;

import com.cognizant.util.DBConnection;

public class AdminDao {
	public String checkDetails(AdminBean adminBean)
	 {
		
		 
		String id = adminBean.getIdS();
		String pass = adminBean.getPasS();
		
		Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;
		 
		
		String ID = "";
		String PASSWORD = "";
		
		 
		 try
		 {
		 con = DBConnection.createConnection(); 
		 statement = con.createStatement(); 
		 resultSet = statement.executeQuery("select IDs,Password from CCS_Admin where IDs ="+id); 
		 
		while(resultSet.next()) 
		 {
			
			ID = resultSet.getString("IDs"); 
			PASSWORD = resultSet.getString("Password");
		 
		  
		 }
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
	
			if(id.equals(ID.trim())
					   && pass.equals(PASSWORD.trim())){
				 
			      return "SUCCESS"; 
			   }
			
		return "FAIL";
	 
	 }
	
}