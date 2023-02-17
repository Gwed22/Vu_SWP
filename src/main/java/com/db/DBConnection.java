/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class DBConnection {
    private static Connection conn = null;
     public static Connection getConnection() {
        if (conn == null) {
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String url = "jdbc:sqlserver://DESKTOP-DT42AOQ:1433;databaseName=SWP;user=sa;password=123456;encrypt=true;trustServerCertificate=true;";
                conn = DriverManager.getConnection(url);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return conn;
    }

    public void closeConnection() {
        try {
            if (!conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
