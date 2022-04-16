<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
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
    <div class="container d-flex justify-content-center">
			<header	class="justify-content-center py-3 mb-4 border-bottom">
				<a href="./"	class="logo justify-content-center">
        			<img src="/CorsoSpringWeb/resources/images/logo.png" alt="" class="logo-img" />
				</a>
				<ul class="nav nav-pills justify-content-center ">
					<li class="nav-item"><a href="./home" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="./profile" class="nav-link">Profile</a></li>
					
					<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
				</ul>
			</header>
		</div>

<<<<<<< HEAD
	<h5 class="d-flex justify-content-center align-items-center">You selected the following train:</h5>
	<p class="d-flex justify-content-center align-items-center fs-3">${train}</p>
	<h5 class="d-flex justify-content-center align-items-center">From the country:</h5>
	<a href="/CorsoSpringWeb/country" class="d-flex justify-content-center align-items-center display-6">${esito.correct}</a>
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<div ng-app="myApp" ng-controller="customersCtrl" class="d-flex justify-content-center align-items-center m-3">
			<img src="{{myData[0].flags['svg']}}" style="height:50px;"></img>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('customersCtrl', function($scope, $http) {
			$http.get("https://restcountries.com/v3.1/name/${esito.correct}").then(
					function(response) {
						$scope.myData = response.data;
					});
		});
	</script>
=======
	<h3 class="d-flex justify-content-center align-items-center">You selected the following train:</h3>
	<p class="d-flex justify-content-center align-items-center">${train}</p>
	<h3 class="d-flex justify-content-center align-items-center">From the country:</h3>
	<p class="d-flex justify-content-center align-items-center">${country}</p>
>>>>>>> 6bce706cd33b8e87b27f5c4396cda02db2d7b89e
	
	<div class="d-flex justify-content-center align-items-center">
		<h3>Wagon list:</h3>
	</div>
	
		<div class="d-flex justify-content-center align-items-center flex-row-reverse pr-5 pl-5 pt-5">
			<c:forEach items="${trainWagons}" var="wagon">
				<div class=" d-flex flex-column justify-content-center align-items-center">
					<span class="tt card " data-bs-placement="bottom" title="${wagon.getClass().getSimpleName() }">
  						<img src="/CorsoSpringWeb/resources/images/${wagon.getClass().getSimpleName()}.png" class="card-img-left" width="55" height="40" alt="">
  					</span>
			   </div>
			</c:forEach>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<script>
			const tooltips = document.querySelectorAll('.tt')
			tooltips.forEach(t => {
				new bootstrap.Tooltip(t)
			})
		</script>
</body>
</html>
