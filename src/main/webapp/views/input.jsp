<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
</head>
<body>
    <form action="/register/display" method="POST">
        First Name <input type="text" class="input-field" name="firstname"> </br>
        Last Name <input type="text" class="input-field" name="lastname"> </br>
        Password <input type="password" class="input-field" name="password"> </br>
        Re-Password <input type="password" class="input-field" name="repassword"> </br>
        <c:if test="${error}">
            <p>${error}</p>
        </c:if>
        <input type="submit" value="Display">
        <button onclick="clearText()">Clear</button>
    </form>
<script>
    function clearText() {
        var inputs = document.getElementsByClassName("input-field");
        for (var i = 0; i < inputs.length; i++) {
            inputs[i].value = "";
        }
    }
</script>
</body>
</html>