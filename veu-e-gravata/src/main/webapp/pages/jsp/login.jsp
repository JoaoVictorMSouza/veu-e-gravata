<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
               <li><a href="/pages/jsp/login.jsp" class="bordered-link">Login</a></li> <!-- Corrigido para /pages/jsp/login.jsp -->
               <li><a href="/pages/jsp/cadastro.jsp" class="bordered-link">Cadastre-se</a></li>
           </ul>
        </nav>
    </header>

    <main>
        <h2>Tela de Login</h2>

        <form action="/login" method="post"> <!-- Corrigido para /login -->

            <span>${requestScope.message}</span>

            <br>

            <label for="DS_EMAIL">E-mail</label>
            <input type="text" id="DS_EMAIL" name="DS_EMAIL">

            <br>

            <label for="DS_SENHA">Senha</label>
            <input type="password" id="DS_SENHA" name="DS_SENHA"> <!-- Corrigido para type="password" -->

            <button type="submit">Login</button>

        </form>
    </main>

    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com/veuegravata"><i class="fab fa-instagram"></i> @veuegravata</a>
            <a href="https://www.tiktok.com/@veuegravata"><i class="fab fa-tiktok"></i> @veuegravata</a>
        </div>
    </footer>
</body>
</html>