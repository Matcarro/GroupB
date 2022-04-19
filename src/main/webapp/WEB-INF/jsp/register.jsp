<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
    <link rel="stylesheet" href="/CorsoSpringWeb/resources/css/register.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
          <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">
    <title>Registrazione</title>

  </head>
  <body style="margin-top:10px">
  
    <div href="./" class="logo-img d-flex justify-content-center align-items-center p-4">
      <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" />
    </div>

    
    <div class="pt-5 pb-5 col-12 d-flex align-items-center justify-content-center" >

	<form id="form" class="card p-4 col-5" action="/CorsoSpringWeb/register" method="post" ng-app="regApp" ng-controller="controlRegApp" name="registerForm" novalidate>

        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <div class="d-flex align-items-center justify-content-between gap-2">
          <input
            type="text"
            class="form-control form-input"
            id="name"
            name="name"
            ng-model="name"
            required
          >
        	<ion-icon style="color:green" name="checkmark-circle-outline" ng-show="registerForm.name.$valid"></ion-icon>
			<ion-icon style="color:red"  name="alert-circle-outline" ng-show="registerForm.name.$error.required && registerForm.name.$dirty && registerForm.name.$invalid" ></ion-icon>
        </div>
        </div>
        <div class="mb-3">
          <label for="surname" class="form-label">Surname</label>
          <div class="d-flex align-items-center justify-content-between gap-2">
          <input
            type="text"
            class="form-control form-input"
            id="surname"
            name="surname"
            ng-model="surname"
            required
          />
          <ion-icon style="color:green" name="checkmark-circle-outline" ng-show="registerForm.surname.$valid"></ion-icon>
			<ion-icon style="color:red"  name="alert-circle-outline" ng-show="registerForm.surname.$error.required && registerForm.surname.$dirty && registerForm.surname.$invalid" ></ion-icon>
       		</div>
        </div>
        <div class="mb-3">
          <label for="date" class="form-label">Birthday</label>
          <div class="d-flex align-items-center justify-content-between gap-2">
          <input
            type="date"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="date"
            name="date"
            ng-model="date"
            min="1900-01-01" max="2022-12-31"
            required
          />
          <ion-icon style="color:green" name="checkmark-circle-outline" ng-show="registerForm.date.$valid"></ion-icon>
			<ion-icon style="color:red"  name="alert-circle-outline" ng-show="registerForm.date.$error.required || registerForm.date.$error.date" ></ion-icon>
			</div>
        </div>

        <div class="mb-3">
          <label for="email" class="form-label">Email</label>

          <div class="d-flex align-items-center justify-content-between gap-2">
          <input
            type="text"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="email"
            name="email"
            ng-model="email"
            ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/"
            required
          />
          <ion-icon style="color:green" name="checkmark-circle-outline" ng-show="registerForm.email.$valid"></ion-icon>
			<ion-icon style="color:red"  name="alert-circle-outline" ng-show="registerForm.email.$error.required || registerForm.email.$error.pattern" ></ion-icon>
		</div>
		<div id="emailHelp" class="form-text">
            We will not share your email.
          </div>
          <div id="emailError" style="color:red">
          	${emailError}
          </div>
        </div>
        <div class="mb-5">
          <label for="password" class="form-label">Password</label>
          <div class="d-flex align-items-center justify-content-between gap-2">
          <input type="password" class="form-control form-input" aria-describedby="passHelp" id="password" name="password" ng-model="password" ng-pattern="/^(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/" required/>
          <ion-icon style="color:green" name="checkmark-circle-outline" ng-show="registerForm.password.$valid"></ion-icon>
			<ion-icon style="color:red"  name="alert-circle-outline" ng-show="registerForm.password.$error.required || registerForm.password.$error.pattern" ></ion-icon>
          </div>
          <div id="passHelp" class="form-text">
            Minimum 8 characters, 1 number, 1 uppercase and 1 special character.
          </div>
        </div>
        <div class="buttons d-flex justify-content-between">
          <a href="/CorsoSpringWeb/home" class="button-heading reg-btn">Back</a>
          <input type="submit" ng-disabled="registerForm.name.$dirty && registerForm.name.$invalid ||
          registerForm.surname.$dirty && registerForm.surname.$invalid ||
          registerForm.date.$dirty && registerForm.date.$invalid ||
          registerForm.email.$error.required || registerForm.email.$error.pattern ||
          registerForm.password.$error.required || registerForm.password.$error.pattern ||
          registerForm.date.$error.required || registerForm.date.$error.date" class="btn btn-primary cl-submit" >
        </div>
      </form>



      <script>
		var app = angular.module('regApp', []);
		app.controller('controlRegApp', function($scope) {
		    $scope.name = 'Name';
		    $scope.surname = 'Surname';
		    $scope.email = 'email@email.com';
		});
	</script>


    </div>
    
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
				<ul class="nav justify-content-center pb-3 mb-3">
				<li class="nav-item"><a href="./home"
					class="nav-link px-2 text-light">Home</a></li>
				<li class="nav-item"><a href="./home#how"
					class="nav-link px-2 text-light">Features</a></li>
				<li class="nav-item"><a href="./home#contact"
					class="nav-link px-2 text-light">Contacts</a></li>
				<li class="nav-item"><a href="./home#who"
					class="nav-link px-2 text-light">About the developers</a></li>

			</ul>
				<!-- Copyright -->
				<div class="text-center p-3"
					style="background-color: rgba(0, 0, 0, 0.2);">
					<a href="./home" class="logo justify-content-center"> <img
						src="/CorsoSpringWeb/resources/images/logo.png" alt=""
						class="logo-img small" />
					</a>
					<p class="text-center text-muted">© 2022 DecHit-Trains, Inc</p>
				</div>
				<!-- Copyright -->
			</footer>
    
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous" type="text/javascript"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


  </body>
</html>
