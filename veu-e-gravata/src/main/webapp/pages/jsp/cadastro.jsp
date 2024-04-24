<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../../../styles/estilos.css">
</head>
<body>
    <header>
        <nav>
           <ul>
               <img src="/assets/logoHeader.png" alt="Logo da Veu e Gravata" id="your-image-id" class="logo-img">
               <li><a href="/pages/jsp/index.jsp">Veu e Gravata</a></li>
               <li><a href="pages/jsp/casais.jsp">Casais</a></li>
               <li><a href="/sobre">Sobre Nos</a></li>
               <li><a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a></li>
               <li><a href="/pages/jsp/login" class="bordered-link">Login</a></li>
               <li><a href="/pages/jsp/cadastro.jsp" class="bordered-link">Cadastre-se</a></li>
           </ul>
        </nav>
    </header>

    <main>
        <h2>Tela de Cadastre-se</h2>

        <form action="${pageContext.request.contextPath}/cadastro" method="POST">

            <div>
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" required placeholder="Informe seu nome">
            </div>

            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required placeholder="Informe seu email">
            </div>

            <div>
                <label for="cpf">CPF:</label>
                <input type="text" id="cpf" name="cpf" required placeholder="Informe seu CPF no formato XXX.XXX.XXX-XX">
                <span id="cpf-info" style="color: gray; font-size: 0.8em;"></span>
            </div>

            <div>
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" required placeholder="Informe sua senha">
            </div>

            <div>
                <input type="submit" value="Cadastrar">
            </div>
        </form>
    </main>



    </script>

    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com/veuegravata"><i class="fab fa-instagram"></i> @veuegravata</a>
            <a href="https://www.tiktok.com/@veuegravata"><i class="fab fa-tiktok"></i> @veuegravata</a>
        </div>
    </footer>
</body>
</html>
