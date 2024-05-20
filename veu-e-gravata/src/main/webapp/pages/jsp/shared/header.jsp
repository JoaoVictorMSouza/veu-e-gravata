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
                    <li><p id="username" style="cursor: pointer;">Bem-vindo, ${usuarioLogado.getNome()}!</p></li>
                    <li><a href="/logout" class="bordered-link">Sair</a></li>
                </c:if>
                <c:if test="${not isLogado}">
                    <li><a href="/pages/jsp/login.jsp" class="bordered-link">Login</a></li>
                    <li><a href="/pages/jsp/cadastro.jsp" class="bordered-link">Cadastre-se</a></li>
                </c:if>
            </ul>
        </nav>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <p>Tem certeza de que deseja excluir sua conta?</p>
                <button id="delete-btn">Excluir conta</button>
            </div>
        </div>

        <div id="confirmationModal" style="display: none;" class="modal-confimacao">
            <div>
                <p>Deseja realmente excluir a sua conta?</p>
            </div>
            <button id="closeButton" class="golden-button butao">Fechar</button>
            <button id="deleteButton" class="delete-btn butao">Excluir</button>
        </div>
    </header>

    <script>
        var modal = document.getElementById("myModal");

        var btn = document.getElementById("username");

        var nameUser = document.getElementById("username");

        var btnDelete = document.getElementById("delete-btn");

        var deleteButton = document.getElementById("deleteButton");

        var closeButton = document.getElementById("closeButton");

        var modelConfirmacao = document.getElementById("confirmationModal");

        closeButton.onclick = function() {
            modelConfirmacao.style.display = "none";
        }

        deleteButton.onclick = function() {
            modelConfirmacao.style.display = "none";
            fetch('/usuario', {
                method: 'DELETE',
            }).then(function(response) {
                if (response.ok) {
                    window.location.href = '/pages/jsp/index.jsp';
                }
            })
        }

        btnDelete.onclick = function() {
            modal.style.display = "none";

            modelConfirmacao.style.display = "block";
        }

        btn.onclick = function() {
            modal.style.display = "block";
        }

        window.onclick = function(event) {
            if (event.target == modal || event.target == btn || event.target == nameUser) {
                modal.style.display = "block";
            } else {
                modal.style.display = "none";
            }
        }
    </script>
</body>

</html>