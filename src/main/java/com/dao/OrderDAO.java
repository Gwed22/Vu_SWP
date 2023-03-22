/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.dao.AccountDAO;
import com.db.DBConnection;
import com.models.Account;
import com.models.Cart;
import com.models.Item;
import com.models.Order;
import com.models.OrderProducts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Vux
 */
public class OrderDAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public OrderDAO() {
        conn = DBConnection.getConnection();
    }

    /**
     * Get all order from database and return into result set
     */
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

    /**
     * Get order from database with order id and return that order
     */
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

    /**
     * Update order from database then return count of column effect
     */
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

    public void updateById(int id, String status) {
        PreparedStatement pst;
        String query = "Update [Order] set status = ? where o_id = ?";
        try {
            pst = conn.prepareStatement(query);
            pst.setString(1, status);
            pst.setInt(2, id);
            pst.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addOrder(Account a, Cart c, Order or) {
        LocalDate curtDate = java.time.LocalDate.now();
        LocalDate curtDate1 = curtDate.plusDays(5);
        String date = curtDate.toString();
        String date1 = curtDate1.toString();

        try {
            String query = "insert into [Order] values (?,?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, date);
            pst.setString(2, date1);
            pst.setString(3, "Processing...");
            pst.setString(4, or.getNote());
            pst.setInt(5, a.getAccountID());
            pst.setString(6, or.getAddress());
            pst.setDouble(7, c.getTotalMoney());
            pst.executeUpdate();
            String query1 = "select top 1 o_id from [Order] order by o_id desc";
            PreparedStatement pst1 = conn.prepareStatement(query1);
            ResultSet rs = pst1.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : c.getItems()) {
                    String query2 = "insert into [OrderItem] values (?,?,?,?)";
                    PreparedStatement pst2 = conn.prepareStatement(query2);
                    pst2.setInt(1, oid);
                    pst2.setInt(2, i.getProduct().getConID());
                    pst2.setInt(3, i.getQuantity());
                    pst2.setDouble(4, i.getPrice());
                    pst2.executeUpdate();
                }
            }
        } catch (Exception e) {

        }
    }

    public List<Order> getOrderByUserID(int id) {
        List<Order> list = new ArrayList<>();
        String query = "select * from [Order] where account_id = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1), rs.getDate(2), rs.getDate(3), rs.getString(4), rs.getString(5),
                            rs.getInt(6), rs.getString(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public List<OrderProducts> getOrderProductsByOrderId(int id) {
        List<OrderProducts> list = new ArrayList<>();
        String query = "select o.o_id, c.product_name, c.product_img, ot.productPrice, ot.quantity from ([Order] o\n"
                + "join OrderItem ot \n"
                + "on o.o_id = ot.o_id )\n"
                + "join Consignment c \n"
                + "on c.con_id = ot.con_id\n"
                + "where o.o_id = ?\n"
                + "group by o.o_id, c.product_name,c.product_img, ot.productPrice, ot.quantity";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderProducts(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getInt(5)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public static void main(String[] args) {
       
       OrderDAO dao = new OrderDAO();
       List<Order> o = dao.getOrderByUserID(4);
        for (Order order : o) {
            System.out.println(order);
        }
    }

}
