/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Contact;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tran Ba Nam
 */
public class ContactDAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public ContactDAO() {
        conn = DBConnection.getConnection();
    }
    
    public void AddContact(int accId, int oId, String mail, String context) {
        String query = "insert Contact values (?, ?, ? ,?,?)";
        LocalDate curtDate = java.time.LocalDate.now();
        String date = curtDate.toString();
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, accId);
            ps.setInt(2, oId);
            ps.setString(3, date);
            ps.setString(4, mail);
            ps.setString(5, context);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
    }
    
    public ResultSet getAllContact() {
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from [Contact]");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
