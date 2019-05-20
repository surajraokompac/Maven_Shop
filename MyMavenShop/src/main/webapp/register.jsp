<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	align: center;
	margin: 0 auto;
	padding-left: 470px;
	float: left;
	width: 20%;
}

.cen {
	align: center;
	margin: 0 auto;
	width: 400px;
	padding-top: 20px;
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

#mydiv {
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

table {
	border-collapse: collapse;
	background-color: lightgrey;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: red;
	color: white;
}

.cen {
	align: center;
	margin: 0 auto;
	width: 400px;
	padding-top: 20px;
}

input {
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

#submit_test {
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

.wel {
	color: red;
}

.come {
	color: gray;
}

.welcome {
	text-align: center;
	text-transform: uppercase;
}
body {
	background-image: url("image/back.jpg");
}
</style>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>

	<div class="welcome" style="font-family: Arial, Helvetica, sans-serif;">
		<h2 class="wel">Auto Parts</h2>
		<h2 class="come">Registration</h2>
	</div>


	<form name="myform" action="login.jsp" method="post">

		<table>
			<tr>
				<th></th>
				<th style="font-family: Arial, Helvetica, sans-serif;">Enter
					your details</th>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Name</b></label></td>
				<td><input type="text" placeholder="Name" id="name" name="name"
					onchange="validate()" required="required"></td>
				<!-- <div id="mydiv1" class="email" style="color: red;"></div> -->
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Email</b></label></td>
				<td><input type="text" placeholder="Enter Email" id="email"
					onchange="emailcheck()" name="email" required="required"></td>

			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Password</b></label></td>
				<td><input type="password" id="psw" name="psw"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					placeholder="Enter password"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					required></td>

			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label
					for="psw-repeat"><b>Retype Password</b></label></td>
				<td><input type="password" placeholder="Retype Password"
					id="rpw" onchange="matchpw()" name="psw-repeat" required></td>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Address</b></label></td>
				<td><textarea rows="4" cols="50" name="address"
						placeholder="Enter Your address" required></textarea></td>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>PhoneNumber</b></label></td>
				<td><input type="number" placeholder="Phone Number" id="phone"
					name="number" maxlength="10" required></td>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>Country</b></label></td>
				<td><select required="required">
						<option value="">Selcet Country</option>
						<option value="Haiti">Haiti</option>
						<option value="Heard and McDonald Islands">Heard and Mc
							Donald Islands</option>
						<option value="Holy See">Holy See (Vatican City State)</option>
						<option value="Honduras">Honduras</option>
						<option value="Hong Kong">Hong Kong</option>
						<option value="Hungary">Hungary</option>
						<option value="Iceland">Iceland</option>
						<option value="India">India</option>
						<option value="Indonesia">Indonesia</option>
						<option value="Iran">Iran (Islamic Republic of)</option>
						<option value="Iraq">Iraq</option>
						<option value="Ireland">Ireland</option>
						<option value="Israel">Israel</option>
						<option value="Italy">Italy</option>
						<option value="Jamaica">Jamaica</option>
						<option value="Japan">Japan</option>
						<option value="Jordan">Jordan</option>
						<option value="Kazakhstan">Kazakhstan</option>
						<option value="Kenya">Kenya</option>
						<option value="Kiribati">Kiribati</option>
						<option value="Democratic People's Republic of Korea">Korea,
							Democratic People's Republic of</option>
						<option value="Korea">Korea, Republic of</option>
						<option value="Kuwait">Kuwait</option>
						<option value="Kyrgyzstan">Kyrgyzstan</option>
						<option value="Lao">Lao People's Democratic Republic</option>
						<option value="Latvia">Latvia</option>
						<option value="Lesotho">Lesotho</option>
						<option value="Liberia">Liberia</option>
						<option value="Libyan Arab Jamahiriya">Libyan Arab
							Jamahiriya</option>
						<option value="Liechtenstein">Liechtenstein</option>
						<option value="Lithuania">Lithuania</option>
						<option value="Luxembourg">Luxembourg</option>
				</select></td>
			</tr>
			<tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>State</b></label></td>
				<td><select required="required">

						<option value="">Selcet State</option>
						<option value="Andaman and Nicobar Islands">Andaman and
							Nicobar Islands</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Lakshadweep">Lakshadweep</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Orissa">Orissa</option>
						<option value="Pondicherry">Pondicherry</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttaranchal">Uttaranchal</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="West Bengal">West Bengal</option>

				</select></td>
			</tr>
			<!-- <tr>
				<td style="font-family: Arial, Helvetica, sans-serif;"><label><b>City</b></label></td>
				<td><input type="text" placeholder="City" name="city" required></td>
			</tr> -->



			<tr>

				<td></td>
				<td><input type="submit"
					style="font-family: Arial, Helvetica, sans-serif;" id="submit_test"
					value="submit"></td>
			</tr>
		</table>

		<a href="login.jsp"><h3 style="color: lightgray;font-family: Arial, Helvetica, sans-serif;">Already Registered ?</h3></a>
	<a href="index.jsp"><h3 style="color: lightgray;font-family: Arial, Helvetica, sans-serif;">Home</h3></a>
	</form>
	<div id="message"
		style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
		<h3>Password must contain the following:</h3>
		<p id="letter" class="invalid">A lowercase letter</p>
		<p id="capital" class="invalid">A capital (uppercase) letter</p>
		<p id="number" class="invalid">A number</p>
		<p id="length" class="invalid">Minimum 8 characters</p>
	</div>
	<div id="mydiv"
		style="font-family: Arial, Helvetica, sans-serif; font-size: 20px;"
		class="email" style="color: red;"></div>
	<script type="text/javascript">
		function validate() {
			var x = document.getElementById("name").value;
			if (x.search(/^[a-zA-Z]+$/) === -1) {

				document.getElementById("mydiv").innerHTML = "<h4 style='font-family: Arial, Helvetica, sans-serif;'>Enter only charecter</h4>";
				document.getElementById("name").value = "";
				show();

			} else {
				document.getElementById("name").value = document.getElementById("name").value.toUpperCase();
			}
			if (x == " ") {
				alert("Name must be filled out");
				return false;
			}

		}
		function emailcheck() {

			var x = document.getElementById("email").value;

			var result = secvalidateEmail(x);

			if (result == false) {
				document.getElementById("mydiv").innerHTML = "<h4>Please enter correct email</h4>";
				document.getElementById("email").value = "";
				show();
			}
		}
		function secvalidateEmail(email) {

			var arr = email.split('');
			var t1 = false;
			for (var i = 0; i < arr.length; i++) {

				if (arr[i] == '@') {
					t1 = true;
				}

			}
			return t1;
		}

		function show() {
			document.getElementById("mydiv").style.display = "block";
			setTimeout("hide()", 5000);
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
		function matchpw() {

			var x = document.getElementById("rpw").value;
			var y = document.getElementById("psw").value;
			if (x != y) {
				document.getElementById("mydiv").innerHTML = "<h4>Your password is not matching</h4>";
				document.getElementById("rpw").value = "";
				show();
			}
		}
	</script>
</body>
</html>