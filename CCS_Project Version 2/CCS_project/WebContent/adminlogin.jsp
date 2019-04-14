<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<script type="text/javascript">
	function checkfield() {
		if (document.forminput.uid.value == "") {
			alert("Enter your ID");
			var field=document.forminput.uid;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.uid.focus();
			return false;
		}
		if (document.forminput.pass.value == "") {
			alert("Enter your Password");
			var field=document.forminput.pass;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.pass.focus();
			return false;
		}
	}
</script>
<style>
h1{
color:yellow;
 background-color: #765af1; 
}
a{
color:red;
 background-color: white; 
}
 body{
 background-color: #5bc0de; 
  }
  #form{
  padding-left:25%;
  padding-right:25%;
  width:50%;
height:100%;
  }
 #btn{
 border-radius:5px;
 color:#2d6d9c;
 background-color: #83de3b;
 padding:5px 5px 5px 5px;
 }
  #btn:hover{
   border-radius:5px;
 color:#13060f;
 background-color: #deaa3b;
 padding:5px 5px 5px 5px;
 }
</style>
</head>
<body>
<div id="form"><center>
<h1>Admin Login</h1>
<form action="AdminServlet" method="post" name="forminput" onsubmit="return checkfield()"><br><br>

ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uid"><br><br>
Password : <input type="password" name="pass"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login" id="btn">
<br>
</form></center>

<br><br>
<center><a href="index.html">Home</a></center>
</div>
</body>
</html>