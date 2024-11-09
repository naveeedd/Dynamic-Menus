package com.scd;


import java.sql.Connection;
import java.sql.SQLException;
public class Test {
    public static void main(String[] args) {
        try {
            // Test the database connection
            Connection connection = DBUtil.getConnection();
            if (connection != null) {
                System.out.println("Connection Successful!");
                connection.close(); // Close the connection after testing
            }
        } catch (SQLException e) {
            System.out.println("Connection Failed!");
            e.printStackTrace();
        }
    }
}