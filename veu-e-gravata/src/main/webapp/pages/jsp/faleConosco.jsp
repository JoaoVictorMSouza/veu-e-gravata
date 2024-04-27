<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veu e Gravata - Casais</title>
    <link rel="stylesheet" href="../../../styles/faleconosco.css"> <!-- Adicionando o CSS faleconosco.css -->
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="container">
        <div>
            <h3>NOSSOS CONTATOS</h3>
            <p>Telefone: 4002-8922</p>
            <p>Email: veuegravata@gmail.com <a href="mailto:veuegravata@gmail.com"></a></p>
        </div>

        <div>
            <h3>QUER TORNAR O SEU CASAMENTO</h3>
            <h3>AINDA MAIS INESQUECIVEL COM</h3>
            <h3>NOSSA PLATAFORMA DE PRESENTES?</h3>
            <p>Entre em contato conosco e monte sua lista </p>
            <p>diretamente com a gente</p>
        </div>

        <div>
            <h3>Nos ajude sempre a melhorar!</h3>
            <h3>Deixe aqui a sua sugestao:</h3>
            <form id="contact-form" action="/faleConosco" method="post">
                <div class="form-group">
                    <textarea id="message" name="message" rows="6" cols="40" required></textarea>

                    <div>
                        <input type="submit" value="ENVIAR" class="golden-button">
                    </div>
                </div>

            </form>
        </div>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>