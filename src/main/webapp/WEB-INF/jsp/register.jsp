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
        <script src="https://unpkg.com/@popperjs/core@2"></script>
    <title>Registrazione</title>

  </head>
  <body>
    <div class="logo-img d-flex justify-content-center align-items-center">
      <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" />
    </div>
    <div class="pt-1 col-12 d-flex align-items-center justify-content-center" >
      <form id="form" action="/CorsoSpringWeb/login" method="post" ng-app="regApp" ng-controller="controlRegApp" name="registerForm" novalidate>
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <div class="d-flex align-items-center justify-content-between gap-1">
          <input
            type="text"
            class="form-control form-input"
            id="name"
            name="name"
            ng-model="name"
            required
          >
			<ion-icon style="color:red" name="alert-circle-outline" ng-show="registerForm.name.$error.required && registerForm.name.$dirty && registerForm.name.$invalid" ></ion-icon>
        	</div>
        </div>
        <div class="mb-3">
          <label for="surname" class="form-label">Surname</label>
          <input
            type="text"
            class="form-control form-input"
            id="surname"
            name="surname"
            ng-model="surname"
            required
          />
          <span style="color:red" ng-show="registerForm.surname.$dirty && registerForm.surname.$invalid">
			<span ng-show="registerForm.surname.$error.required">Surname is required.</span>
			</span>
        </div>
        <div class="mb-3">
          <label for="date" class="form-label"
            >Birthday</label
          >
          <input
            type="date"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="date"
            name="date"
            ng-model="date"
            required
          />
          <span style="color:red" ng-show="registerForm.date.$dirty && registerForm.date.$invalid">
			<span ng-show="registerForm.date.$error.required">Date is required.</span>
			</span>
        </div>
        
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input
            type="email"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="email"
            name="email"
            ng-model="email"
            required
          />
          <span style="color:red" ng-show="registerForm.email.$dirty && registerForm.email.$invalid">
			<span ng-show="registerForm.email.$error.required">Emails is required.</span>
			
			</span>
          <div id="emailHelp" class="form-text">
            We will not share your email.
          </div>
        </div>
        <div class="mb-5">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control form-input" id="password" name="password" ng-model="password" />
        </div>
        <div class="buttons d-flex justify-content-between">
          <a href="/CorsoSpringWeb/home" class="button-heading reg-btn">Back</a>
          <input type="submit" ng-disabled="registerForm.name.$dirty && registerForm.name.$invalid || 
          registerForm.surname.$dirty && registerForm.surname.$invalid ||
          registerForm.date.$dirty && registerForm.date.$invalid ||
          registerForm.email.$dirty && registerForm.email.$invalid" class="btn btn-primary cl-submit" >
        </div>
      </form>
      <script>
var app = angular.module('regApp', []);
app.controller('controlRegApp', function($scope) {
    $scope.name = 'Name';
    $scope.surname = 'Surname';
    $scope.email = 'email@email.com';
    $scope.password = 'password';
});
</script>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
Basic usage
  </body>
</html>
