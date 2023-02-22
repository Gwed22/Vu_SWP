/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.dao.AccountDAO;
import com.db.DBConnection;
import com.models.Account;
import com.models.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Vux
 */
public class OrderDAO {

    private Connection conn = null;

    public OrderDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllOrder() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from [Order]");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
//
//    public ResultSet getSearchOrder(String query) throws SQLException {
//        Statement st = conn.createStatement();
//        ResultSet rs = st.executeQuery("Select * from Order where o_id like'%" + query + "%'");
//        return rs;
//    }
    
//    public ResultSet getSearchCate(String query) throws SQLException {
//        Statement st = conn.createStatement();
//        ResultSet rs = st.executeQuery("Select * from product where loaisp like'%" + query + "%'");
//        return rs;
//    }

    public Order getOrder(int o_id) {
        Order o = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from [Order] where o_id=?");
            pst.setInt(1, o_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                o = new Order(o_id, rs.getDate("o_date"), rs.getDate("delivery_date"), rs.getString("status"), rs.getString("note"), 
                                    rs.getInt("account_id"), rs.getString("address"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return o;
    }
    
        public int updateOrder(Order or) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update [Order] set o_date=?, delivery_date=?, status=?, note=?, account_id=?, address=? where o_id=?");
            pst.setDate(1, or.getOrderDate());
            pst.setDate(2, or.getDeliveryDate());
            pst.setString(3, or.getStatus());
            pst.setString(4, or.getNote());
            pst.setInt(5, or.getAccountID());
            pst.setString(6, or.getAddress());
            pst.setInt(7, or.getOrderID());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

//    public int addNewOrder(Order o) {
//        int count = 0;
//        try {
//            PreparedStatement pst = conn.prepareStatement("Insert into product values(?,?,?,?,?)");
//            pst.setString(1, pd.masp);
//            pst.setString(1, pd.tensp);
//            pst.setString(2, pd.gia);
//            pst.setString(3, pd.mota);
//            pst.setString(4, pd.loaisp);
//            count = pst.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return count;
//    }

//    public int deleteProduct(String masp) {
//        int count = 0;
//        try {
//            PreparedStatement pst = conn.prepareCall("delete from product where masp=?");
//            pst.setString(1, masp);
//            count = pst.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return count;
//    }
}
