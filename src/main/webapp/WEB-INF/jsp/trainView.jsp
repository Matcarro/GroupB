<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>

<body>
	<div class="content">
	<h1>Train code ${train}</h2>
	<h1>${username}</h1>
	<h1>You selected the following train:</h1>
	<p>${train}</p>
	<h1>From the country:</h1>
	<p>${country}</p>
	<div class="train"> 
		<h1>Wagon list:</h1>
		<% for(int i = 0; i < 5; i++) { %>
			<div class="wagon">
				<h1>Wagon</h1>
			</div> 
		<% } %>
	</div>
	<p>${trainString}</p>
	</div>
</body>
</html>