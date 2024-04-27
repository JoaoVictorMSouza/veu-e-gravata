<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="../../../styles/casais.css"> <!-- Link para o arquivo casais.css -->
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

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

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>