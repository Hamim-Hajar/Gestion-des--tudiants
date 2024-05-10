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
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/" class="add-button">home</a></li>
        <li><a href="${pageContext.request.contextPath}/hello_world/" class="add-button">Revenir a la liste</a></li>

    </ul>
</nav>
    </div>
</header>

<form action="<c:url value='/addStudent'/>" method="post">
    <label for="name">Nom:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="studentId">Numéro d'Étudiant:</label>
    <input type="text" id="studentId" name="studentId" required><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>
    <button type="submit">Ajouter</button>
</form>
<footer>
    <div class="footer-container">
        <div class="social-icons">
            <a href="https://www.facebook.com"><img src="https://www.flaticon.com/free-icon/facebook_5968764?term=facebook+logo&page=1&position=1&origin=search&related_id=5968764" alt="Facebook"></a>
            <a href="https://www.linkedin.com"><img src="https://www.flaticon.com/free-icon/linkedin_145807?term=linkedin+logo&page=1&position=5&origin=search&related_id=145807" alt="LinkedIn"></a>
        </div>
        <p>&copy; 2022 Mon Site Web. Tous droits réservés.</p>
    </div>
</footer>
</body>
</html>