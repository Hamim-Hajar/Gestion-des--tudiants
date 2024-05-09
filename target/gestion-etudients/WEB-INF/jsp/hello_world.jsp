<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Gestion des Étudiants</title>
</head>
<body>

<h1>Liste des Étudiants</h1>

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
<a href="${pageContext.request.contextPath}/addStudent/">Ajouter</a>

</body>
</html>
