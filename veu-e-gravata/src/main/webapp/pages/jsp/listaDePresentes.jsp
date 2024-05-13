<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.Usuario" %>
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
    <link rel="stylesheet" href="../../../styles/listaDePresentes.css">
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="main-container">
        <section class="casal-container">
            <img src="${pageContext.request.contextPath}/assets/casais/${produtosCasal.casal.fotoCasal}" alt="Foto do casal">
            <div>
                <h1>Código do casal: ${produtosCasal.casal.codigo}</h1>
            </div>
        </section>
        <section class="presentes-container">
            <c:forEach var="produtoComplementar" items="${produtosCasal.produtos}">
                <c:if test="${not produtoComplementar.isReservado()}">
                    <a href="${pageContext.request.contextPath}/presente?idCasal=${produtosCasal.casal.id}&idProduto=${produtoComplementar.produto.id}" class="card-produto">
                        <img src="${pageContext.request.contextPath}/assets/produtos/${produtoComplementar.produto.hxFotoProduto}" alt="Foto do produto">
                        <div class="card-body">
                            <h5>${produtoComplementar.produto.nome}</h5>
                            <h5>R$ ${produtoComplementar.produto.preco}</h5>
                        </div>
                    </a>
                </c:if>
                <c:if test="${produtoComplementar.isReservado()}">
                    <div class="card-produto grayscale">
                        <h5>RESERVADO</h5>
                        <img src="${pageContext.request.contextPath}/assets/produtos/${produtoComplementar.produto.hxFotoProduto}" alt="Foto do produto">
                        <div class="card-body">
                            <h5>${produtoComplementar.produto.descricao}</h5>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </section>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>