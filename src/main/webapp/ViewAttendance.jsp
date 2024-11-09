<%--
  Created by IntelliJ IDEA.
  User: Naveed
  Date: 11/8/2024
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%><%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Attendance Page</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%
  String courseName = "CL2005 - Database Systems - Lab";
  int attendancePercentage = 75;

  Random random = new Random();
%>
<jsp:include page="header.jsp" />

<div class="container my-5">
  <h2 class="text-center mb-4"><%= courseName %></h2>

  <div class="progress mb-4">
    <div class="progress-bar bg-danger" role="progressbar" style="width: <%= attendancePercentage %>%;" aria-valuenow="<%= attendancePercentage %>" aria-valuemin="0" aria-valuemax="100">
      <%= attendancePercentage %>%
    </div>
  </div>

  <table class="table table-bordered text-center">
    <thead class="thead-dark">
    <tr>
      <th>Lecture No</th>
      <th>Date</th>
      <th>Duration (In Hours)</th>
      <th>Presence</th>
    </tr>
    </thead>
    <tbody>
    <%
      for (int i = 1; i <= 10; i++) {
        String date = String.format("%02d-Oct-2024", 10 + i); // Example dates in October
        int duration = 1; // Fixed duration
        String presence = random.nextBoolean() ? "P" : "A"; // Randomly "P" or "A"
        String presenceClass = "P".equals(presence) ? "text-success" : "text-danger";
    %>
    <tr>
      <td><%= i %></td>
      <td><%= date %></td>
      <td><%= duration %></td>
      <td class="<%= presenceClass %>"><%= presence %></td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>

</body>
</html>
