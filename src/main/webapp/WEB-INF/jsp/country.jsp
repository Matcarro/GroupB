<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Country</title>

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
<link  href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">

</head>
<body>

	<%
		
	boolean isAdmin = (boolean) session.getAttribute("isAdmin");
		
	%>
	
	<header
		class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-even py-3 mb-4 border-bottom fixed-top">
		<a href="./"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<img height="40" src="/CorsoSpringWeb/resources/images/logo.png"
			alt="" class="logo" />
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="./home#how" class="nav-link pill">How it works</a></li>
			<c:choose>
        	<c:when test="${isAdmin}">
	          <li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
         	</c:when>
      		</c:choose>
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/insertTrain'"
				type="button" class="btn btn-primary">New Train</button>
		</div>
	</header>
	
	<div class="d-flex justify-content-center align-items-center">
		<h1>${country}</h1>
	</div>
	
	<div class="d-flex">
		<div>
			<div class="embed-responsive embed-responsive-16by9 ">
  				<iframe class="embed-responsive-item p-3" width="800" height="800" src="https://it.wikipedia.org/wiki/${country}">
  				</iframe>
			</div>
		</div>
	
		<div class="d-flex justify-content-center align-items-center pt-4 pb-4 ">
			<div ng-app="myApp" ng-controller="customersCtrl">
				<h3>Official name: {{myData[0].name["official"]}}<img src="{{myData[0].coatOfArms['svg']}}" alt="Country not found" class="p-3"
					style="width:100px;"></h3>
				<h2>Currency:</h2>
				<h3>{{myData[0].currencies[currency]["name"]}}  {{myData[0].currencies[currency]["symbol"]}}</h3>
				<h2 class="pt-3">Capital:</h2>
				<h3>{{myData[0].capital[0]}}</h3>
				<h2 class="pt-3">Population:</h2>
				<h3>{{myData[0].population}}</h3>
				
			</div>
		</div>
	
	</div>
		
		<script type="text/javascript">
			var app = angular.module('myApp', []);
			app.controller('customersCtrl', function($scope, $http) {
				$http.get("https://restcountries.com/v3.1/name/${country}").then(
						function(response) {
							$scope.myData = response.data;
							$scope.currency = JSON.stringify($scope.myData[0].currencies).substring(2, 5);
							$scope.mapAddress = $scope.myData[0].maps["googleMaps"];
							console.log(currency);
							
						});
				
			});
			
		</script>

</body>
</html>