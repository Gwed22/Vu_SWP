/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
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
public class ImportStatisticDAO {

    private Connection conn = null;

    public ImportStatisticDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllToChart() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select ca.c_id, ca.c_name, SUM(i.import_quantity) as quantity from Category ca\n"
                    + "left join Consignment c\n"
                    + "on ca.c_id = c.c_id\n"
                    + "left join ImportStatistic i\n"
                    + "on c.con_id = i.con_id\n"
                    + "group by ca.c_id, ca.c_name");
        } catch (SQLException ex) {
            Logger.getLogger(ImportStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet getAllInventory() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select product_img, product_name, con_quantity from Consignment\n"
                    + "where con_quantity > 0\n"
                    + "order by con_quantity desc");
        } catch (SQLException ex) {
            Logger.getLogger(ImportStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int addImportStatistic(int conid, String date, int quantity) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into ImportStatistic values (?,?,?)");
            pst.setInt(1, conid);
            pst.setString(2, date);
            pst.setInt(3, quantity);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ImportStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int getConIDForStatistic(String name, String img) {
        int conID = -1;
        ResultSet rs = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select con_id from Consignment\n"
                    + "where product_name = ?\n"
                    + "and product_img = ?");
            pst.setString(1, name);
            pst.setString(2, img);
            rs = pst.executeQuery();
            while (rs.next()) {                
                conID = rs.getInt("con_id");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImportStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conID;
    }

}
