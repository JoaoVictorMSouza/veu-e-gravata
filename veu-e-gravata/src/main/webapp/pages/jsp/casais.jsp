<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../../../styles/estilos.css">
    <link rel="stylesheet" href="../../../styles/casais.css"> <!-- Link para o arquivo casais.css -->
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="/pages/jsp/index.jsp"><img src="/assets/logoHeader.png" alt="Logo da Veu e Gravata"
                            id="your-image-id" class="logo-img"></a>
                </li>
                <li><a href="/pages/jsp/index.jsp">Veu e Gravata</a></li>
                <li><a href="/pages/jsp/casais.jsp">Casais</a></li>
                <li><a href="/sobre">Sobre Nos</a></li>
                <li><a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a></li>
                <li><a href="/pages/jsp/login.jsp" class="bordered-link">Login</a></li>
                <li><a href="/pages/jsp/cadastro.jsp" class="bordered-link">Cadastre-se</a></li>
            </ul>
        </nav>
    </header>

    <main class="content">
        <div class="image-container">
            <img src="../../../assets/casais.png" alt="Imagem de fundo tela de casais" class="background-image">
        </div>
        <div class="text-container">
            <form action="/casais" method="get">
                <!-- Botão para a página buscar casais -->
                <a href="/pages/jsp/casais.jsp" class="golden-button">BUSCAR CASAL</a>
            </form>
        </div>
    </main>

    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com/veuegravata" target="_blank"><i class="fab fa-instagram"></i>
                @veuegravata</a>
            <a href="https://www.tiktok.com/@veuegravata" target="_blank"><i class="fab fa-tiktok"></i> @veuegravata</a>
        </div>
    </footer>
</body>

</html>