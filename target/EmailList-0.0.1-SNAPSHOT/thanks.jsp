<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="main.css" type="text/css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
	<h1>Thanks for joining our survey</h1>
	<p>Here is the information that you have entered:</p>
	
	<label>First name: </label>
	<span>${user.firstName }</span><br>
	
	<label>Last name: </label>
	<span>${user.lastName }</span><br>
	
	<label>Email: </label>
	<span>${user.email }</span><br>
	
	<label>Date of Birth: </label>
	<span>${user.dateOfBirth }</span><br>
	
	<label>How did you hear about us? </label>
	<span>${user.how }</span><br>
	
	<label>Would you like to receive announcements about new CDs and special offers? </label>
	<c:forEach var="item" items="${user.yesList}">
    <span>${item}</span>
	</c:forEach>
	<br>
	<label>Contact you by: </label>
	<span>${user.contact }</span><br>
	<p>To enter another survey, click on the Back button in your browser or the Return button</p>
	<form action="" method="get">
		<input type="hidden" name="action" value="join">
		<input type="submit" value="Return">
	</form>
</body>
</html>