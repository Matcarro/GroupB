<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Train</title>
<link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Rubik:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    /> 
    <script
    src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js">
    </script>
<link  href="/CorsoSpringWeb/resources/css/register.css" rel="stylesheet">
</head>

<body>
    <div class="d-flex justify-content-center align-items-center">
        <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" >
    </div>

	<h3 class="d-flex justify-content-center align-items-center">You selected the following train:</h3>
	<p class="d-flex justify-content-center align-items-center">${train}</p>
	<h3 class="d-flex justify-content-center align-items-center">From the country:</h3>
	<p class="d-flex justify-content-center align-items-center">${country}</p>
	
	<div class="d-flex justify-content-center align-items-center">
		<h3>Wagon list:</h3>
	</div>
	
		<div class="d-flex  justify-content-center align-items-center pt-2">
			<c:forEach items="${trainWagons}" var="wagon">
				<div class="card" style="width: 18rem;">
  					<img src="/CorsoSpringWeb/resources/images/01.png" class="card-img-left" alt="">
  					<div class="card-body">
    						${wagon}
    					<!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
  					</div>
			   </div>
			</c:forEach>
		</div>
		
</body>
</html>