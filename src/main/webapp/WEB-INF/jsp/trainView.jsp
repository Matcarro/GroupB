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
			<li><a href="./insertTrain" class="nav-link">New Train</a></li>
			
		<c:choose>
        	<c:when test="${isAdmin}">
	          <li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
         	</c:when>
      	</c:choose>
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/profile'"
				type="button" class="btn btn-primary">Profile</button>
				<button onclick="window.location.href='/CorsoSpringWeb/logout'"
						type="button" class="btn btn-outline-primary me-2">Logout</button>
		</div>
	</header>
<main class="container">
	
	<%
		String str = (String) request.getAttribute("train");
	if(str != null) {
		%>
		
		<div class="card p-3 m-1">
		<h5 class="d-flex justify-content-center align-items-center pb-3">You selected the following train:</h5>
		<div class="d-flex overflow-auto mb-4 p-5" >
		<%
		
		for(int i = 0; i < str.length(); i++){
			
			%>
			<div class="col">
					<h3 style="text-align: center; font-size: 1.2rem;"><%=str.charAt(i) %></h3>
  					<img src="/CorsoSpringWeb/resources/images/<%=str.charAt(i) %>.png" class="card-img-left pb-2"  height="80">
					
			</div>
			<%
			
		}
		
%>



	</div>
	</div>
	
	<div class="card p-3 m-1">
	<c:choose>
         <c:when test = "${esito.correct != null}">
            	
	<h5 class="d-flex justify-content-center align-items-center">From the country:</h5>
	<div class="d-flex justify-content-center align-items-center pt-4 pb-4">
		<div class="card bg-dark text-white w-25 h-25 ">
			<div ng-app="myApp" ng-controller="customersCtrl">
			<img class="card-img" src="{{myData[0].flags['svg']}}" alt="Country not found">
				<div class="card-img-overlay d-flex justify-content-center align-items-center">
					<a class="card-title btn btn-dark " href="/CorsoSpringWeb/country?country=${esito.correct}" >${esito.correct}</a>	
				</div>
			</div>
		</div>
	</div>
         </c:when>
         
         <c:otherwise>
            
	<div class="container card p-3">
	<div class="alert alert-warning" role="alert">
	  ${esito.search} not found. 
	</div>
	<h5 class="d-flex justify-content-center align-items-center">Suggestions</h5>
	<div class="d-flex justify-content-center align-items-center pt-4 pb-4">
	
		<c:forEach var="suggestion" items="${esito.getOrderedSuggestions()}">
	        <div class="btn btn-warning">
	        	<c:out value="${suggestion}"/>
	        </div>
	    </c:forEach>
	</div>
         </c:otherwise>
      </c:choose>
	</div>
	</div>
	
	
	
	
	
	<div class="card p-3 m-1">
	<h5 class="d-flex justify-content-center align-items-center">Wagon's carousel:</h5>
	
	<section class="p-3 pt-3 pb-3 h-50">
		<div class="container">
	        	<div id="carouselExampleIndicators2" class="carousel slide carousel-fade " data-ride="carousel">
	        		<div class="carousel-inner" role="listbox">
						<c:forEach items="${trainWagons}" var="wagon">
							<c:choose>
							    <c:when test="${wagon.getClass().getSimpleName() == \"Locomotiva\"}">
							         <div class="carousel-item active">
							        	<div class="card d-blok border-primary mb-3">
								  			<img class="d-block"  src="/CorsoSpringWeb/resources/images/${wagon.getClass().getSimpleName()}.jpg" height=30% alt="">
											<div class="card-body">
												<h3 class="card-title">${wagon.getClass().getSimpleName()}</h3>
												<p class="card-text">${wagon.toString()}</p>
											</div>
										</div>
									</div>
							    </c:when>
							    <c:otherwise>
							       <div class="carousel-item">
							        	<div class="card d-blok border-primary mb-3">
								  			<img class="d-block" src="/CorsoSpringWeb/resources/images/${wagon.getClass().getSimpleName()}.jpg" height=30% alt="">
											<div class="card-body">
												<h3 class="card-title">${wagon.getClass().getSimpleName()}</h3>
												<p class="card-text">${wagon.toString()}</p>
											</div>
										</div>
									</div>
							    </c:otherwise>
							</c:choose>
								
						</c:forEach>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					 </a>
					 <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div>
		</div>
	</section>
	</div>
	
	<div class="card p-3 m-1 d-grid gap-2">
	<form action="./saveTrain" method="post">
		<input type="hidden" name="sigla" id="sigla" value="${train}"></input>
		<input type="hidden" name="country" id="country" value="${esito.correct}"></input>
		<button type="sumbit" class="btn btn-success">Save Train</button>
		</form>
		<button type="button" onclick="window.location.href='/CorsoSpringWeb/insertTrain'" class="btn btn-sm btn-outline-secondary ">Cancel</button>
	</div>
	<%
	} else {
		String err = (String) request.getAttribute("error");
	%>
	<h5 class="d-flex justify-content-center align-items-center pb-3">Error</h5>
	<div class="card p-5">
	<div class="alert alert-danger" role="alert">
	  <%=err %>
	</div>
	<a class="btn btn-primary "  onclick="history.back()" >Go back</a>
	</div>
	<%
	}
	%>
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('customersCtrl', function($scope, $http) {
			$http.get("https://restcountries.com/v3.1/name/${esito.correct}").then(
					function(response) {
						$scope.myData = response.data;
					});
		});
	</script>
		<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		
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
</body>
</html>
