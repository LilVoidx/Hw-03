<%@ page import="java.util.List" %>
<%@ page import="ru.itis.model.User" %>
<% List<User> userList = (List<User>) request.getAttribute("userList"); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profiles</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
  <h1>User Profiles</h1>
  <ul>
    <% for (User user : userList) { %>
    <li>
      <div class="user-info">
        <p><strong>Username:</strong> <%= user.getUsername() %></p>
        <p><strong>Email:</strong> <%= user.getEmail() %></p>
      </div>
    </li>
    <% } %>
  </ul>
  <button class="button" onclick="location.href='${pageContext.request.contextPath}/user-profile'">View your profile</button> |
  <button class="button" onclick="location.href='${pageContext.request.contextPath}/login'">Login another user</button> |
  <button class="button" onclick="location.href='${pageContext.request.contextPath}/register'">Register a new user</button>
</div>
</body>
</html>
