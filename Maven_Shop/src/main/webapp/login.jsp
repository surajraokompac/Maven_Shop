<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	align: center;
	margin: 0 auto;
	
	padding-top: 160px;
	padding-left:560px;
	float: left;
  width: 24%;
}
.wel{

  color: red;

}
.come{

  color: gray;

}
.welcome{
text-align: center;
  text-transform: uppercase;
}
table {
  border-collapse: collapse;
  background-color: lightgrey;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){
background-color: #f2f2f2
}

th {
  background-color:red;
  color: white;
}
.cen {
	align: center;
	margin: 0 auto;
	width: 400px;
	padding-top: 20px;
}
input{
  background-color: white; /* Green */
  border: none;
  color: black;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  /* font-size: 16px;
  margin: 4px 2px; */
  margin: 4px 2px;
  font-size: 16px;
  cursor: pointer;

}
#submit_test{
  background-color: red; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
 
  font-size: 12px;
  cursor: pointer;
  padding: 15px 32px;

}
#message {
	display: none;
	background: #f1f1f1;
	color: #000;
	position: relative;
	border-bottom: 8px solid red;
	padding: 20px;
	margin-top: 10px;
	float: right;
	width: 15%;
	padding-top: 50px;
	
}
#mydiv{

display: none;
	background: #f1f1f1;
	color: #000;
	position: relative;
	border-bottom: 8px solid red;
	padding: 20px;
	margin-top: 10px;
	float: right;
	width: 15%;
	padding-top: 50px;
}

.valid {
	color: green;
}



.invalid {
	color: red;
}
body {
	background-image: url("image/back.jpg");
}
</style>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<div class="welcome" style="font-family: Arial, Helvetica, sans-serif;"><h2 class="wel">Auto Parts</h2><h2 class="come">Login</h2> </div>
	<form action="login_check"  method="post">

		<table class="container">
		<tr><th></th><th style="font-family: Arial, Helvetica, sans-serif;">Enter your Credentials</th></tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Username</b></label></td>
				<td><input type="text" placeholder="Enter Username" id="name" name="name"
				onchange="validate()"	required></td>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Password</b></label></td>
				<td><input type="password" id="psw" name="psw"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter password"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					required></td>
			</tr>
			<tr>

				<td></td><td><input type="submit" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" id="submit_test" value="submit" required></td>
			</tr>
		</table>


		<a href="register"><h3 style="color: lightgray;font-family: Arial, Helvetica, sans-serif;">New User ?</h3></a>
		<a href="index"><h3 style="color: lightgray;font-family: Arial, Helvetica, sans-serif;">Home</h3></a>
	</form>
	<div id="message" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
					<h3>Password must contain the following:</h3>
					<p id="letter" class="invalid">
						A lowercase letter
					</p>
					<p id="capital" class="invalid">
						A capital (uppercase) letter
					</p>
					<p id="number" class="invalid">
						A number
					</p>
					<p id="length" class="invalid">
						Minimum 8 characters
					</p>
				</div>
				<div id="mydiv" style="font-family: Arial, Helvetica, sans-serif; font-size: 20px;" class="email" style="color: red;"></div>
	
<script type="text/javascript">

function validate() {
	var x = document.getElementById("name").value;
	if(x.search(/^[a-zA-Z]+$/) === -1){
		
		document.getElementById("mydiv").innerHTML = "<h4 style='font-family: Arial, Helvetica, sans-serif;'>Enter only charecter</h4>";
		document.getElementById("name").value="";
		show();
		
	} else {
		document.getElementById("name").value = document.getElementById("name").value.toUpperCase();
	}
	if (x == " ") {
		alert("Name must be filled out");
		return false;
	}

}

function show() {
	document.getElementById("mydiv").style.display = "block";
	setTimeout("hide()", 2000);
}

function hide() {
	document.getElementById("mydiv").style.display = "none";
}
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

myInput.onfocus = function() {
	document.getElementById("message").style.display = "block";
}

myInput.onblur = function() {
	document.getElementById("message").style.display = "none";
}

myInput.onkeyup = function() {

	var lowerCaseLetters = /[a-z]/g;
	if (myInput.value.match(lowerCaseLetters)) {
		letter.classList.remove("invalid");
		letter.classList.add("valid");
	} else {
		letter.classList.remove("valid");
		letter.classList.add("invalid");
	}

	var upperCaseLetters = /[A-Z]/g;
	if (myInput.value.match(upperCaseLetters)) {
		capital.classList.remove("invalid");
		capital.classList.add("valid");
	} else {
		capital.classList.remove("valid");
		capital.classList.add("invalid");
	}

	var numbers = /[0-9]/g;
	if (myInput.value.match(numbers)) {
		number.classList.remove("invalid");
		number.classList.add("valid");
	} else {
		number.classList.remove("valid");
		number.classList.add("invalid");
	}

	if (myInput.value.length >= 8) {
		length.classList.remove("invalid");
		length.classList.add("valid");
	} else {
		length.classList.remove("valid");
		length.classList.add("invalid");
	}
	
}



</script>
</body>

</html>