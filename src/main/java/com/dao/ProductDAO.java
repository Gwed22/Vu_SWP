/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Brand;
import com.models.Category;
import com.models.Consignment;
import com.models.Order;
import com.models.OrderItem;
import com.models.OrderProducts;
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
            rs = st.executeQuery("select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc\n"
                    + "from Consignment c");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public List<Products> getAllProduct() {
        List list = new ArrayList();
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price\n"
                + "from Consignment c left join Sale s on c.con_id = s.con_id where c.con_quantity > 0";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;

    }

    public List<Products> searchByName(String txtSearch) {
        List list = new ArrayList();
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price\n"
                + "                from Consignment c left join Sale s on c.con_id = s.con_id\n"
                + "                where c.product_name like ? AND c.con_quantity > 0";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6)));
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

    public Products getProductById(int id) {
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price\n"
                + "from Consignment c left join Sale s on s.con_id = c.con_id \n"
                + "where c.con_id = ? ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return null;
    }

    public List<Products> getProductsByCate(int cid) {
        List<Products> list = new ArrayList<>();
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price \n"
                + "from Consignment c \n"
                + "left join Sale s \n"
                + "on s.con_id = c.con_id\n"
                + "join Category ca \n"
                + "on c.c_id = ca.c_id\n"
                + "where c.c_id = ? AND c.con_quantity > 0";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public List<Products> getProductsPriceDESC(int cid) {
        List<Products> list = new ArrayList<>();
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price \n"
                + "                from Consignment c\n"
                + "                left join Sale s\n"
                + "                on s.con_id = c.con_id\n"
                + "                where c.c_id = ? AND c.con_quantity > 0\n"
                + "                order by (c.productPrice) DESC ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public List<Products> getProductsPriceASC(int cid) {
        List<Products> list = new ArrayList<>();
        String query = "select c.con_id, c.product_name, c.product_img, c.productPrice, c.productDesc, s.sale_price \n"
                + "                from Consignment c\n"
                + "                left join Sale s\n"
                + "                on s.con_id = c.con_id\n"
                + "                where c.c_id = ? AND c.con_quantity > 0\n"
                + "                order by (c.productPrice) ASC ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5), rs.getFloat(6)));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return list;
    }

    public int getQuantityByID(int cid) {
        String query = "select con_quantity from Consignment where con_id = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (rs.getInt(1));
            }
        } catch (Exception e) {
            System.out.println("Not found emptity");
        }
        return 0;
    }

    public int updateQuantity(int cid, int quantity) {
        int update = 0;
        String query = "update Consignment set con_quantity = ? where con_id = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, cid);
            update = ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Not found emptity");

        }
        return update;

    }

    public static void main(String[] args) {

    }

}
