<%--
  Created by IntelliJ IDEA.
  User: Naveed
  Date: 11/8/2024
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Assignments</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container mt-5">
    <h2 class="text-center">View Assignments</h2>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>Assignment ID</th>
            <th>Assignment Name</th>
            <th>Due Date</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Math Homework</td>
            <td>2024-11-15</td>
            <td>Not Submitted</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Science Project</td>
            <td>2024-11-20</td>
            <td>Submitted</td>
        </tr>
        <tr>
            <td>3</td>
            <td>English Essay</td>
            <td>2024-11-25</td>
            <td>Not Submitted</td>
        </tr>
        <tr>
            <td>4</td>
            <td>History Presentation</td>
            <td>2024-12-01</td>
            <td>Submitted</td>
        </tr>
        </tbody>
    </table>

</div>

</body>
</html>
