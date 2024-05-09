<!-- editStudent.jsp -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
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

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 12px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

</style>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>
<body>
<h2>Edit Student</h2>
<form action="<c:url value='/editStudent/' />${student.id}" method="post">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" value="${student.name}"><br>

    <label for="studentId">Student ID:</label><br>
    <input type="text" id="studentId" name="studentId" value="${student.studentId}"><br>

    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" value="${student.email}"><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
