<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="/CorsoSpringWeb/resources/images/favicon.png" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;family=Rubik:wght@400;500;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/CorsoSpringWeb/resources/css/style.css" />
<title>TrainLine - costruisci il tuo treno</title>
</head>
<body>

	<header
		class="navbar  d-flex flex-wrap align-items-center justify-content-center justify-content-md-even py-3 mb-4 border-bottom fixed-top">
		<a href="/"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<img height="40" src="/CorsoSpringWeb/resources/images/logo.png"
			alt="" class="logo" />
		</a>

		<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
			<li><a href="#how" class="nav-link">Come funziona</a></li>
			<li><a href="#who" class="nav-link">Chi siamo</a></li>
			<li><a href="#contact" class="nav-link">Contattaci</a></li>
		</ul>

		<div class="col-md-3 text-end">
			<button onclick="window.location.href='/CorsoSpringWeb/login'"
				type="button" class="btn btn-outline-primary me-2">Login</button>
			<button onclick="window.location.href='/CorsoSpringWeb/register'"
				type="button" class="btn btn-primary">Sign-up</button>
		</div>
	</header>


	<main>
		<div class="container-md">

			<div
				class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg">
				<div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
					<h1 class="display-4 fw-bold lh-1">Costruisci il tuo treno in
						pochi semplici passi</h1>
					<p class="lead">Effettua il log in per poter costruire il treno
						dei tuoi sogni, in maniera facile e veloce. Provalo oggi.</p>
					<div
						class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">
						<button
							onclick="window.location.href='/CorsoSpringWeb/insertTrain'"
							type="button" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold">Build
							train</button>
						<button onclick="window.location.href='/CorsoSpringWeb/register'"
							type="button" class="btn btn-outline-secondary btn-lg px-4">Register</button>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1 p-0 overflow-hidden shadow-lg">
					<img class="rounded-lg-3"
						src="/CorsoSpringWeb/resources/images/treno1.jpg" alt=""
						width="720">
				</div>
			</div>


			<section class="who" id="how">
				<div class="rounded-3">

					<div class="container-fluid py-5" id="how">
						<h1 class="display-4 fw-bold">Come funziona la costruzione
							del treno</h1>
						<div class="grid-container">
							<ol class="list-group">

								<!-- STEP 1-->
								<li class="list-group-item  justify-content-between ">

									<div class="container">
										<h2>Inserisci la sigla</h2>
										<div class="d-flex">
											<div class="col">Scrivi la sigla del tuo treno tra
												vagoni Locomotiva (L), Passeggeri (P), Cargo (C) e
												Ristorante (R)</div>

										</div>
										<img src="/CorsoSpringWeb/resources/images/01.png"
											class="img-fluid container p-4" alt="" />
									</div>

								</li>

								<!-- STEP 2-->
								<li
									class="list-group-item d-flex justify-content-between align-items-start">


									<div class="container">
										<h2>Inserisci il paese</h2>
										<div class="d-flex">
											<div class="col">Inserisci il paese del treno,
												riceverai informazioni riguardanti il paese scelto</div>

										</div>
										<img src="/CorsoSpringWeb/resources/images/02.png"
											class="img-fluid container p-4" alt="" />
									</div>
								</li>

								<!-- STEP 3-->
								<li
									class="list-group-item d-flex justify-content-between align-items-start">


									<div class="container">
										<h2>Crea il tuo treno</h2>
										<div class="d-flex">
											<div class="col">Il tuo treno verrà  creato con i
												vagoni scelti ed il suo paese</div>

										</div>
										<img src="/CorsoSpringWeb/resources/images/03.png"
											class="img-fluid container p-4" alt="" />
									</div>
								</li>

							</ol>
						</div>
					</div>
				</div>

			</section>





			<section class="who" id="who">




				<div class="container px-4 py-5" id="icon-grid">
					<h2 class="pb-2 border-bottom">The Developers Team</h2>

					<div
						class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">

						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<use xlink:href="#bootstrap"></use></svg>
							<div>
								<h4 class="fw-bold mb-0">Oscar De Filpo</h4>
								<p>Paragraph of text beneath the heading to explain the
									heading.</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<use xlink:href="#cpu-fill"></use></svg>
							<div>
								<h4 class="fw-bold mb-0">Matteo Carrozzo</h4>
								<p>Paragraph of text beneath the heading to explain the
									heading.</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<use xlink:href="#calendar3"></use></svg>
							<div>
								<h4 class="fw-bold mb-0">Federico Rainò</h4>
								<p>Paragraph of text beneath the heading to explain the
									heading.</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<use xlink:href="#home"></use></svg>
							<div>
								<h4 class="fw-bold mb-0">Domenico Sarcina</h4>
								<p>Paragraph of text beneath the heading to explain the
									heading.</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<use xlink:href="#speedometer2"></use></svg>
							<div>
								<h4 class="fw-bold mb-0">Giuseppe Izzo</h4>
								<p>Paragraph of text beneath the heading to explain the
									heading.</p>
							</div>
						</div>
					</div>




				</div>
			</section>
			
			<section class="who" id="contact">
			<div class="jumbotron text-center p-3 p-md-5 rounded">
				<div class="col px-0">
					<h1 class="display-3 font-italic mb-4">Contacts</h1>
					<div class="mb-3 container">
						<p>trains@dechit.it</p>
						<a href="mailto:trains@dechit.it" class="btn btn-outline-primary">Send eMail</a>

						<div class="container p-5">
							<div class="row">
								<address>
									<strong>DecHit Trains, Inc.</strong> <br>Via delle Vie, 48<br>
									Italy, Rome <br> <abbr title="Phone">Tel:</abbr> (123)
									456-7890
								</address>
							</div>
						</div>
						
					</div>

				</div>
			</div>

</section>



		</div>

		<section class="">
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


				<!-- Grid container -->
				<div class="container p-4 pb-0">
					<!-- Section: CTA -->
					<section class="">
						<p class="d-flex justify-content-center align-items-center">
							<span class="me-3">Register for free</span>
							<button onclick="window.location.href='/CorsoSpringWeb/register'"
				type="button" class="btn btn-outline-light">Sign-up</button>
						</p>
					</section>
					<!-- Section: CTA -->
				</div>
				<!-- Grid container -->

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
			<!-- Footer -->
		</section>
	</main>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
		type="text/javascript"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous" type="text/javascript"></script>

</body>
</html>
