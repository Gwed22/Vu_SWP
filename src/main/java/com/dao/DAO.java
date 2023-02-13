/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Account;
import com.models.Categories;
import com.models.Order;
import com.models.ProductOrders;
import com.models.Products;
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
 * @author PC
 */
public class DAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public DAO() {
        conn = DBConnection.getConnection();
    }

    public List<Categories> getAllCategories() {
        List<Categories> list = new ArrayList<>();
        String query = "Select * from PCategory";
        try {
            ps = conn.prepareStatement(query);;
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Not found!");
        }
        return list;
    }

    public List<Products> getAllProduct() {
        List list = new ArrayList();
        String query = "Select * from Product";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public List<Products> getAllProductByCategoryId(String cid) {
        List list = new ArrayList();
        String query = "Select * from Product where CategoryID=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public List<Products> searchProductByName(String txtSearch) {
        List list = new ArrayList();
        String query = "Select * from Product where ProductName like ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public Products getAllProductById(String id) {

        String query = "Select * from Product where ProductID=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(8));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return null;
    }

    public List<Products> getAllProductBySellPersonId(String spID) {
        List list = new ArrayList();
        String query = "Select * from Product where SellPersonID=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, spID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public Account Login(String phone, String password) {
        String query = "Select * from Account where Phone=? and Password=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return null;
    }

    public Account checkPhoneExist(String phone) {
        String query = "Select * from Account where Phone=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<ProductOrders> getProduct(int id) {
        List<ProductOrders> list = new ArrayList<>();
        String query = "Select p.ProductID, p.ProductName, p.ProductImg,\n"
                + " sum(p.ProductPrice * o.Quantity) as price, o.OrderDate, o.ShippingDate,\n"
                + " o.ShippingAddress, o.Quantity, o.OrderID, o.IsDelivery\n"
                + " from [dbo].[Product] p INNER JOIN [dbo].[Order] o\n"
                + " on p.ProductID = o.ProductID\n"
                + " where o.UserID = ?\n"
                + " GROUP BY p.ProductID, p.ProductName, p.ProductImg,\n"
                + " p.ProductPrice, o.OrderDate, o.ShippingDate,\n"
                + " o.ShippingAddress, o.Quantity, o.OrderID, o.IsDelivery"
                ;
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductOrders(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getInt(10)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public void signUp(String firstName, String lastName,
            String phone, String pass) {
        String query = "insert into Account values (?,?,?,?,0)";

        try {

            // Throw the query statement to SQL Server
            ps = conn.prepareStatement(query);
            // Get the result of SQL Server ans store in rs
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, phone);
            ps.setString(4, pass);
            // do khong truyen du lieu nao ve
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Not Found entity!");
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();

        List<ProductOrders> list = dao.getProduct(1);
        for (ProductOrders o : list) {
            System.out.println(o);
        }
    }
}
