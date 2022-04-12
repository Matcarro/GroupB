<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
<div id="form">
	<h2>${username}'s profile</h2>	
	<button onclick="window.location.href='/CorsoSpringWeb/insertTrain'"> Create new train </button>
	<h2>My trains</h2>
</div>

</body>
</html>