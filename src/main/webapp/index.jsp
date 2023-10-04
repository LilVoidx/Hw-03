<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Your Application</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <h1>Welcome to Your Application</h1>
    <p>Please select an option:</p>
    <ul>
        <li><button class="button" onclick="window.location.href='${pageContext.request.contextPath}/register'">Register</button></li><br>
        <li><button class="button" onclick="window.location.href='${pageContext.request.contextPath}/login'">Login</button></li><br>
        <li><button class="button" onclick="window.location.href='${pageContext.request.contextPath}/user-by-age'">Search Users by Age</button></li><br>
        <li><button class="button" onclick="window.location.href='${pageContext.request.contextPath}/user-by-email'">Search Users by Email</button></li>
    </ul>
</div>
</body>
</html>
