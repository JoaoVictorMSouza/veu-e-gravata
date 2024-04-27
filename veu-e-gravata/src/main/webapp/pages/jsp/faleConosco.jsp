<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../../../styles/estilos.css">
    <link rel="stylesheet" href="../../../styles/faleconosco.css"> <!-- Adicionando o CSS faleconosco.css -->
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

    <main class="container">
        <div>
            <h3>NOSSOS CONTATOS</h3>
            <p>Telefone: 4002-8922</p>
            <p>Email: veuegravata@gmail.com <a href="mailto:veuegravata@gmail.com"></a></p>
        </div>

        <div>
            <h3>QUER TORNAR O SEU CASAMENTO</h3>
            <h3>AINDA MAIS INESQUECIVEL COM</h3>
            <h3>NOSSA PLATAFORMA DE PRESENTES?</h3>
            <p>Entre em contato conosco e monte sua lista </p>
            <p>diretamente com a gente</p>
        </div>

        <div>
            <h3>Nos ajude sempre a melhorar!</h3>
            <h3>Deixe aqui a sua sugestao:</h3>
            <form id="contact-form" action="/faleConosco" method="post">
                <div class="form-group">
                    <textarea id="message" name="message" rows="6" cols="40" required></textarea>

                    <div>
                        <input type="submit" value="ENVIAR" class="golden-button">
                    </div>
                </div>

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