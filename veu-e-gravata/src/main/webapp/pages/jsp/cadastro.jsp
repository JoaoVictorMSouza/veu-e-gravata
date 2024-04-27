<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="../../../styles/index.css">
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="content">
        <div class="image-container">
            <img src="../../webapp/assets/home2.png" alt="home2.png" class="background-image">
        </div>

        <div>
            <main>
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
                        <input type="text" id="cpf" name="cpf" required
                            placeholder="Informe seu CPF no formato XXX.XXX.XXX-XX">
                        <span id="cpf-info" style="color: gray; font-size: 0.8em;"></span>
                    </div>

                    <div>
                        <label for="senha">Senha:</label>
                        <input type="password" id="senha" name="senha" required placeholder="Informe sua senha">
                    </div>

                    <div>
                        <input type="submit" value="CADASTRAR" class="white-button">
                    </div>
                </form>
            </main>
        </div>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>