<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Train</title>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;family=Rubik:wght@400;500;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"
	type="text/javascript">
	
</script>
<link href="/CorsoSpringWeb/resources/css/register.css" rel="stylesheet">
</head>

<body>
	<div class="container d-flex justify-content-center">
		<header class="justify-content-center py-3 mb-4 border-bottom">
			<a href="./" class="logo justify-content-center"> <img
				src="/CorsoSpringWeb/resources/images/logo.png" alt=""
				class="logo-img" />
			</a>
			<ul class="nav nav-pills justify-content-center ">
				<li class="nav-item"><a href="./home" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="./profile" class="nav-link">Profile</a></li>

				<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
			</ul>
		</header>
	</div>

	<h3 class="d-flex justify-content-center align-items-center">You selected the following train:</h3>
	 <p class="d-flex justify-content-center align-items-center">${train}</p>
	<h3 class="d-flex justify-content-center align-items-center">From the Country:</h3>
	 <p class="d-flex justify-content-center align-items-center">${esito.correct}</p>

	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<div ng-app="myApp" ng-controller="customersCtrl">
		<ul>
			<li ng-repeat="x in myData"> {{ x.search }} </li>
		</ul>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('customersCtrl', function($scope, $http) {
			$http.get("http://localhost:8008/sinonimi/${country}").then(
					function(response) {
						$scope.myData = response.data;
					});
		});
	</script>
	
	<div class="d-flex justify-content-center align-items-center">
		<h3>Wagon list:</h3>
	</div>

	<div class="d-flex  justify-content-center align-items-center pt-2">
		<c:forEach items="${trainWagons}" var="wagon">
			<div class="card" style="width: 18rem;">
				<img src="/CorsoSpringWeb/resources/images/01.png"
					class="card-img-left" alt="">
				<div class="card-body">
					${wagon}
					<!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
				</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>
