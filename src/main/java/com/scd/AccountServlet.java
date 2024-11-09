package com.scd;
import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("mail");
        String password = request.getParameter("pass");
        //System.out.println(email + password);
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        // Database check email password
        try {
            con = DBUtil.getConnection();
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            // rs is the output of query jaise sql developer mai single row aate
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("user", rs.getString("username"));
                session.setAttribute("id" , rs.getInt("user_id"));
                session.setAttribute("role" ,rs.getInt("role_id") );
                session.setAttribute("email", rs.getString("email"));
                query = "SELECT * from roles where ROLE_ID=?";
                ps = con.prepareStatement(query);
                ps.setInt(1, rs.getInt("role_id"));
                rs = ps.executeQuery();

                if (rs.next()) {
                   session.setAttribute("role_name", rs.getString("role_name"));
                }
                // rs.getString se column ka naam dekar data uthaya
                response.sendRedirect("Home.jsp");
            } else {
                response.getWriter().write("Invalid email or password.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




}
