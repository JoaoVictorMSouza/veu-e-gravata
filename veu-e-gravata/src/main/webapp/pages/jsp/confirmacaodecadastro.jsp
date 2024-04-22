<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmação de Cadastro</title>
</head>
<body>
    <h2>Cadastro Realizado com Sucesso!</h2>
    <p>Obrigado por se cadastrar.</p>

    <!-- Redirecionamento para a página de confirmação -->
    <% response.sendRedirect("/veu-e-gravata/src/main/webapp/pages/jsp/confirmacaodecadastro.jsp"); %>
</body>
</html>