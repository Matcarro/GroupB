<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main page</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    
</head>
<body>
<div id="myBody">
	<div class="flex">
		<form id="form" action="/CorsoSpringWeb/train" method="post">
			<label for="train">Train:</label> 
			<input type="text" id="train" name="train">
			<label for="country">Country:</label> 
			<input type="text" id="country" name="country">
			<br />
			<input id="submit" type="submit" value="Train preview">
		</form>
	</div>
</div>
</body>
</html>