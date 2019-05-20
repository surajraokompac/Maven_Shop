<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PayMent Page</title>
<style type="text/css">
img {
    width: 200px !important;
    height: 200px !important;
}
.try {

	padding: 25px;
	margin: 25px;
	border-left: 8px solid red;
    background-color: lightgrey;
    /*  width: 200px !important;
    height: 200px !important; */
     float: left;
  width: 15%;
  height: 200px; /* only for demonstration, should be removed */
 
  padding: 20px;
}
form {
padding: 50px;
	margin: 40px;
	padding-top: 80px;
	padding-right: 400px;
		align: center;
		float: right;
        width: 50%;
 	     width: 400px;
	
	}
	.wel{

  color: red;

}
.come{

  color: gray;

}
.welcome{
padding: 20px;
float: left;
text-align: center;
  text-transform: uppercase;
}
.name_detail{
text-transform: uppercase;
float: right;
width: 50%;


	
	padding-right: 350px;
		align: center;
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

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color:red;
  color: white;
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
  /* font-size: 16px;
  margin: 4px 2px; */
  font-size: 16px;
  cursor: pointer;
  padding: 15px 32px;

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
body {
	background-image: url("image/back.jpg");
}
</style>
</head>
<body onLoad="noBack();">
<%
if((String)session.getAttribute("name")==null){
	%>
	
	<jsp:forward page="login.jsp" />
	
	<%
}

%>
	<jsp:include page="header.jsp" />
	<%
		String part_name1 = request.getParameter("part_name");
	String []part_name=part_name1.split(",");
	%>
<section>
  <nav>
	<div class="try">
		<img alt="<%=part_name[0]%>" src="image/<%=part_name[0]%>.jpg">
		</div>
		<%-- <h1 class="details"><%=part_name%></h1> --%>
		
		
		<div class="welcome" style="font-family: Arial, Helvetica, sans-serif;"><h2 class="wel">Product</h2><h2 class="come">Details</h2> </div>
		<div class="name_detail">
		<table>
		<tr><td style="font-family: Arial, Helvetica, sans-serif;">Product Name : </td><td style="font-family: Arial, Helvetica, sans-serif;"><%=part_name[0]%></td></tr>
		<tr><td style="font-family: Arial, Helvetica, sans-serif;">Amount : </td><td style="font-family: Arial, Helvetica, sans-serif;">Rs. <%=part_name[1] %></td></tr>
		</table>
		</div>
		
	</nav>
  
  <article>
	
		<form action="thankyou.jsp" method="post">
			<table>


<tr><th></th><th style="font-family: Arial, Helvetica, sans-serif;">Enter the credentials</th></tr>
				<tr>
					<td style="font-family: Arial, Helvetica, sans-serif;"><label>CARD NO : </label></td>
					<td><input type="number" class="" name="cardno" required="required" maxlength="16"/></td>
				</tr>
				<tr>
					<td style="font-family: Arial, Helvetica, sans-serif;"><label>VALIDITY :</label></td>
					<td><input type="month" class="" name="vatrdity" required="required"/></td>
				</tr>
				<tr>
					<td style="font-family: Arial, Helvetica, sans-serif;"><label>CVV :</label></td>
					<td><input type="password" name="cvv" required="required" maxlength="3"/></td>
				</tr>
				<tr>
					<td style="font-family: Arial, Helvetica, sans-serif;"><label>NAME :</label></td>
					<td><input type="text" class="" id="name" name="name" onchange="validate()" required="required"/></td>
				</tr>
				<tr>
					<td></td><td><input type="submit" id="submit_test" value="Submit" /></td>
				</tr>


			</table>

		</form>
		
		</article></section>
		<div id="mydiv" style="font-family: Arial, Helvetica, sans-serif; font-size: 20px;" class="email" style="color: red;"></div>
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
		function show() {
			document.getElementById("mydiv").style.display = "block";
			setTimeout("hide()", 5000);
		}

		function hide() {
			document.getElementById("mydiv").style.display = "none";
		}
		

		</script>
</body>
</html>