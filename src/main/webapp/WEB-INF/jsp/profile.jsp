<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
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
<link href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
									alt="Admin" class="rounded-circle" width="150">
								<div class="mt-3">
									<h4>${username}</h4>
									<p class="text-secondary mb-1">${username}</p>
									<p class="text-muted font-size-sm">Bay Area, San Francisco,
										CA</p>
									<button class="btn btn-outline-primary btn-sm">Edit profile</button>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
								<div class="row p-2">
									<div class="col-sm-5 h2">
										Train code
									</div>
									<div class="col-sm-5 h2">Country</div>
								</div>

							<c:forEach items="${usersTrains}" var="train">
								<div class="row p-2">
									<div class="col-sm-5">
										<h6 class="mb-0">${train.getSigla()}</h6>
									</div>
									<div class="col-sm-5">${train.buildCountry.country}</div>
									<button class="col-sm-2 badge badge-dark btn-dark">Delete</button>
								</div>
							</c:forEach>
							
						</div>
					</div>




				</div>
			</div>

		</div>
	</div>



	<header
		class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-even py-3 mb-4 border-bottom fixed-top">
		<a href="./"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<img height="40" src="/CorsoSpringWeb/resources/images/logo.png"
			alt="" class="logo" />
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="./home#how" class="nav-link pill">How it works</a></li>
			<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/insertTrain'"
				type="button" class="btn btn-primary">New Train</button>
		</div>
	</header>




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
				<li class="nav-item"><a href="./home"
					class="nav-link px-2 text-light">Home</a></li>
				<li class="nav-item"><a href="./home#how"
					class="nav-link px-2 text-light">Features</a></li>
				<li class="nav-item"><a href="./home#contact"
					class="nav-link px-2 text-light">Contacts</a></li>
				<li class="nav-item"><a href="./home#who"
					class="nav-link px-2 text-light">About the developers</a></li>

				<li class="nav-item"><a href=".#"
					class="nav-link px-2 fw-bold text-light">Log-out</a></li>
			</ul>
			<a href="./home" class="logo justify-content-center"> <img
				src="/CorsoSpringWeb/resources/images/logo.png" alt=""
				class="logo-img small" />
			</a>
			<div class="text-center text-muted pb-5">© 2022 DecHit-Trains,
				Inc</div>
			<!-- Copyright -->
		</footer>
		<!-- Footer -->
	</section>
</body>
</html>