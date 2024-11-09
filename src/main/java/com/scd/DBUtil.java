package com.scd;
import java.sql.*;

public class DBUtil {

    private static final String URL =  "jdbc:oracle:thin:@localhost:1521:XE"; // Adjust as needed
    private static final String USER = "SCD";
    private static final String PASSWORD = "1234";


    public static Connection getConnection() throws SQLException {
        try {
            // Load Oracle JDBC Driver
            Class.forName("oracle.jdbc.OracleDriver");
           // System.out.println("Oracle JDBC Driver Loaded Successfully!");
        } catch (ClassNotFoundException e) {
           // System.out.println("Failed to load Oracle JDBC Driver");
            e.printStackTrace();
        }
        // Establish and return the connection
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
