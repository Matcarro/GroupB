<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<header	class="justify-content-center py-3 mb-4 border-bottom">
				<a href="/"	class="logo justify-content-center">
        			<img src="/CorsoSpringWeb/resources/images/logo.png" alt="" class="logo-img" />
				</a>
				<ul class="nav nav-pills justify-content-center ">
					<li class="nav-item"><a href="#" class="nav-link">Users</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Trains</a></li>
					<li class="nav-item"><a href="#" class="nav-link">Nations</a></li>
					<li class="nav-item"><a href="#" class="nav-link">About</a></li>
				</ul>
			</header>
		</div>
	</header>

	<main>
		<section class="section-hero">
			<div class="container px-4 py-5 " id="featured-3">
				<div class="row py-5 row-cols-1 gx-5 row-cols-lg-4 justify-content-center">

					<div class="feature col m-2">
						<div class="icon-square ">
							<i class="fas fa-users fa-3x">
								<h2>Users</h2>
							</i>
						</div>
						<p>Manage users and theirs roles.</p>
						<a href="#" class="icon-link"> Manage users <svg class="bi"
								width="1em" height="1em"><i class="bi bi-chevron-right"></i>
						</a>
					</div>

					<div class="feature col m-2">
						<div class="icon-square">
							<i class="fas fa-train fa-3x"><h2>Trains</h2></i>

						</div>
						<p>Manage all saved trains associated to each user.</p>
						<a href="#" class="icon-link"> Manage trains <svg class="bi"
								width="1em" height="1em">
								<i class="bi bi-chevron-right"></i></svg>
						</a>
					</div>

					<div class="feature col m-2">
						<div class="icon-square ">
							<i class="fas fa-language fa-3x">
								<h2>Nations</h2>
							</i>
						</div>
						<p>Manage registered Nations and associated corrections.
							Algorithms statistics is also avaiable.</p>
						<a href="#" class="icon-link"> Manage nations <svg class="bi"
								width="1em" height="1em">
								<i class="bi bi-chevron-right"></i></svg>
						</a>
					</div>
				</div>
			</div>
		</section>
		<section class="how" id="usr"></section>

		<section class="who" id="trains"></section>

		<section class="nations"></section>

		<footer id="footer-contact">
			<div class="grid-container-3">
				<div class="col-logo">
					<a href="#" class="footer-logo"> <img
						src="/CorsoSpringWeb/resources/images/logo.png" alt=""
						class="logo" />
					</a>
					<ul class="socials">
						<li><a href="#" class="footer-link"> <ion-icon
									name="logo-instagram"></ion-icon>
						</a></li>
						<li><a href="#" class="footer-link"> <ion-icon
									name="logo-tiktok"></ion-icon>
						</a></li>
						<li><a href="#" class="footer-link"> <ion-icon
									name="logo-facebook"></ion-icon>
						</a></li>
						<li><a href="#" class="footer-link"> <ion-icon
									name="logo-twitter"></ion-icon>
						</a></li>
					</ul>
				</div>
				<div class="col-addr">
					<p class="addr-title">Dove ci troviamo</p>
					<address>
						<p class="address">Via delle Vie, 27, Milano, MI, Italia</p>
						<a href="tel:1234567890" class="footer-addr">+39 01234567890</a> <a
							href="mailto:trainline@traincop.com" class="footer-addr">trainline@traincop.com</a>
					</address>
				</div>
				<div class="col-login">
					<a class="button-heading footer-btn" href="/CorsoSpringWeb/login">Accedi
						adesso</a>
				</div>
			</div>
		</footer>
	</main>

</body>
</html>