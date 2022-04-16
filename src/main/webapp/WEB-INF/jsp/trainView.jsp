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
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link  href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">
</head>

<body>
<header
		class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-even py-3 mb-4 border-bottom fixed-top">
		<a href="#"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<img height="40" src="/CorsoSpringWeb/resources/images/logo.png"
			alt="" class="logo" />
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="./home#how" class="nav-link pill">How it works</a></li>
			<li><a href="./insertTrain" class="nav-link">New Train</a></li>
			
					<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/profile'"
				type="button" class="btn btn-primary">Profile</button>
		</div>
	</header>
<main class="container">
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
		</main>
		<section class="mt-5">
			<!-- Footer -->
			<footer class="text-center text-white"
				style="background-color: #0a4275;">


				<!-- Grid container -->
				<div class="container pt-4">
					<!-- Section: Social media -->
					<section class="mb-4">
						<!-- Facebook -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-facebook-f"></i></a>

						<!-- Twitter -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-twitter"></i></a>

						<!-- Google -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-google"></i></a>

						<!-- Instagram -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-instagram"></i></a>

						<!-- Linkedin -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-linkedin"></i></a>
						<!-- Github -->
						<a class="btn btn-link btn-floating btn-lg text-light m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-github"></i></a>
					</section>
					<!-- Section: Social media -->
				</div>
				<!-- Grid container -->

				<!-- Copyright -->
				 <ul class="nav justify-content-center pb-3 mb-3">
      <li class="nav-item"><a href="./home" class="nav-link px-2 text-light">Home</a></li>
      <li class="nav-item"><a href="./home#how" class="nav-link px-2 text-light">Features</a></li>
      <li class="nav-item"><a href="./home#contact" class="nav-link px-2 text-light">Contacts</a></li>
      <li class="nav-item"><a href="./home#who" class="nav-link px-2 text-light">About the developers</a></li>
    </ul>
    <a href="./home" class="logo justify-content-center"> <img
					src="/CorsoSpringWeb/resources/images/logo.png" alt=""
					class="logo-img small" />
				</a>
    <div class="text-center text-muted pb-5">© 2022 DecHit-Trains, Inc</div>
				<!-- Copyright -->
			</footer>
			<!-- Footer -->
		</section>
</body>
</html>
