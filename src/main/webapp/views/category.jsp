<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Category List</title>
    <style>
        table,
        th,
        td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <h1>Category List</h1>
<%--    <h1>Name = ${name}</h1>--%>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="category" items="${categories}">
            <tr>
                <td>${category.getCategoryID()}</td>
                <td>${category.getCategoryName()}</td>
                <td>${category.getDescription()}</td>
                <td><a href="products/getProductsByCategoryID/${category.getCategoryID()}">Show products</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>