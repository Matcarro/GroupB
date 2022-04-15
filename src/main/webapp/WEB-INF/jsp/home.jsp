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
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Rubik:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/CorsoSpringWeb/resources/css/homestyle.css" />
    <title>TrainLine - costruisci il tuo treno</title>
  </head>
  <body>
    <header class="header">
      <a href="#">
        <img
          src="/CorsoSpringWeb/resources/images/logo.png"
          alt=""
          class="logo"
        />
      </a>
      <nav class="main-nav">
        <ul class="main-nav-list">
          <li><a href="#how" class="nav-link">Come funziona</a></li>
          <li><a href="#who" class="nav-link">Chi siamo</a></li>
          <li><a href="#contact" class="nav-link">Contattaci</a></li>
          <li>
            <a class="button-heading reg-btn" href="/CorsoSpringWeb/register"
              >Registrati
              </a>
          </li>
          <!-- TODO if the user is logged show Profile -->
          <li><a class="button-heading" href="/CorsoSpringWeb/login">Log In</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <section class="section-hero">
        <div class="hero">
          <div class="left-div">
            <h1 class="hero-heading">
              Costruisci il tuo treno in pochi semplici passi
            </h1>
            <p class="par-heading">
              Effettua il log in per poter costruire il treno dei tuoi sogni, in
              maniera facile e veloce. Provalo oggi.
            </p>
            <a class="button-heading" href="/CorsoSpringWeb/login"
              >Costruisci treno</a
            >
          </div>
          <div class="right-div">
            <img
              src="/CorsoSpringWeb/resources/images/treno1.jpg"
              alt=""
              class="img-hero"
            />
          </div>
        </div>
      </section>
      <section class="how" id="how">
        <div class="head">
          <h1 class="title">Come funziona la costruzione del treno</h1>
        </div>
        <div class="grid-container">
          <!-- STEP 1-->
          <div class="text-step">
            <div class="step-number">01</div>
            <div class="step-title">Inserisci la sigla</div>
            <div class="step-descr">
              Scrivi la sigla del tuo treno tra vagoni Locomotiva (L),
              Passeggeri (P), Cargo (C) e Ristorante (R)
            </div>
          </div>
          <div class="img-step-box">
            <img
              src="/CorsoSpringWeb/resources/images/01.png"
              alt=""
              class="img-step"
            />
          </div>
          <!-- STEP 2-->
          <div class="text-step">
            <div class="step-number">02</div>
            <div class="step-title">Inserisci il paese</div>
            <div class="step-descr">
              Inserisci il paese del treno, riceverai informazioni riguardanti
              il paese scelto
            </div>
          </div>
          <div class="img-step-box">
            <img
              src="/CorsoSpringWeb/resources/images/02.png"
              alt=""
              class="img-step"
            />
          </div>
          <!-- STEP 3-->
          <div class="text-step">
            <div class="step-number">03</div>
            <div class="step-title">Crea il tuo treno</div>
            <div class="step-descr">
              Il tuo treno verrÃ  creato con i vagoni scelti ed il suo paese
            </div>
          </div>
          <div class="img-step-box">
            <img
              src="/CorsoSpringWeb/resources/images/03.png"
              alt=""
              class="img-step"
            />
          </div>
        </div>
      </section>
      <section class="who" id="who">
        <div class="head">
          <h1 class="title">Chi siamo</h1>
        </div>
        <div class="grid-container-5">
          <div class="person">
            <ion-icon name="person-outline" class="icon"></ion-icon>
            <p class="title-person">Oscar De Filpo</p>
            <p class="title-text">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore,
              soluta minus illo totam ipsam dolor quam
            </p>
          </div>
          <div class="person">
            <ion-icon name="person-outline" class="icon"></ion-icon>
            <p class="title-person">Matteo Carrozzo</p>
            <p class="title-text">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore,
              soluta minus illo totam ipsam dolor quam
            </p>
          </div>
          <div class="person">
            <ion-icon name="person-outline" class="icon"></ion-icon>
            <p class="title-person">Federico RainÃ²</p>
            <p class="title-text">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore,
              soluta minus illo totam ipsam dolor quam
            </p>
          </div>
          <div class="person">
            <ion-icon name="person-outline" class="icon"></ion-icon>
            <p class="title-person">Domenico Sarcina</p>
            <p class="title-text">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore,
              soluta minus illo totam ipsam dolor quam
            </p>
          </div>
          <div class="person">
            <ion-icon name="person-outline" class="icon"></ion-icon>
            <p class="title-person">Giuseppe Izzo</p>
            <p class="title-text">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore,
              soluta minus illo totam ipsam dolor quam
            </p>
          </div>
        </div>
      </section>
      <section class="contactus"></section>
      <footer id="contact">
        <div class="grid-container-3">
          <div class="col-logo">
            <a href="#" class="footer-logo">
              <img
                src="/CorsoSpringWeb/resources/images/logo.png"
                alt=""
                class="logo"
              />
            </a>
            <ul class="socials">
              <li>
                <a href="#" class="footer-link">
                  <ion-icon name="logo-instagram"></ion-icon>
                </a>
              </li>
              <li>
                <a href="#" class="footer-link">
                  <ion-icon name="logo-tiktok"></ion-icon>
                </a>
              </li>
              <li>
                <a href="#" class="footer-link">
                  <ion-icon name="logo-facebook"></ion-icon>
                </a>
              </li>
              <li>
                <a href="#" class="footer-link">
                  <ion-icon name="logo-twitter"></ion-icon>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-addr">
            <p class="addr-title">Dove ci troviamo</p>
            <address>
              <p class="address">Via delle Vie, 27, Milano, MI, Italia</p>
              <a href="tel:1234567890" class="footer-addr">+39 01234567890</a>
              <a href="mailto:trainline@traincop.com" class="footer-addr"
                >trainline@traincop.com</a
              >
            </address>
          </div>
          <div class="col-login">
            <a class="button-heading footer-btn" href="/CorsoSpringWeb/login"
              >Accedi adesso</a
            >
          </div>
        </div>
      </footer>
    </main>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
  </body>
</html>
