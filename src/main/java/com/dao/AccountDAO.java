/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Account;
import java.sql.Connection;
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
public class AccountDAO {
    private Connection conn = null;

    public AccountDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Account");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public ResultSet getAllUser() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select UserID, CONCAT(LName,' ', FName) As FullName, Phone from Account where IsAdmin = 0");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public ResultSet getAllAdmin() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select UserID, CONCAT(LName,' ', FName) As FullName, Phone from Account where IsAdmin = 1");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Account getAccount(int id) {
        Account kh = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where UserID=?");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                kh = new Account(rs.getInt("UserID"), rs.getString("FName"), rs.getString("LName"), rs.getString("Phone"), rs.getString("Password"), rs.getInt("IsAdmin"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kh;
    }

    public int addNew(Account acc) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Account values(?,?,?,?,?,?)");
            pst.setInt(1, acc.getUserId());
            pst.setString(2, acc.getFname());
            pst.setString(3, acc.getLname());
            pst.setString(4, acc.getPhone());
            pst.setString(5, acc.getPassword());
            pst.setInt(6, acc.getUserStt());
            count = pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int update(Account acc) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set FName=?, LName=?, Phone=?, Password=?, IsAdmin=? where UserID=?");
            pst.setString(1, acc.getFname());
            pst.setString(2, acc.getLname());
            pst.setString(3, acc.getPhone());
            pst.setString(4, acc.getPassword());
            pst.setInt(5, acc.getUserStt());
            pst.setInt(6, acc.getUserId());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public int delete(int id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Account where UserID=?");
            pst.setInt(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    } 
}
