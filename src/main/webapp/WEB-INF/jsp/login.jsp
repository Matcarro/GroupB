<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
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
              <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="/CorsoSpringWeb/resources/css/style.css" rel="stylesheet" />
</head>

<body style="margin-top:50px">
  <div class="d-flex justify-content-center align-items-center mb-5">
  <a href="./"
			class="d-flex align-items-center">
    <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" >
    </a>
  </div>

  <div class="d-flex justify-content-center align-items-center col-12">
    <form id="form" class="card p-4 col-sm-5" action="/CorsoSpringWeb/login" method="post">
        <h3 class="d-flex justify-content-center align-items-center mb-3" aria-describedby="emailHelp">Log in</h3>

        <div class="mb-3">
          <label for="username" class="form-label">Username</label>
          <br>
          <input
            type="text"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="username"
            name="username"
            value="${username}"
          />
        </div>

        <div class="mb-4">
          <label for="password" class="form-label">Password</label>
          <br>
          <input
            type="password"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="password"
            name="password"
          />
        </div>
		<div id="error" style="color: red">
          ${error}
        </div>
        <div id="emailHelp" class="form-text">
          Not registered?
        </div>

        <div class="buttons d-flex justify-content-between pt-2">
          <a href="./register" type="reset" class="btn btn-primary cl-back">Sign up</a>
          <button type="submit" class="btn btn-primary cl-submit">
            Sign in
          </button>
        </div>
		
    </form>
  </div>
  <footer class="text-center text-white mt-5"
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
</body>

</html>
