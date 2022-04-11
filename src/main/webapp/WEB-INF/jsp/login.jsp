<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
	body {background-color: black;}
	h1   {color: green;}
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
		display: flex;
		justify-content: center;	
	}
	#form {
		text-align: center;
	}
	#menu {
		float: left;
		border: 0.1px solid green;
		width: 250px;
		max-height: none;
	}
</style>
</head>
<body>
	<div class="flex">
		<form id="form" action="/CorsoSpringWeb/jsp/index" method="post">
			<label for="username">Username:</label> 
			<input type="text" id="username" name="username">
			<br />
			<label for="password">Password:</label> 
			<input type="password" id="password" name="password">
			<br />
			<input type="submit" value="Submit">
		</form>
	</div>
	
</body>
</html>