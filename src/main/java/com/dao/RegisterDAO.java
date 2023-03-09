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

    private Connection conn = null; //create object

    /**
     * Create dataConnnection
     */
    public RegisterDAO() {
        conn = DBConnection.getConnection(); //get connection to connect database
    }

    /**
     * Function register new account
     *
     * @param name
     * @param phone
     * @param password
     * @param gender
     * @param address
     * @param sq_id
     * @param answer_context
     * @return
     */
    public int register(String name, String phone, String password, String gender, String address, int sq_id, String answer_context) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Account values(?,?,?,?,?,?,2,?)"); //SQLquery 

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

    public Account getAccountByID(int acc_id) {
        Account acc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where account_id=?");
            pst.setInt(1, acc_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                acc = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"),
                        rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    /**
     * Function Get all security questions from user
     *
     * @return
     */
    public ArrayList<SecurityQuestion> getAllQuestion() {
        ArrayList<SecurityQuestion> list = new ArrayList<>(); //create arrayList to push all security answer into list
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from SecurityQuestion");////execute SQLquery 
            while (rs.next()) {
                SecurityQuestion s = new SecurityQuestion(rs.getInt("sq_id"), rs.getString("sq_context"));
                list.add(s);
            }
        } catch (Exception e) {
        }
        return list;
    }

    /**
     * Function check account that has been existed in database
     *
     * @param accountID
     * @param answer_context
     * @return
     */
    public Account checkAccount(int accountID, String answer_context) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "//SQLquery 
                    + "where account_id =? and answer_context=?");//SQLquery 
            pst.setInt(1, accountID);
            pst.setString(2, answer_context);

            rs = pst.executeQuery();//execute SQLquery
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     * Function check phone number of account that has been existed in database
     *
     * @param phone
     * @return
     */
    public Account checkPhone(String phone) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "//SQLquery 
                    + "where phone=?");//SQLquery 
            pst.setString(1, phone);

            rs = pst.executeQuery(); //execute SQLquery
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     * Function reset password for user
     *
     * @param accountID
     * @param password
     * @return
     */
    public int resetPassword(int accountID, String password) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set password=? where account_id=?");//SQLquery 
            pst.setString(1, password);
            pst.setInt(2, accountID);

            count = pst.executeUpdate();//execute SQLquery
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Function check phone number in database
     *
     * @param phone
     * @return
     */
    public Account checkPhoneNumber(String phone) {
        ResultSet rs = null;

        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account "//SQLquery 
                    + "where phone=?");//SQLquery 
            pst.setString(1, phone);
            rs = pst.executeQuery();//execute SQLquery
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    /**
     * Function get ID of account in database
     *
     * @param phone
     * @return
     */
    public Account getIDAccount(String phone) {
        Account acc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select *\n"//SQLquery 
                    + "from Account \n"//SQLquery 
                    + "where phone=?");//SQLquery 
            pst.setString(1, phone);
            ResultSet rs = pst.executeQuery();//execute SQLquery
            while (rs.next()) {
                acc = new Account(rs.getInt("account_id"), rs.getString("full_name"), rs.getString("phone"), rs.getString("password"), rs.getString("gender"), rs.getString("address"), rs.getInt("sq_id"), rs.getInt("role_id"), rs.getString("answer_context"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    /**
     * Function get all account in database
     *
     * @return
     */
    public ResultSet getAllAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account");//execute SQLquery
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    /**
     * Function get security answer of account in database
     *
     * @param accountID
     * @return
     */
    public String getQuestion(int accountID) {
        String question = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select sq.sq_context from Account a\n"//SQLquery 
                    + "join SecurityQuestion sq\n"//SQLquery 
                    + "on sq.sq_id = a.sq_id\n"//SQLquery 
                    + "where a.account_id =?");//SQLquery 
            pst.setInt(1, accountID);
            ResultSet rs = pst.executeQuery();//execute SQLquery
            while (rs.next()) {
                question = rs.getString("sq_context");
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return question;

    }

    /**
     * Function update profile of user
     *
     * @param acc
     * @return
     */
    public int updateProfile(Account acc) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set full_name=?, phone=?,"
                    + "address=?, answer_context=? where account_id=?"); //SQLquery
            pst.setString(1, acc.getName());
            pst.setString(2, acc.getPhone());
            pst.setString(3, acc.getAddress());
            pst.setString(4, acc.getAnswer_context());
            pst.setInt(5, acc.getAccountID());
            count = pst.executeUpdate();//execute SQLquery
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
