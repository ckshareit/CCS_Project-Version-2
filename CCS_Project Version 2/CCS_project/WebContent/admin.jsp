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
<title>Insert title here</title>
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
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system"
		password="root" />

	<sql:query dataSource="${db}" var="rs">  
select*from CCS_FORM 
</sql:query>

<table  width="100%" >
		<tr id="head">
			<th>UID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Application Status</th>
			<th>Dispatch Status</th>
			<th>Action</th>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr id="data">
				<td><center><c:out value="${table.UIDs}" /></center></td>
				<td><center><c:out value="${table.First_Name}" /></center></td>
				<td><center><c:out value="${table.Last_Name}" /></center></td>
				<td><center><c:out value="${table.STATUS}" /></center></td>
				<td><center><c:out value="${table.Dispatch_Status}" /></center></td>
				 <td><center><a href="update.jsp?id=${table.UIDs}"  width="50px"><button > &emsp;Update&emsp; </button></a></center></td>
			</tr>
		</c:forEach>
	</table>
	
<br><br><br>
<center><a href="index.html">Logout</a></center>

</body>
</html>