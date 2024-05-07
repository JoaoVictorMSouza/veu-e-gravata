<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Boolean logadoObj = (Boolean)session.getAttribute("isLogado");
    boolean logado = (logadoObj != null) ? logadoObj : false;
    if (!logado) {
        response.sendRedirect("/pages/jsp/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="../../../styles/casal.css"> <!-- Link para o arquivo casais.css -->
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="content">
        <div class="text-container">
            <h3>Digite o código do casal</h3>
            <form action="/casal" method="get">
                <input type="text" id="CD_CASAL" name="CD_CASAL" />
                <span>${requestScope.message}</span>
                <button class="golden-button" type="submit">Buscar</button>
            </form>
        </div>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>