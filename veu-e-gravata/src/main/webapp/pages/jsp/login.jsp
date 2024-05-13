<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../../../styles/index.css">
    <link rel="stylesheet" href="../../../styles/login.css">
</head>

<body>
    <%@ include file="../../../pages/jsp/shared/header.jsp" %>

    <main class="content">
        <div class="image-container">

            <img src="../../assets/home2.png" alt="home2.png" class="background-image">
        </div>
        <form action="/login" method="post">

            <span>${requestScope.message}</span>

            <br>

            <label for="DS_EMAIL">USUARIO</label>
            <input type="text" id="DS_EMAIL" name="DS_EMAIL">

            <br>

            <label for="DS_SENHA">SENHA</label>
            <input type="password" id="DS_SENHA" name="DS_SENHA">

            <div>
                <input type="submit" value="ENTRAR" class="white-button">
            </div>
        </form>
    </main>

    <%@ include file="../../../pages/jsp/shared/footer.jsp" %>
</body>

</html>