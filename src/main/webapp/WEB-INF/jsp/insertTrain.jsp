<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Train</title>
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
<link  href="/CorsoSpringWeb/resources/css/register.css" rel="stylesheet">

</head>
<body>
    <div class="container d-flex justify-content-center">
			<header	class="justify-content-center py-3 mb-4 border-bottom">
				<a href="./"	class="logo justify-content-center">
        			<img src="/CorsoSpringWeb/resources/images/logo.png" alt="" class="logo-img" />
				</a>
				<ul class="nav nav-pills justify-content-center ">
					<li class="nav-item"><a href="./home" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="./profile" class="nav-link">Profile</a></li>
					
					<li class="nav-item"><a href="./admin" class="nav-link">Admin</a></li>
				</ul>
			</header>
		</div>

	<div class="d-flex justify-content-center align-items-center col-12">
		<form id="form" action="/CorsoSpringWeb/train" method="post">

            <div class="mb-3">
                <label for="train" class="form-label">Train</label>
                <br>
                <input
                  type="text"
                  class="form-control form-input"
                  aria-describedby="emailHelp"
                  id="train"
                  name="train"
                />
            </div>

			<div class="mb-3">
                <label for="country" class="form-label">Country</label>
                <br>
                <input
                  type="text"
                  class="form-control form-input"
                  aria-describedby="emailHelp"
                  id="country"
                  name="country"
                />
            </div>

			<div class="d-flex justify-content-center align-items-center pt-3">
			<input id="submit" type="submit" value="Train preview" class="btn btn-primary cl-submit">
            </div>
		</form>
	</div>
	
</body>
</html>
