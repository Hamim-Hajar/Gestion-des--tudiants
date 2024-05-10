<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 80%;
        margin: 20px auto;
    }

    header {
        background-color: #333;
        color: #fff;
        padding: 10px 0;
        text-align: center;
    }

    footer {
        background-color: #333;
        color: #fff;
        padding: 10px 0;
        text-align: center;
        position: fixed;
        bottom: 0;
        width: 100%;
    }

    h1 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ccc;
    }

    th {
        background-color: #f2f2f2;
    }

    a {
        text-decoration: none;
        color: blue;
        margin-right: 10px;
    }

    a:hover {
        text-decoration: underline;
    }

    h2 {
        color: #333;
        font-size: 20px;
        margin-bottom: 10px;
    }

    .add-button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
    }

    .add-button:hover {
        background-color: #45a049;
    }
    /* Style pour le header */
    header {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
    }

    .header-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .header-container h1 {
        margin: 0;
        font-size: 24px;
    }

    nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    nav ul li {
        display: inline;
        margin-right: 20px;
    }

    nav ul li a {
        color: #fff;
        text-decoration: none;
        font-size: 16px;
    }

    button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }

    /* Style pour le footer */
    footer {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
        text-align: center;
    }

    .footer-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .social-icons a {
        display: inline-block;
        margin-right: 10px;
    }

    .social-icons img {
        width: 30px;
        height: auto;
    }

    .social-icons a:last-child {
        margin-right: 0;
    }


</style>
<html>
<head>
    <title>Gestion des Étudiants</title>
</head>
<body>

<header>
    <div class="header-container">
        <h1>Mon Site Web</h1>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}/" class="add-button">home</a></li>
                <li><a href="${pageContext.request.contextPath}/addStudent/" class="add-button">Ajouter un Etudiant</a></li>

            </ul>
        </nav>
    </div>
</header>

<div class="container">
    <h2>Liste des Étudiants</h2>

    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Numéro d'Étudiant</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.studentId}</td>
                <td>${student.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/editStudent/${student.id}">Modifier</a>
                    <a href="${pageContext.request.contextPath}/deleteStudent/${student.id}" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet étudiant ?')">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h2>Ajouter un Étudiant</h2>

</div>

<footer>
    <div class="footer-container">
        <div class="social-icons">
            <a href="https://www.facebook.com"><img src="facebook-icon.png" alt="Facebook"></a>
            <a href="https://www.linkedin.com"><img src="linkedin-icon.png" alt="LinkedIn"></a>
        </div>
        <p>&copy; 2022 Mon Site Web. Tous droits réservés.</p>
    </div>
</footer>

</body>
</html>
