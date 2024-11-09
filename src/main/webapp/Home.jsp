<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="utils.StringUtil" %>
<%
    HttpSession sessionn = request.getSession(false);
    if (sessionn == null || sessionn.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");  // Redirect to login if sessionn is invalid
        return;
    }
    String userName = (String) sessionn.getAttribute("user");
    int userId = (int) sessionn.getAttribute("id");
    String userRole = (String) sessionn.getAttribute("role_name");
    String userEmail = (String) sessionn.getAttribute("email");


%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="container mt-4">
    <h2 class="text-center">Welcome, <%= userName %></h2>
</div>
<table class="table table-striped table-bordered">
    <thead class="thead-dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>

   <tr>
        <td><%= userId %></td>
        <td><%= userName %></td>
        <td><%= userEmail %></td>
        <td><%= userRole %></td>
    </tr>


    </tbody>
</table>

</body>
</html>
