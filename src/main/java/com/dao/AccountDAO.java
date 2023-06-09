/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.models.Account;
import com.db.DBConnection;
import com.models.Role;
import com.models.SecurityQuestion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Vux
 */
public class AccountDAO {

    public Connection conn = null;

    public AccountDAO() throws SQLException {
        conn = DBConnection.getConnection();
    }

    /**
     * Get all account from database and return into result set
     */
    public ResultSet getAllAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Account a join Role r on a.role_id = r.role_id join SecurityQuestion s on s.sq_id = a.sq_id");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    /**
     * Get account from database with account id and return account
     */
    public Account getAccountByID(int acc_id) {
        Account acc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where account_id=?");
            pst.setInt(1, acc_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                acc = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"),
                        rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    /**
     * Insert an account to database then return count of column effect
     */
    public int addNewAccount(Account acc) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Account values(?,?,?,?,?,?,?)");
            pst.setString(1, acc.getName());
            pst.setString(2, acc.getPhone());
            pst.setString(3, acc.getPassword());
            pst.setString(4, acc.getGender());
            pst.setString(5, acc.getAddress());
            pst.setInt(6, acc.getSq_id());
            pst.setInt(7, acc.getRole_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Get all Role for account from database and return into a list
     */
    public ArrayList<Role> getAllRole() {
        ArrayList<Role> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Role");
            while (rs.next()) {
                Role ro = new Role(rs.getInt("role_id"), rs.getString("role_name"));
                list.add(ro);
            }
        } catch (Exception e) {
        }
        return list;
    }

    /**
     * Get all Security Question for account from database and return into a
     * list
     */
    public ArrayList<SecurityQuestion> getAllSQ() {
        ArrayList<SecurityQuestion> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from SecurityQuestion");
            while (rs.next()) {
                SecurityQuestion sq = new SecurityQuestion(rs.getInt("sq_id"), rs.getString("sq_context"));
                list.add(sq);
            }
        } catch (Exception e) {
        }
        return list;
    }

    /**
     * Update an account from database then return count of column effect
     */
    public int updateAccount(Account acc) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set full_name=?, phone=?, password=?, gender=?, address=?, sq_id=?, role_id=? where account_id=?");
            pst.setInt(8, acc.getAccountID());
            pst.setString(1, acc.getName());
            pst.setString(2, acc.getPhone());
            pst.setString(3, acc.getPassword());
            pst.setString(4, acc.getGender());
            pst.setString(5, acc.getAddress());
            pst.setInt(6, acc.getSq_id());
            pst.setInt(7, acc.getRole_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Delete an account from database then return count of column effect
     */
    public int deleteAccount(int acc_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from [Account] where account_id=?");
            pst.setInt(1, acc_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Check an account from database with username and password then return account
     */
    public Account checkLogin(String phone, String password) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement(" select * from Account where phone=? and password=?");
            pst.setString(1, phone);
            pst.setString(2, password);
            rs = pst.executeQuery();
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
    * Search accounts from database then return a result set that match search query
    */
    public ResultSet getSearchAccount(String query) throws SQLException {
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("Select * from Account where full_name like'%" + query + "%'");
        return rs;
    }
}
