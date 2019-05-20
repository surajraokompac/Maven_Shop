<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.try1 {
	align: "center";
}

img {
	float: none;
}

.try {
	
	padding: 25px;
	margin: 25px;
	border-left: 8px solid red;
  background-color: lightgrey;
}
img {
    width: 200px !important;
    height: 200px !important;
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
.buy{

background-color: #f44336;
}
input{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;

}
 body {
	background-image: url("image/back.jpg");
}
</style>
<title>Home Page</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<%
String str="";
	
	if((String) session.getAttribute("name")!=null){
		str=(String) session.getAttribute("name");
	}
%>
	<div class="welcome"><h2 class="wel">Auto</h2><h2 class="come">Parts</h2> </div>

	<form action="">
		<center>
			<table style="float: auto:" class="try1">
				<tr>
					<td id='1'>
						<div class="try">
							<img alt="part1" src="image/part1.jpg">
							<div>Part 1</div>
							<input class="buy" type="button" value="Buy Now(Rs. 1500)" onclick="buy('part1,1500')">

						</div>
					</td>

					<td id='2'>
						<div class="try">
							<img alt="part2" src="image/part2.jpg">
							<div>Part 2</div>
							<input class="buy" type="button" value="Buy Now(Rs. 1600)" onclick="buy('part2,1600')">
							
						</div>
					</td>

					<td id='3'>
						<div class="try">
							<img alt="part3" src="image/part3.jpg">
							<div>Part 3</div>
							<input class="buy" type="button" value="Buy Now(Rs. 5000)" onclick="buy('part3,5000')">
						</div>
					</td>

				</tr>
				<tr>
					<td id='4'><div class="try">

							<img alt="part4" src="image/part4.jpg">
							<div>Part 4</div>
							<input class="buy" type="button" value="Buy Now(Rs. 1400)" onclick="buy('part4,1400')">
						</div></td>

					<td id='5'><div class="try">

							<img alt="part5" src="image/part5.jpg">
							<div>Part 5</div>
							<input class="buy" type="button" value="Buy Now(Rs. 4000)" onclick="buy('part5,4000')">
						</div></td>

					<td id='6'><div class="try">

							<img alt="part6" src="image/part6.jpg">
							<div>Part 6</div>
							<input class="buy" type="button" value="Buy Now(Rs. 3000)" onclick="buy('part6,3000')">
						</div></td>

				</tr>
				<tr>
					<td id='7'><div class="try">

							<img alt="part7" src="image/part7.jpg">
							<div>Part 7</div>
							<input class="buy" type="button" value="Buy Now(Rs. 2000)" onclick="buy('part7,2000')">
						</div></td>

					<td id='8'><div class="try">

							<img alt="part8" src="image/part8.jpg">
							<div>Part 8</div>
							<input class="buy" type="button" value="Buy Now(Rs. 2200)" onclick="buy('part8,2200')">
							
						</div>
						</div></td>

					<td id='9'><div class="try">

							<img alt="part9" src="image/part9.jpg">
							<div>Part 9</div>
							<input class="buy" type="button" value="Buy Now(Rs. 500)" onclick="buy('part9,500')">
						</div></td>

				</tr>

			</table>
	</form>
</body>
<script type="text/javascript">
	function buy(name) {
		var v='<%=str%>';
		if(v!=''&&v!=null){
			window.location = "buy.jsp?part_name=" + name;
		}else{
			
			var test=window.confirm("Already Registered ?!");
			if(test==true){
				
				window.location="login.jsp"
			}else{
				
				window.location="register.jsp"	
			}
			
		}
		

	}
</script>
<jsp:include page="footer.jsp" />
</html>