/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Message;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class SupportCustomerDAO {
    private Connection conn = null;

    public SupportCustomerDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllSupport() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT a.account_id, a.full_name, a.gender, a.phone, a.[address], m.message_context, m.date_time\n" +
                                 "FROM Account a, [Message] m, ChatSession c\n" +
                                 "WHERE m.chat_session_id=c.chat_session_id AND c.customer_id=a.account_id");
        } catch (SQLException ex) {
            Logger.getLogger(SupportCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int addMessage(int chatSessionID, Date datetime, String message_context) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Message values (?,?,?)");
            pst.setInt(1, chatSessionID);
            pst.setDate(2, datetime);
            pst.setString(3, message_context);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SupportCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public int addChatSession(int customer_id, int staff_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into ChatSession values (?,?)");
            pst.setInt(1, customer_id);
            pst.setInt(2, staff_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SupportCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public ResultSet getSupportByID(int chat_session_id) {
        ResultSet rs = null;
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT a.account_id, a.full_name, a.gender, a.phone, a.[address], m.message_context, m.date_time\n" +
                                                          "FROM (Account a INNER JOIN ChatSession c ON c.customer_id=a.account_id) INNER JOIN [Message] m ON m.chat_session_id=c.chat_session_id\n" +
                                                          "WHERE c.chat_session_id=?");
            pst.setInt(1, chat_session_id);
            rs = pst.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SupportCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
