<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<button onclick="userAction()">TEST</button>
</body>
 <script type="text/javascript">
    	const userAction = async () => {
		  const response = await fetch('/CorsoSpringWeb/getString');
		  const myJson = await response.json(); //extract JSON from the http response
		  console.log(myJson);
		  // do something with myJson
		}
    </script>
</html>
