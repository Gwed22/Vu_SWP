/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Products;
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
public class ProductDAO {

    private Connection conn = null;

    public ProductDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select p.ProductID, p.ProductImg as ProductImg, p.ProductName as ProductName, p.ProductPrice as ProductPrice, \n"
                    + "p.ProductDesc as ProductDesc, c.CategoryName as CategoryName, p.Quantity as Quantity \n"
                    + "from Product p inner join PCategory c\n"
                    + "on p.CategoryID = c.CategoryID");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Products getProducts(int id) {
        Products ad = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Product where ProductID=?");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                ad = new Products(rs.getInt("ProductID"), rs.getString("ProductName"), rs.getFloat("ProductPrice"), rs.getString("ProductDesc"), rs.getString("ProductImg"), rs.getInt("CategoryID"), rs.getInt("SellPersonID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ad;
    }

    public int addNew(Products pro) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Product values(?,?,?,?,?,?,?,?)");
            pst.setInt(1, pro.getProductID());
            pst.setString(2, pro.getProductName());
            pst.setFloat(3, pro.getProductPrice());
            pst.setString(4, pro.getProductDesc());
            pst.setString(5, pro.getProductImg());
            pst.setInt(6, pro.getC_Id());
            pst.setInt(7, pro.getSellPersonID());
            pst.setInt(8, pro.getQuantity());
            count = pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int update(Products pro) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Product set ProductName=?, ProductPrice=?, ProductDesc=?, ProductImg=?, CategoryID=?, SellPersonID=?, Quantity=? where ProductID=?");
            pst.setString(1, pro.getProductName());
            pst.setFloat(2, pro.getProductPrice());
            pst.setString(3, pro.getProductDesc());
            pst.setString(4, pro.getProductImg());
            pst.setInt(5, pro.getC_Id());
            pst.setInt(6, pro.getSellPersonID());
            pst.setInt(7, pro.getQuantity());
            pst.setInt(8, pro.getProductID());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int delete(int id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Product where ProductID=?");
            pst.setInt(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
