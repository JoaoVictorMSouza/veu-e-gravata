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
    <link rel="stylesheet" href="../../../styles/darPresente.css">
    <link href="https://fonts.googleapis.com/css2?family=Cardo:ital@0;1&display=swap" rel="stylesheet">
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="main-container">
        <section class="produtoimagem-container">
            <img src="${pageContext.request.contextPath}/assets/produtos/${produtosCasal.getProdutos().getFirst().getProduto().getHxFotoProduto()}" alt="Foto do produto">
            <div>
                <h1>${produtosCasal.getProdutos().getFirst().getProduto().getNome()}</h1>
                <h3>R$ ${produtosCasal.getProdutos().getFirst().getProduto().getPreco()}</h3>
            </div>
        </section>
        <section class="produtodescription-container">
            <div class="description">
                <p>${produtosCasal.getProdutos().getFirst().getProduto().getDescricao()}</p>
            </div>
            <div class="buttons">
                <form action="/casal" method="get" id="cancelar-form">
                    <input type="hidden" id="CD_CASAL" name="CD_CASAL" value="${produtosCasal.getCasal().getCodigo()}"  />
                    <button class="white-button" type="submit">Cancelar</button>
                </form>
                <form action="/presente" method="post" id="dar-presente-form">
                    <input type="hidden" id="idCasal" name="idCasal" value="${produtosCasal.getCasal().getId()}"  />
                    <input type="hidden" id="idProduto" name="idProduto" value="${produtosCasal.getProdutos().getFirst().getProduto().getId()}"  />
                    <button class="golden-button" type="submit">Confimar</button>
                </form>
            </div>
        </section>
        <div id="confirmationModal" style="display: none;" class="modal-confimacao">
            <div>
                <p>Sua reserva foi realizada com sucesso!</p>
            </div>
            <button id="closeButton" class="golden-button">Fechar</button>
        </div>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>

    <script>
        var form = document.getElementById('dar-presente-form');
    
        form.addEventListener('submit', function(event) {
            event.preventDefault();
            var formData = new FormData(form);

            var url = "/presente" + "?" + new URLSearchParams(formData).toString();
    
            fetch(url, {
                method: 'POST'
            })
            .then(function(response) {
                if(response.ok) {
                    document.getElementById('confirmationModal').style.display = 'flex';
                }
            })
            .catch(function(error) {
                alert('Erro na requisição: ' + error.message);
            });
        });

        var closeButton = document.getElementById('closeButton');

        closeButton.addEventListener('click', function() {
            window.location.href = '/casal?CD_CASAL=' + encodeURIComponent(document.getElementById('CD_CASAL').value);
        });
    </script>
</body>

</html>