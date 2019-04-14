package com.cognizant.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import com.cognizant.bean.FormBean;
import com.cognizant.util.DBConnection;

public class FormDao {
	public String checkDetails(FormBean formBean)
	 {
		
		String fname = formBean.getFnamE(); 
		String lname = formBean.getLnamE();
		String age = formBean.getAgE();
		String gender = formBean.getGendeR();
		String contact =formBean.getContacT();
		String status = formBean.getStatuS(); 
		String uid = formBean.getUiD();
		String pass = formBean.getPasS();
		
		Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;
		 
		String FIRSTNAME = ""; 
		String LASTNAME = "";
		String AGE = "";
		String GENDER = "";
		String CONTACT = "";
		String UID = "";
		String PASSWORD = "";
		
		 
		 try
		 {
		 con = DBConnection.createConnection(); 
		 statement = con.createStatement(); 
		 resultSet = statement.executeQuery("select First_Name,Last_Name,Age,Gender,Contact_Number,UIDs,Password from CCS_FORM where UIDs ="+uid); 
		 
		while(resultSet.next()) 
		 {
			FIRSTNAME = resultSet.getString("First_Name"); 
			LASTNAME = resultSet.getString("Last_Name"); 
			AGE = resultSet.getString("Age"); 
			GENDER = resultSet.getString("Gender"); 
			CONTACT = resultSet.getString("Contact_Number"); 
			UID = resultSet.getString("UIDs"); 
			PASSWORD = resultSet.getString("Password");
		  
		
			
		  
		  
		 }
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
	
			if(fname.equals(FIRSTNAME.trim()) && lname.equals(LASTNAME.trim()) && age.equals(AGE.trim())
					   && gender.equals(GENDER.trim()) && contact.equals(CONTACT.trim()) && uid.equals(UID.trim())
					   && pass.equals(PASSWORD.trim())){
				 
			      return "SUCCESS"; 
			   }
			
		return "FAIL";
	 
	 }
	
}
