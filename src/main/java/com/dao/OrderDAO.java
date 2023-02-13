/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Order;
import com.models.ProductOrders;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class OrderDAO {

    private Connection conn = null;

    public OrderDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select o.OrderID as OrderID, o.OrderDate as OrderDate, o.ShippingDate as ShippingDate, o.ShippingAddress as ShippingAddress, \n"
                    + "CONCAT(a.LName, ' ', a.FName) as UserName, p.ProductName as ProductName, o.Quantity as Quantity\n"
                    + "from [Order] o inner join Account a on o.UserID = a.UserID inner join Product p on o.ProductID = p.ProductID");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int addNew(Order or) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into [Order] values(?,?,?,?,?,?,?,?)");
            pst.setInt(1, or.getOrderID());
            pst.setDate(2, or.getOrderDate());
            pst.setDate(3, or.getShippingDate());
            pst.setString(4, or.getShippingAddress());
            pst.setInt(5, or.getIsDelivery());
            pst.setInt(6, or.getUserID());
            pst.setInt(7, or.getProductID());
            pst.setInt(8, or.getQuantity());
            count = pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public Order getOrder(int id) {
        Order or = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from [Order] where OrderID=?");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                or = new Order(rs.getInt("OrderID"), rs.getDate("OrderDate"), rs.getDate("ShippingDate"),
                        rs.getString("ShippingAddress"), rs.getInt("IsDelivery"), rs.getInt("UserID"),
                        rs.getInt("ProductID"), rs.getInt("Quantity"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return or;
    }

    public int update(Order or) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update [Order] set OrderDate=?, ShippingDate=?, ShippingAddress=?, IsDelivery=?, UserID=?, ProductID=?, Quantity=? where OrderID=?");
            pst.setDate(1, or.getOrderDate());
            pst.setDate(2, or.getShippingDate());
            pst.setString(3, or.getShippingAddress());
            pst.setInt(4, or.getIsDelivery());
            pst.setInt(5, or.getUserID());
            pst.setInt(6, or.getProductID());
            pst.setInt(7, or.getQuantity());
            pst.setInt(8, or.getOrderID());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int delete(int id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from [Order] where OrderID=?");
            pst.setInt(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public ResultSet totalSale() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select sum(p.ProductPrice * o.Quantity) as TotalSale from [Order] o inner join Product p on o.ProductID = p.ProductID");
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
