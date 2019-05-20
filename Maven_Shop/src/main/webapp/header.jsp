<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
header {
	background-color: #777;

	text-align: center;
	color: white;
}
.left_1{
padding-left: 950px;
}
.right_1{
padding-right: 950px;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

.navbar {
  overflow: hidden;
  background-color: #333; 
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.subnav {
  float: left;
  overflow: hidden;
}

.subnav .subnavbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .subnav:hover .subnavbtn {
  background-color: red;
}

.subnav-content {
  display: none;
  position: absolute;
  left: 0;
  background-color: red;
  width: 100%;
  z-index: 1;
}

.subnav-content a {
  float: left;
  color: white;
  text-decoration: none;
}

.subnav-content a:hover {
  background-color: #eee;
  color: black;
}

.subnav:hover .subnav-content {
  display: block;
}
.name_logout a {
  float: right;
  color: white;
  text-decoration: none;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="navbar">
  <a href="index.jsp">Home</a>
  <!-- <div class="subnav">
    <button class="subnavbtn">About <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#link1">Team </a>
      <a href="#link2">History </a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn">Services <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#link1">Services 1</a>
      <a href="#link2">Services 2</a>
      <a href="#link3">Services 3</a>
    </div>
  </div> 
  <a href="#contact">Contact</a>
   -->
  <%
  if ((String) session.getAttribute("name") != null) { 
  %>
 <div class="name_logout"> 
  <a href="logout.jsp" >Logout </a><a href="#"><%=(String) session.getAttribute("name")%></a></div>
  <%}else{
	  %>
	  <div class="name_logout">
	  <a href="register">New User</a> | <a href="login">Existing
			User</a></div></div>
  <%} %>
</div>

</body>
</html>