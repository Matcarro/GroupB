<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
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
<div>
    <div class="d-flex justify-content-center align-items-center">
        <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" >
    </div>
    <h3 class="d-flex justify-content-center align-items-center pt-3 mb-3">Profile: ${username}</h3>
    <div class="d-flex  justify-content-center align-items-center pt-2">
        <button onclick="window.location.href='/CorsoSpringWeb/insertTrain'" class="btn btn-primary cl-submit">Create new train</button>
    </div>
	<h3 class="d-flex justify-content-center align-items-center pt-3 mb-3">My trains</h3>
</div>

</body>
</html>