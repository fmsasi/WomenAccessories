<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<!-- <body background="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\u.jpg"> -->
<body>
<table height="1000" width="2000" background="D:\SasiProject\WomenAccessoriesFrontEnd\src\main\webapp\WEB-INF\images\cc.jpg" cellspacing="0" cellpadding="0">

	<span style="color: red">${error }</span>
	<br> ${msg }
	<br>
	
	<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login Now</h2>
		    <c:url value="/j_spring_security_check" var="url"></c:url>
	<form method="post" action="${url }">
		    <form class="login-form">
  <div class="form-group">
 		<p><b>Enter Email</b></p>
 		<input type="text" name="j_username" class="form-control" placeholder="">
		<p><b>Enter password</b></p>
		<input type="password" name="j_password" class="form-control" placeholder="">
		<br><input type="submit" value="Login">
     </div>
  
</form>
	
</body>
</html>
