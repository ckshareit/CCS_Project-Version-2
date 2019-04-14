<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fill Form</title>
<script type="text/javascript">
	function checkfield() {
		
		if (document.forminput.fname.value == "") {
			alert("Enter your First Name");
			var field=document.forminput.fname;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.fname.focus();
			return false;
		}
		if (document.forminput.lname.value == "") {
			alert("Enter your Last Name");
			var field=document.forminput.lname;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.lname.focus();
			return false;
		}
		if (document.forminput.age.value == "") {
			alert("Enter your Age");
			var field=document.forminput.age;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.age.focus();
			return false;
		}
		if (document.forminput.gender.value == "none") {
			alert("Select Your Gender");
			var field=document.forminput.gender;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			return false;
		}
		if (document.forminput.contact.value == "") {
			alert("Enter your Contact");
			var field=document.forminput.contact;
			field.style.borderColor="red";
			field.style.borderWidth="5px";
			document.forminput.contact.focus();
			return false;
		}
		if (document.forminput.uid.value == "") {
			alert("Enter your UID");
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
<body >
<div id="form"><center>
<h1>Fill Details</h1>
<form action="FormServlet" method="post" name="forminput" onsubmit="return checkfield()"><br><br>
First Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fname"><br><br>
Last Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lname"><br><br>
Age : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="age"><br><br>

Gender : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select  name="gender" >
<option value="none">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select><br><br>

Contact Number : <input type="text" name="contact"><br><br>
UID Number : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uid"><br><br>
Password : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit" id="btn">
<br><span style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
</form></center>

<br><br>
<center><a href="index.html">Home</a></center>
</div>
</body>
</html>