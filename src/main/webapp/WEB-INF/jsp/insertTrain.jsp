<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert Train</title>
	
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
</head>
<body>

	<header	class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-even py-3 mb-4 border-bottom fixed-top">
		<a href="#"	class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<img height="40" src="/CorsoSpringWeb/resources/images/logo.png" alt="" class="logo" />
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="./" class="nav-link pill">Home</a></li>
			<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
		</ul>

		<div class="col-md-3 text-end">
			
			<button onclick="window.location.href='/CorsoSpringWeb/profile'" type="button" class="btn btn-primary">Profile</button>
			<button onclick="window.location.href='/CorsoSpringWeb/logout'" type="button" class="btn btn-outline-primary me-2">Logout</button>
		</div>
	</header>


	<div class="d-flex justify-content-center align-items-center col-12">
	
		<form class="card p-5 rounded" id="form" action="/CorsoSpringWeb/train" method="post" ng-app="inserTrainFormApp" name="trainForm" ng-controller="inserTrainFormController">

            <div class="mb-3">
                <label for="train" class="form-label">Train code:</label>
                
                <br>
                <div class="d-flex align-items-center justify-content-between gap-2">
                	<input type="text" required class="form-control form-input" aria-describedby="trainCode" id="train" name="train" 
                	oninput="this.value = this.value.toUpperCase()" ng-model="train" ng-pattern="/L[RCP]*$/" required/>
                	<ion-icon style="color:green" name="checkmark-circle-outline" ng-show="trainForm.train.$valid"></ion-icon>
					<ion-icon style="color:red"  name="alert-circle-outline" ng-show="trainForm.train.$error.required || trainForm.train.$error.pattern" ></ion-icon>
                </div>
            </div>

			<div class="mb-3">
                <label for="country" class="form-label">Train country:</label>
                
                <br>
                <div class="d-flex align-items-center justify-content-between gap-2">
                	<input type="text" required class="form-control form-input" aria-describedby="trainCountry" id="country" name="country" ng-model="country" required/>
           		    <ion-icon style="color:green" name="checkmark-circle-outline" ng-show="trainForm.country.$valid"></ion-icon>
					<ion-icon style="color:red"  name="alert-circle-outline" ng-show="trainForm.country.$error.required && trainForm.country.$dirty && trainForm.country.$invalid" ></ion-icon>
           		</div>
            </div>

			<div class="d-flex justify-content-center align-items-center pt-3">
				<input id="submit" type="submit" ng-disabled="trainForm.train.$error.pattern || trainForm.train.$error.required || trainForm.country.$dirty && trainForm.country.$invalid"  value="Train preview" class="btn btn-primary cl-submit">
            </div>
            
		</form>
	</div>
	
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
      
      <li class="nav-item"><a href="./logout" class="nav-link px-2 fw-bold text-light">Log-out</a></li>
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
		
      <script>
		var app = angular.module('inserTrainFormApp', []);
		app.controller('inserTrainFormController', function($scope) {
		    $scope.train = '';
		    $scope.country = 'Italy';
		});
	</script>
		    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </body>
</html>
