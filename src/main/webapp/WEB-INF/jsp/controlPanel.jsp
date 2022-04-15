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
	<header class="header">

		<div class="container d-flex justify-content-center">
			<header class="justify-content-center py-3 mb-4 border-bottom">
				<a href="./home" class="logo justify-content-center"> <img
					src="/CorsoSpringWeb/resources/images/logo.png" alt=""
					class="logo-img" />
				</a>
				<ul class="nav nav-pills justify-content-center ">
					<li class="nav-item"><a href="./home" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="./profile" class="nav-link">Profile</a></li>
				</ul>
			</header>
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
										<td><c:out value="${usr.usrname}" /></td>
										<td><c:out value="${usr.name}" /></td>
										<td><c:out value="${usr.surname}" /></td>
										<td><c:out value="${usr.trainsnum}" /></td>
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
										<td><c:out value="${train.ownerUsername}" /></td>
										<td><c:out value="${train.buildCountry}" /></td>
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
					<div id="collapsePro" class="accordion-collapse collapse"
						aria-labelledby="headingPro" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<div class="d-grid gap-2">
		  						<button class="btn btn-outline-warning " type="button">Load Demo DB</button>
								<button class="btn btn-outline-danger " type="button">Format Database Schema</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="./home" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="./home#how" class="nav-link px-2 text-muted">Features</a></li>
      <li class="nav-item"><a href="./profile" class="nav-link px-2 text-muted">Profile</a></li>
      <li class="nav-item"><a href="./home#who" class="nav-link px-2 text-muted">About the developers</a></li>
    </ul>
    <a href="./home" class="logo justify-content-center"> <img
					src="/CorsoSpringWeb/resources/images/logo.png" alt=""
					class="logo-img small" />
				</a>
    <p class="text-center text-muted">© 2022 DecHit-Trains, Inc</p>
  </footer>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous" type="text/javascript"></script>

</body>
</html>