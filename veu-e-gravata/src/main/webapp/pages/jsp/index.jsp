<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link href="/webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <title>Home</title>
</head>

<body>
<h2>Home</h2>

<form action="/usuario" method="post">
    <label>Nome</label>
    <input type="text" name="nome" id="nome">
    <button type="submit">Register</button>
</form>
</body>

</html>