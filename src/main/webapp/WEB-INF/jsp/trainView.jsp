<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train</title>
<style>
body {
	background-color: black;
}

h1 {
	color: green;
}

p {
	color: green;
}
</style>

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