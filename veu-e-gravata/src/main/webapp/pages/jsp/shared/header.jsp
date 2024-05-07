<%@ page import="model.Usuario" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
    Usuario usuario = (Usuario)session.getAttribute("usuarioLogado");
    boolean isLogado = false;
    if (usuario != null && usuario.getId() > 0) {
        isLogado = true;
    }
    session.setAttribute("isLogado", isLogado);
%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link rel="stylesheet" href="../../../styles/estilos.css">
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="/pages/jsp/index.jsp"><img src="/assets/logoHeader.png" alt="Logo da Veu e Gravata"
                            id="your-image-id" class="logo-img"></a>
                </li>
                <li><a href="/pages/jsp/index.jsp">Veu e Gravata</a></li>
                <li><a href="/pages/jsp/casal.jsp">Casais</a></li>
                <li><a href="/pages/jsp/sobre.jsp">Sobre Nos</a></li>
                <li><a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a></li>
                <c:if test="${isLogado}">
                    <li><p>Bem-vindo, ${usuarioLogado.getNome()}!</p></li>
                    <li><a href="/logout" class="bordered-link">Sair</a></li>
                </c:if>
                <c:if test="${not isLogado}">
                    <li><a href="/pages/jsp/login.jsp" class="bordered-link">Login</a></li>
                    <li><a href="/pages/jsp/cadastro.jsp" class="bordered-link">Cadastre-se</a></li>
                </c:if>
            </ul>
        </nav>
    </header>
</body>

</html>