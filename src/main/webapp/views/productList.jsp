<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product List</title>
    <style>
        table,
        th,
        td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<table>
    <tr>
        <th>Product ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.getProductID()}</td>
            <td>${product.getProductName()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getFormattedPrice()}</td>
            <td><a href="../changeCategory/${product.getProductID()}">Assign </a></td>
        </tr>
    </c:forEach>
</table>
<a href="../../categories">
    Go back
</a>
</body>
</html>