<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<h1>${username}</h1>
	<h1>You selected the following train:</h1>
	<p>${train}</p>
	<h1>From the factory:</h1>
	<p>${factory}</p>
	<h1>And you got:</h1>
	<p>${trainString}</p>
</body>
</html>