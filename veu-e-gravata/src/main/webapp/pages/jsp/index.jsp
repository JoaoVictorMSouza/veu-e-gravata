<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Pagina Inicial</title>
    <link rel="stylesheet" href="../../../styles/index.css">
</head>

<body class="index">
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="content">
        <div class="image-container">
            <img src="../../webapp/assets/home2.png" alt="home2.png" class="background-image">
        </div>

        <div class="container">
            <p>A lista de presentes com melhor custo-beneficio.</p>
            <p>Mais seguranca para voce e seus convidados!</p>
            <p>Tudo que voce precisa em um so lugar!</p>
            <p>COMO FUNCIONA?</p>
            <p>1. Crie sua lista de presentes</p>
            <!-- Botao para a página listaDePresente.jsp -->
            <a href="/pages/jsp/casal.jsp" class="golden-button">BUSCAR LISTA DE PRESENTES</a>
        </div>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>