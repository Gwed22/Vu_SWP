/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Consignment;
import com.models.Sale;
import java.sql.Connection;
import java.sql.Date;
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
public class SaleDAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public SaleDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllSale() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT s.sale_id, c.product_name, c.productPrice, s.sale_price, s.sale_start_date, s.sale_end_date, s.sale_description\n"
                    + "FROM Sale s INNER JOIN Consignment c ON c.con_id=s.con_id");
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public List<Sale> getSaleProduct() {
        List<Sale> list = new ArrayList<>();
        try {
            String query = "SELECT  s.sale_start_date, s.sale_end_date,s.sale_price, s.sale_description,c.con_id, c.product_name,c.product_img, c.productPrice\n"
                    + "FROM Sale s INNER JOIN Consignment c ON c.con_id= s.con_id";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sale(rs.getDate(1), rs.getDate(2), rs.getFloat(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getFloat(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Float getPriceById(int id) {
        
        String query = "SELECT sale_price from Sale where con_id = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                return rs.getFloat(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ResultSet searchSale(String query) {
        ResultSet rs = null;
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT s.sale_id, c.product_name, c.productPrice, s.sale_price, s.sale_start_date, s.sale_end_date, s.sale_description\n"
                    + "FROM SALE s INNER JOIN Consignment c ON s.con_id=c.con_id\n"
                    + "WHERE c.product_name like '%" + query + "%'");
            rs = pst.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ArrayList<Consignment> getAllConsignment() {
        ArrayList<Consignment> list = new ArrayList<>();
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Consignment");
            while (rs.next()) {
                Consignment con = new Consignment(rs.getInt("con_id"), rs.getString("product_name"), rs.getInt("c_id"), rs.getInt("con_quantity"), rs.getInt("brand_id"), rs.getFloat("con_price"), rs.getDate("import_date"), rs.getString("product_img"), rs.getFloat("productPrice"), rs.getString("productDesc"));
                list.add(con);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int addSale(Date sale_start_date, Date sale_end_date, float sale_price, String sale_description, int con_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Sale values (?,?,?,?,?)");
            pst.setDate(1, sale_start_date);
            pst.setDate(2, sale_end_date);
            pst.setFloat(3, sale_price);
            pst.setString(4, sale_description);
            pst.setInt(5, con_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int deleteSale(int sale_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Update Sale set sale_price = 0 where sale_id = ?");
            pst.setInt(1, sale_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public Sale getSaleByID(int sale_id) {
        Sale s = null;
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT s.sale_id, s.sale_start_date, s.sale_end_date, s.sale_price, s.sale_description, s.con_id \n"
                    + "FROM Sale s\n"
                    + "WHERE s.sale_id=?");
            pst.setInt(1, sale_id);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                s = new Sale(rs.getInt("sale_id"), rs.getDate("sale_start_date"), rs.getDate("sale_end_date"), rs.getFloat("sale_price"), rs.getString("sale_description"), rs.getInt("con_id"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int editSale(int sale_id, Date sale_start_date, Date sale_end_date, float sale_price, String sale_description, int con_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Update Sale set sale_start_date=?, sale_end_date=?, sale_price=?, sale_description=?, con_id=? where sale_id=?");
            pst.setDate(1, sale_start_date);
            pst.setDate(2, sale_end_date);
            pst.setFloat(3, sale_price);
            pst.setString(4, sale_description);
            pst.setInt(5, con_id);
            pst.setInt(6, sale_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SaleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public static void main(String[] args) {
        SaleDAO dao = new SaleDAO();
        List<Sale> sale = dao.getSaleProduct();
        for (Sale sale1 : sale) {
            System.out.println(sale1);
        }
            
        
    }
}
