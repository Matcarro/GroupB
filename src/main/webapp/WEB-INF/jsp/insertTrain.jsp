<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main page</title>
<link href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">
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