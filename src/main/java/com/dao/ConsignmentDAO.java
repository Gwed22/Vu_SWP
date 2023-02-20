/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Brand;
import com.models.Category;
import com.models.Consignment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class ConsignmentDAO {

    private Connection conn = null;

    public ConsignmentDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select c.con_id, c.product_img, c.product_name, ca.c_name, b.brand_name, c.con_price, c.con_quantity, c.import_date \n"
                    + "from Consignment c inner join Brand b on c.brand_id = b.brand_id \n"
                    + "inner join Category ca on c.c_id = ca.c_id");
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet searchConsign(String query) {
        ResultSet rs = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select c.con_id, c.product_img, c.product_name, ca.c_name, b.brand_name, c.con_price, c.con_quantity, c.import_date \n"
                    + "from Consignment c inner join Brand b on c.brand_id = b.brand_id \n"
                    + "inner join Category ca on c.c_id = ca.c_id where c.product_name like ?");
            pst.setString(1, "%" + query + "%");
            rs = pst.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Category");
            while (rs.next()) {
                Category c = new Category(rs.getInt("c_id"), rs.getString("c_name"));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Brand> getAllBrand() {
        ArrayList<Brand> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Brand");
            while (rs.next()) {
                Brand b = new Brand(rs.getInt("brand_id"), rs.getString("brand_name"));
                list.add(b);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int addConsignment(String name, int cid, int quantity, int bid, float price, String date, String img) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Consignment values (?,?,?,?,?,?,?)");
            pst.setString(1, name);
            pst.setInt(2, cid);
            pst.setInt(3, quantity);
            pst.setInt(4, bid);
            pst.setFloat(5, price);
            pst.setString(6, date);
            pst.setString(7, img);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int deleteConsign(int id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Consignment where con_id=?");
            pst.setInt(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public Consignment getConsignment(int id) {
        Consignment c = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Consignment where con_id=?");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                c = new Consignment(rs.getInt("con_id"), rs.getString("product_name"), rs.getInt("c_id"), rs.getInt("con_quantity"), rs.getInt("brand_id"), rs.getFloat("con_price"), rs.getDate("import_date"), rs.getString("product_img"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }
    
    public int updateConsignment(int id, String name, int cid, int quantity, int bid, float price, String date, String img) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Consignment set product_name=?, c_id=?, con_quantity=?, brand_id=?, con_price=?, import_date=?, product_img=? where con_id=?");
            pst.setString(1, name);
            pst.setInt(2, cid);
            pst.setInt(3, quantity);
            pst.setInt(4, bid);
            pst.setFloat(5, price);
            pst.setString(6, date);
            pst.setString(7, img);
            pst.setInt(8, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
