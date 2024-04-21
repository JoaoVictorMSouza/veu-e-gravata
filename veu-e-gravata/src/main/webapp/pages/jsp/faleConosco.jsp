<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link rel="stylesheet" href="/styles/styles.css">

    <title> Fale Conosco</title>
</head>

<body>
    <header>
        <h1>Fale Conosco</h1>
    </header>

    <main>
        <div class="center-content">
            <form id="contact-form" action="/faleConosco" method="post">
                <div class="form-group">
                    <label for="name">Nome:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Mensagem:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit">Enviar</button>
            </form>
            <div class="social-links">
                <a href="https://api.whatsapp.com/send?phone=5511979903060" target="_blank"><img src="/assets/wpp.png" alt="WhatsApp"></a>
                <a href="https://www.instagram.com/veuegravata/" target="_blank"><img src="/assets/Instagram.png" alt="Instagram"></a>
                <a href="https://www.tiktok.com/@veuegravata" target="_blank"><img src="/assets/TikTok.png" alt="TikTok"></a>
            </div>
        </div>
    </main>

    <footer>
           <p>&copy; 2024 Véu e Gravata</p>
       </footer>
       <script src="scripts.js"></script>
   </body>

   </html>