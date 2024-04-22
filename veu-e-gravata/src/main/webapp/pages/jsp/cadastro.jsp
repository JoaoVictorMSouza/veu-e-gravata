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
                           <img src="assets/logoHeader.png" alt="Logo da Veu e Gravata" id="your-image-id" class="logo-img">
                           <li><a href="/pages/jsp/index.jsp">Veu e Gravata</a></li>
                           <li><a href="pages/jsp/casais.jsp">Casais</a></li>
                           <li><a href="/sobre">Sobre Nos</a></li>
                           <li><a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a></li>
                           <li><a href="#login" class="bordered-link">Login</a></li>
                           <li><a href="/pages/jsp/cadastro.jsp"class="bordered-link">Cadastre-se</a></li>

                       </ul>
            </nav>
        </header>

       <main>
           <h2>Tela de Cadastre-se</h2>

           <form action="/veu-e-gravata/src/main/webapp/pages/jsp/confirmacaodecadastro.jsp" method="POST">

               <label for="nome">Nome:</label>
               <input type="text" id="nome" name="nome" required><br>

               <label for="email">Email:</label>
               <input type="email" id="email" name="email" required><br>

               <label for="cpf">CPF:</label>
               <input type="text" id="cpf" name="cpf" required><br>

               <label for="senha">Senha:</label>
               <input type="password" id="senha" name="senha" required><br>

               <input type="submit" value="Cadastrar">
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