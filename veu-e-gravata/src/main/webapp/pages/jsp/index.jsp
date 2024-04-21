<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body>
    <header>
        <h1>Bem vindos a Veu e Gravata</h1>
    </header>
    <main>
        <form action="/usuario" method="post">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome">
            </div>
            <button type="submit">Registrar</button>
        </form>

    </main>
    <footer>
        <p>&copy; 2024 Véu e Gravata</p>

    </footer>

    <div>
      <div>
          <a href="/sobre">Sobre Nós</a>
          <a href="/pages/jsp/faleConosco.jsp">Fale Conosco</a>
      </div>

    </div>

</body>
</html>
