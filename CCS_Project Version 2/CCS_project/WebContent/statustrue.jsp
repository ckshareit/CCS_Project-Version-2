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
<title>True</title>
<style>
h1{
color:green;
 background-color: white; 
}
a{
color:red;
 background-color: white; 
}
 body{
 background-color: #5bc0de; 
  }
</style>
</head>
<body>
<br><br><center>
<h1 >Details Verified Sucessfully</h1>
</center>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system"
		password="root" />

	<sql:update dataSource="${db}" var="rs">
update CCS_FORM set STATUS='Accepted' where UIDs='<%= request.getParameter("id") %>'

</sql:update>

<br><br><br>
<center><a href="index.html">Home</a></center>
</body>
</html>