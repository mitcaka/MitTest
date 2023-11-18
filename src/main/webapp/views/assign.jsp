<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<p>Do you really want to assign product : <strong>${product.getProductName()}</strong>
    to other category?
</p>
    <form:form method="POST" action="/products/updateProduct/${product.getProductID()}"
          modelAttribute="product">
        <form:select path="categoryID">
            <c:forEach var="category" items="${categories}">
                <form:option value="${category.getCategoryID()}">
                    ${category.getCategoryName()}
                </form:option>
            </c:forEach>
        </form:select>
        <input type="submit" value="Update">
    </form:form>
</body>
</html>