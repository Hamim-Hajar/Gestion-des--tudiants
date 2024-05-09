<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"] {
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 12px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #45a049;
    }

</style>
<html>
<head>
    <title>Gestion des Étudiants</title>
</head>
<body>
<h2>Ajouter un Étudiant</h2>

<form action="<c:url value='/addStudent'/>" method="post">
    <label for="name">Nom:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="studentId">Numéro d'Étudiant:</label>
    <input type="text" id="studentId" name="studentId" required><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>
    <button type="submit">Ajouter</button>
</form>

</body>
</html>