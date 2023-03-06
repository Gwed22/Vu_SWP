/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Account;
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
 *
 * @author HN015T
 */
public class RegisterDAO {

    private Connection conn = null;

    public RegisterDAO() {
        conn = DBConnection.getConnection();
    }

    public int register(String name, String phone, String password, String gender, String address, int sq_id, String answer_context) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Account values(?,?,?,?,?,?,2,?)");

            pst.setString(1, name);
            pst.setString(2, phone);
            pst.setString(3, password);
            pst.setString(4, gender);
            pst.setString(5, address);
            pst.setInt(6, sq_id);
            pst.setString(7, answer_context);

            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public ArrayList<SecurityQuestion> getAllQuestion() {
        ArrayList<SecurityQuestion> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from SecurityQuestion");
            while (rs.next()) {
                SecurityQuestion s = new SecurityQuestion(rs.getInt("sq_id"), rs.getString("sq_context"));
                list.add(s);
            }
        } catch (Exception e) {
        }
        return list;
    }

   

    public Account checkAccount(int accountID, String answer_context) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "
                    + "where account_id =? and answer_context=?");
            pst.setInt(1, accountID);
            pst.setString(2, answer_context);

            rs = pst.executeQuery();
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkPhone(String phone) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "
                    + "where phone=?");
            pst.setString(1, phone);

            rs = pst.executeQuery();
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int resetPassword(int accountID, String password) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set password=? where account_id=?");
            pst.setString(1, password);
            pst.setInt(2, accountID);

            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public Account getAccount(int account_id) {
        Account a = null;
        try {
            PreparedStatement pst = conn.prepareStatement("");
            pst.setInt(1, account_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
//                p = new student(rs.getString("s_id"), rs.getString("s_name"), rs.getDate("s_birthday"),
//                        rs.getString("s_gender"), rs.getString("s_address"), rs.getString("c_id"));
                a = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    public Account checkPhoneNumber(String phone) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "
                    + "where phone=?");
            pst.setString(1, phone);
            rs = pst.executeQuery();
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account getIDAccount(String phone) {
        Account acc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select *\n"
                    + "from Account \n"
                    + "where phone=?");
            pst.setString(1, phone);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                acc = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    public ResultSet getAllAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public String getQuestion(int accountID) {
        String question = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select sq.sq_context from Account a\n"
                    + "join SecurityQuestion sq\n"
                    + "on sq.sq_id = a.sq_id\n"
                    + "where a.account_id =?");
            pst.setInt(1, accountID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                question = rs.getString("sq_context");
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return question;

    }
}
