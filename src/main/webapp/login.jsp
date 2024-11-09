<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Login</h2>
    <form action="AccountServlet" method="post" class="border p-4 rounded bg-light">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="mail" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-primary btn-block">Login</button>
    </form>
</div>

</body>
</html>
