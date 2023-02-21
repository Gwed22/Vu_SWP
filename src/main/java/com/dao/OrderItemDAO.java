/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.OrderItem;
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
public class OrderItemDAO {

    private Connection conn = null;

    public OrderItemDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllOrderItem() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from OrderItem");
        } catch (SQLException ex) {
            Logger.getLogger(OrderItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

//    public ResultSet getSearchOrder(String query) throws SQLException {
//        Statement st = conn.createStatement();
//        ResultSet rs = st.executeQuery("Select * from Order where o_id like'%" + query + "%'");
//        return rs;
//    }
//    
//    public ResultSet getSearchCate(String query) throws SQLException {
//        Statement st = conn.createStatement();
//        ResultSet rs = st.executeQuery("Select * from product where loaisp like'%" + query + "%'");
//        return rs;
//    }

    public OrderItem getOrderItem(int o_id) {
        OrderItem ot = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from OrderItem where o_item_id=?");
            pst.setInt(1, o_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                ot = new OrderItem(o_id, rs.getInt("o_id"), rs.getInt("product_id"), rs.getInt("price"), rs.getInt("quantity"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderItemDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ot;
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
