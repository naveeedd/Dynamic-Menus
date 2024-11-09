<%@ page import="java.util.*, java.sql.*" %>
<%@ page import="com.scd.DBUtil" %>
<%!
  public String removeSpaces(String input) {
    if (input == null) {
      return null;
    }
    return input.replace(" ", "");
  }
%>
<%
  Connection con = null;
  PreparedStatement ps = null;
  ResultSet rs = null;

  HttpSession sessionn = request.getSession(false);
  int role = (int) sessionn.getAttribute("role");

  String menuItems = "";

    try {
    con = DBUtil.getConnection();
    String query = "SELECT * from roles where ROLE_ID=?";
    ps = con.prepareStatement(query);
    ps.setInt(1, role);
    rs = ps.executeQuery();

    if (rs.next()) {
      menuItems = rs.getString("menus"); // Comma-separated menu items
    }

  } catch (SQLException e) {
    e.printStackTrace();
  } finally {
    try {
      if (rs != null) rs.close();
      if (ps != null) ps.close();
      if (con != null) con.close();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }
  //View Assignments,Upload Grades,Manage Faculty,View all section record,Logout

%>

<header class="bg-primary text-white py-3">
  <nav class="container">
    <ul class="nav justify-content-center">
      <%

        if (menuItems != null && !menuItems.isEmpty()) { // href='"+menu.trim()+".jsp'
          String[] menuArray = menuItems.split(",");

          for (String menuItem : menuArray) {
            out.println("<li class='nav-item'><a class='nav-link text-white' href='" + removeSpaces(menuItem.trim()) + ".jsp'>" + menuItem.trim() + "</a></li>");
          }
        } else {
          out.println("<li class='nav-item text-white'>No menu items available for this role.</li>");
        }
      %>
    </ul>
  </nav>
</header>
