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
    <link href="/CorsoSpringWeb/resources/css/register.css" rel="stylesheet" />
</head>

<body>
  <div class="d-flex justify-content-center align-items-center">
    <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" >
  </div>

  <div class="d-flex justify-content-center align-items-center col-12">
    <form id="form" action="/CorsoSpringWeb/login" method="post">
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
          <button type="reset" class="btn btn-primary cl-back">Sign up</button>
          <button type="submit" class="btn btn-primary cl-submit">
            Sign in
          </button>
        </div>
		
    </form>
  </div>
</body>

</html>
