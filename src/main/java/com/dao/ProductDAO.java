/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Brand;
import com.models.Category;
import com.models.Consignment;
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
public class ProductDAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public ProductDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from product p\n"
                    + "join consignment c \n"
                    + "on p.con_id = c.con_id");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public List<Products> getAllProduct() {
        List list = new ArrayList();
        String query = "select p.product_id, p.con_id, p.product_price,p.product_desc, c.product_Name, c.product_Img\n"
                + "from Product p\n"
                + "join Consignment c\n"
                + "on c.con_id = p.con_id";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
//                list.add(new Products(rs.getInt(1), rs.getInt(2), rs.getFloat(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;

    }

    

    public List<Products> getIncre() {
        List list = new ArrayList();
        String query = "select p.product_id, p.con_id, p.product_price,p.product_desc, c.product_Name, c.product_Img\n"
                + "from Product p\n"
                + "join Consignment c\n"
                + "on c.con_id = p.con_id\n"
                + "order by product_price ASC";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
//                list.add(new Products(rs.getInt(1), rs.getInt(2), rs.getFloat(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;

    }

    public List<Products> getDecre() {
        List list = new ArrayList();
        String query = "select p.product_id, p.con_id, p.product_price,p.product_desc, c.product_Name, c.product_Img\n"
                 + "from Product p\n"
                + "join Consignment c\n"
                + "on c.con_id = p.con_id\n"
                + "order by product_price DESC";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
//                list.add(new Products(rs.getInt(1), rs.getInt(2), rs.getFloat(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;

    }

    public List<Products> searchByName(String txtSearch) {
        List list = new ArrayList();
        String query = "select p.product_id, p.con_id, p.product_price,p.product_desc, c.product_Name, c.product_Img\n"
                + "from Consignment c\n"
                + "join Product p\n"
                + "on c.con_id = p.con_id\n"
                + "where c.product_name like ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
//                list.add(new Products(rs.getInt(1), rs.getInt(2), rs.getFloat(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }
    
     public List<Brand> getAllBrand() {
        List list = new ArrayList();
        String query = "select * from dbo.Brand";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Brand(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public List<Category> getAllCate() {
        List list = new ArrayList();
        String query = "select * from dbo.Category";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;

    }
    public static void main(String[] args) {
        ProductDAO d = new ProductDAO();
        List<Brand> list = d.getAllBrand();
        for (Brand c: list) {
            System.out.println(c);
        }
    }
    
}
