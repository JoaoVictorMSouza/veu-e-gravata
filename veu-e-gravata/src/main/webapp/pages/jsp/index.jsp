<%@ page contentType="text/html; charset=UTF-8" %>

  <!DOCTYPE html>
  <html lang="pt-br">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Pagina Inicial</title>
    <link rel="stylesheet" href="../../../styles/index.css">
    <link href="/webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Importa a fonte Cardo -->
    <link href="https://fonts.googleapis.com/css2?family=Cardo:ital@0;1&display=swap" rel="stylesheet">
  </head>

  <body class="index">
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

      <main class="main-container">
        <div class="search-couple-container">
          <p>O melhor para o seu casamento!</p>
          <a href="/pages/jsp/casal.jsp" class="golden-button">BUSCAR LISTA DE PRESENTES</a>
        </div>

        <section class="banners-container">
          <div id="carouselAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="5000">
                <img src="../../assets/banner1.jpeg" class="banner-image" alt="Banner 1">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="../../assets/banner2.jpeg" class="banner-image" alt="Banner 2">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="../../assets/banner3.jpeg" class="banner-image" alt="Banner 3">
              </div>
              <div class="carousel-item" data-bs-interval="5000">
                <img src="../../assets/banner4.jpeg" class="banner-image" alt="Banner 4">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselAutoplaying"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselAutoplaying"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Próximo</span>
            </button>
          </div>
        </section>

        <section class="description-container">
          <div class="gift-container">
            <img src="../../assets/gift-image.png" alt="Imagem de presente">

            <div>
              <p>A lista de presentes com melhor custo-benifício.</p>
              <p>Mais segurança para você e seus convidados!</p>
              <p>Tudo que você precisa em um lugar só!</p>
            </div>
          </div>
          <div class="steps-container">
            <p>COMO FUNCIONA?</p>
            <div class="d-flex justify-content-evenly">
              <div class="steps">
                <img src="../../assets/step1.png" alt="Passo 1">
                <p>Monte sua lista de presentes entrando em contato direto com a gente</p>
              </div>
              <div class="steps justify-content-end">
                <img src="../../assets/step1-2.png" alt="Seta para o passo 2">
              </div>
              <div class="steps">
                <img src="../../assets/step2.png" alt="Passo 2">
                <p>Compartilhe o código com os seus convidados</p>
              </div>
              <div class="steps justify-content-start">
                <img src="../../assets/step2-2.png" alt="Seta para o passo 3">
              </div>
              <div class="steps">
                <img src="../../assets/step3.png" alt="Passo 3">
                <p>Tenha a melhor experiência no seu dia tão especial!</p>
              </div>
            </div>
          </div>

        </section>
      </main>

      <%@ include file="../../../pages/jsp/shared/footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
  </body>

  </html>