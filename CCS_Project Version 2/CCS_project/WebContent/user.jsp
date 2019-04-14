<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
<link href="css\main.css" type="text/css" rel="stylesheet">
<style>
h1{
color:yellow;
 background-color: #765af1; 
}
a{
color:blue;
 background-color: white; 
}
 body{
 background-color: #5bc0de; 
  }
  #head{
  color:green;
 background-color: white; 
  }
  #data{
  color:red;
 background-color: white; 
  }
</style>
</head>
<body>



<a href="index.html"><button id="button1" type="button">Logout</button></a>
<div class="fram">
<div class="LeftFrame BkColr">
<center>
<div>
<img src="images/user.png" height="150" width="150px">
</div></center>
<div><center>
<br><br>
<% out.print("Welcome, User "+request.getParameter("id")); %>
</center>
</div>

</div>
<div class="LeftFrame">

<div>
<!-- Change in Page Start Here -->
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system"
		password="root" />

	<sql:query dataSource="${db}" var="rs">  
select*from CCS_FORM WHERE UIDs='<%= request.getParameter("id") %>'
</sql:query>

<table  width="100%" >
		<tr id="head">
			
			<th>First Name</th>
			<th>Last Name</th>
			<th>Application Status</th>
			<th>Dispatch Status</th>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr id="data">
				
				<td><center><c:out value="${table.First_Name}" /></center></td>
				<td><center><c:out value="${table.Last_Name}" /></center></td>
				<td><center><c:out value="${table.STATUS}" /></center></td>
				<td><center><c:out value="${table.Dispatch_Status}" /></center></td>
				
			</tr>
		</c:forEach>
	</table>
<!-- Change in Page End Here -->
</div>

</div>

</div>
</body>
</html>