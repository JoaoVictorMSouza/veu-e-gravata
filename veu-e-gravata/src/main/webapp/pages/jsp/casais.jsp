<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../../../styles/estilos.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                                <img src="/assets/logoHeader.png" alt="Logo da Veu e Gravata" id="your-image-id" class="logo-img">
                                <li><a href="/pages/jsp/index.jsp">Veu e Gravata</a></li>
                                <li><a href="/pages/jsp/casais.jsp">Casais</a></li>
                                <li><a href="/sobre">Sobre Nos</a></li>
                                <li><a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a></li>
                                <li><a href="#login" class="bordered-link">Login</a></li>
                                <li><a href="/pages/jsp/cadastro.jsp"class="bordered-link">Cadastre-se</a></li>

            </ul>
        </nav>
    </header>

   <main class="content">
      <div class="image-container">
          <img src="src/main/webapp/assets/exemplo.jpg"" alt="Imagem de fundo" class="background-image">
          <div class="overlay"></div> <!-- Adicionando uma camada de sobreposição para melhorar a legibilidade do texto -->
      </div>
      <div class="text-container">

          <form action="/usuario" method="post">
              <div class="form-group">
                  <input type="text" id="nome" name="nome">
              </div>
              <button type="submit">Digite o codigo do casal</button>
          </form>
      </div>
   </main>
   </main>
    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com/veuegravata"><i class="fab fa-instagram"></i> @veuegravata</a>
            <a href="https://www.tiktok.com/@veuegravata"><i class="fab fa-tiktok"></i> @veuegravata</a>
        </div>
    </footer>
</body>
</html>