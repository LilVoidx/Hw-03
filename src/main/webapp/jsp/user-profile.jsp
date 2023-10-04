<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profile</title>
  <link rel="stylesheet" type="text/css" href="profile.css">

</head>
<body>
<div class="container">
  <h1>User Profile</h1>
  <div class="profile-item">
    <span class="username">Username:</span>
    <span>${sessionScope.loggedInUser.username}</span>
  </div>
  <div class="profile-item">
    <span>Email:</span>
    <span>${sessionScope.loggedInUser.email}</span>
  </div>
  <div class="profile-item">
    <span>Age:</span>
    <span>${sessionScope.loggedInUser.age}</span>
  </div>
  <br>
  <button class="button" onclick="window.location.href='${pageContext.request.contextPath}/view-users'">View All Users</button>
  <br>
  <br>
  <button class="button" onclick="window.location.href='${pageContext.request.contextPath}/register'">Register a New User</button>
</div>
</body>
</html>
