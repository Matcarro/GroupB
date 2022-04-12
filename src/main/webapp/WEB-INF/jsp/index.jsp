<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main page</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <!--  
    <style>
	body {background-color: black;}
	h1   {color: green;}
	h2   {
		color: green;
	}
	p    {color: green;}
	label   {color: green;}
	input {
		border: 1px solid green;
		background-color: black;
		color: white;
	}
	input:hover {
		border: 1px solid green;
		background-color: gray;
		color: white;
		cursor: pointer;
	}
	.flex {
		padding-top: 8px;
		padding-left: 8px;
		display: flex;	
	}
	.borderBottom {
		border-bottom: 0.1px solid green;
		padding: 7px 0px 7px 0px;
		color: green;
	}
	.borderBottom:hover {
		cursor: pointer;
		background-color: gray;
	}
	#menuHeader {
		height: 60px;
		border: 0.1px solid green;
		display: flex;
    	justify-content: flex-end;
	}
	#form {
	
	}
	#menu {
		float: left;
		border: 0.1px solid green;
		width: 250px;
		max-height: none;
		text-align: center;
	}
	#factory {
		width: 70px;
	}
	#submit {
		width: 100px;
		height: 30px;
	}
</style>
    -->
</head>
<body>
<div id="menuHeader">
		<h2>
			Welcome ${username}
		</h2>	
</div>
<div id="myBody">
	<div id="menu">
		<div class="borderBottom">
			Search a Train
		</div>
		<div class="borderBottom">
			Contact us
		</div>
		<div class="borderBottom">
			FAQ
		</div>
		<div class="borderBottom">
			Logout
		</div>
	</div>
	<div class="flex">
		<form id="form" action="/CorsoSpringWeb/train" method="post">
			<label for="train">Train:</label> 
			<input type="text" id="train" name="train">
			<br />
			<label for="factory">Choose the factory:</label> 
			<select id="factory" name="factory">
				<option value="FR">FR</option>
  				<option value="TN">TN</option>
			</select>
			<br />
			<input id="submit" type="submit" value="Submit">
		</form>
	</div>
</div>
</body>
</html>