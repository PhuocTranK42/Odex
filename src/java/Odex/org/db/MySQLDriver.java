/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class MySQLDriver {

    private final String DB_URL = "jdbc:mysql://localhost:3306/odex";
    private final String DB_USER = "root";
    private final String DB_PASS = "";

    private static MySQLDriver instance;

    private MySQLDriver() {
    }

    public static MySQLDriver getInstance() {
        if (instance == null) {
            instance = new MySQLDriver();
        }
        return instance;
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);  //getConnection đây là phương thức class
        } catch (Exception e) {
            // TODO: handle exception
        }
        return conn;
    }
}
