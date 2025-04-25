package mysql;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
    public static Connection connect() {
        Connection con = null;
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database URL: jdbc:mysql://hostname:port/database
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "Shubham@19");

            System.out.println("Database Connected Successfully");

        } catch (Exception e) {
            System.out.println("Database Connection Failed: " + e.getMessage());
        }
        return con;
    }
}
