<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Admin - Control Panel</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="icon" href="/CorsoSpringWeb/resources/images/favicon.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;family=Rubik:wght@400;500;700&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="/CorsoSpringWeb/resources/css/style.css" />
</head>
<body>
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
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/profile'"
				type="button" class="btn btn-primary">Profile</button>
		</div>
	</header>

	<main>
		<div class="container ">
			<div class="accordion my-5" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-controls="collapseOne">
							<i class="col fas fa-users fa-3x m-2"></i>
							<h2 class="col row justify-content-end m-4">Users</h2>
						</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p>Manage all saved trains associated to each user.</p>
							<table class="container">
								<!-- here should go some titles... -->
								<tr>
									<th>Username</th>
									<th>Name</th>
									<th>Surname</th>
									<th>Trains #</th>
								</tr>
								<c:forEach items="${usersFull}" var="usr">
									<tr>
										<td><c:out value="${usr.username}" /></td>
										<td><c:out value="${usr.firstName}" /></td>
										<td><c:out value="${usr.lastName}" /></td>
										<td><c:out value="${usr.trainNumber}" /></td>
										<td>
											<form action="./admin" method="post">
												<input type="hidden" value="${usr.username}" id="deleteUser" name="deleteUser"></input>
												<button type="submit" class="btn btn-sm btn-danger">X</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							<i class="col fas fa-train fa-3x m-2"></i>
							<h2 class="col row justify-content-end m-4">Trains</h2>
						</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p>Manage all saved trains associated to each user.</p>
							<table class="container">
								<!-- here should go some titles... -->
								<tr>
									<th>Code</th>
									<th>Owner</th>
									<th>Country</th>
								</tr>
								<c:forEach items="${trainsFull}" var="train">
									<tr>

										<td><c:out value="${train.sigla}" /></td>
										<td><c:out value="${train.owner.username}" /></td>
										<td><c:out value="${train.buildCountry.country}" /></td>
										<td>
											<form action="./admin" method="post">
												<input type="hidden" value="${train.id}" id="deleteTrain" name="deleteTrain"></input>
												<button type="submit" class="btn btn-sm btn-danger">X</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="true"  aria-controls="collapseThree">
							<i class="col fas fa-language fa-3x m-2"></i>
							<h2 class="col row justify-content-end m-4">Nations</h2>
						</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse show"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<p>Manage registered Nations and associated corrections.
								Algorithms statistics is also avaiable.</p>
							<table class="container">
								<!-- here should go some titles... -->
								<tr>
									<th>Country</th>
									<th># Corrections</th>
								</tr>
								<c:forEach items="${countriesFull}" var="country">
									<tr>
										<td><c:out value="${country}" /></td>
										<td><c:out value="WIP" /></td>
										<td>
											<form action="./admin" method="post">
												<input type="hidden" value="${country}" id="deleteCorrection" name="deleteCorrection"></input>
												<button type="submit" class="btn btn-sm btn-danger">X</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="accordion-item ">
					<h2 class="accordion-header" id="headingPro">
						<button class="accordion-button collapsed text-danger" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapsePro"
							aria-expanded="false" aria-controls="collapsePro">
							<i class="col fas fa-exclamation-triangle fa-2x m-1 text-warning"></i>
							<h5 class="col row justify-content-end m-3 ">Advanced options</h5>
						</button>
					</h2>
					<div id="collapsePro" class="accordion-collapse collapse bg-warning"
						aria-labelledby="headingPro" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<div class="d-grid gap-2">
		  						<button class="btn btn-outline-danger " type="button" data-bs-toggle="modal" data-bs-target="#loadModal">Load Demo DB</button>
								<button class="btn btn-danger " type="button" data-bs-toggle="modal" data-bs-target="#formatModal">Format Database Schema</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
<!-- Format Modal -->
<div class="modal fade" id="formatModal" tabindex="-1" aria-labelledby="formatModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formatModalLabel">Dangerous operation</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
		<div class="form-floating mb-3">
		  <input class="form-control" type="text" value="${username}" aria-label="readonly input example" readonly>
		  <label for="floatingInput">Username</label>
		</div>
		<p class="m-2">Please insert your password to confirm the operation: </p>
		<div class="form-floating">
		  <input type="password" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		  <label for="floatingPassword">Password</label>
		</div>
      </div>
      <div class="alert alert-danger m-3" role="alert">
	  		This operation can't be undone !
	  </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger disabled">Format</button>
      </div>
    </div>
  </div>
</div>

<!-- Load Modal -->
<div class="modal fade" id="loadModal" tabindex="-1" aria-labelledby="floadModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="floadModalLabel">Dangerous operation</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">
        <div class="alert alert-warning m-3" role="alert">
	  		This operation can't be undone !
	  </div>
        <button class="btn btn-outline-danger disabled" type="button" data-bs-toggle="modal" data-bs-target="#loadModal">Try loading Demo Schema</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
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
					<li class="nav-item"><a href="./logout"
					class="nav-link px-2 fw-bold text-light">Log-out</a></li>

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
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous" type="text/javascript"></script>

</body>
</html>