<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <link rel="stylesheet" href="/CorsoSpringWeb/resources/css/register.css" />
    <title>Registrazione</title>
  </head>
  <body>
    <div class="logo-img d-flex justify-content-center align-items-center">
      <img src="/CorsoSpringWeb/resources/images/logo.png" alt="" />
    </div>
    <div class="pt-1 col-12 d-flex align-items-center justify-content-center">
      <form>
        <div class="mb-3">
          <label for="name" class="form-label">Nome</label>
          <input
            type="text"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="name"
            name="name"
          />
        </div>
        <div class="mb-3">
          <label for="surname" class="form-label">Cognome</label>
          <input
            type="text"
            class="form-control form-input"
            aria-describedby="emailHelp"
            id="surname"
            name="surname"
          />
        </div>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label"
            >Data di nascita</label
          >
          <input
            type="date"
            class="form-control form-input"
            aria-describedby="emailHelp"
          />
        </div>
        <div class="mb-3">
          <label class="form-label">Email</label>
          <input
            type="email"
            class="form-control form-input"
            aria-describedby="emailHelp"
          />
          <div id="emailHelp" class="form-text">
            Non condivideremo la tua email con altri.
          </div>
        </div>
        <div class="mb-5">
          <label class="form-label">Password</label>
          <input type="password" class="form-control form-input" />
        </div>
        <div class="buttons d-flex justify-content-between">
          <button type="submit" class="btn btn-primary cl-back">Back</button>
          <button type="submit" class="btn btn-primary cl-submit">
            Submit
          </button>
        </div>
      </form>
    </div>
  </body>
</html>
