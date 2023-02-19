/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAOs;

import com.db.DBConnection;
import com.models.Consignment;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
            rs = st.executeQuery("select c.product_img, c.product_name, ca.c_name, b.brand_name, c.con_price, c.con_quantity, c.import_date \n"
                    + "from Consignment c inner join Brand b on c.brand_id = b.brand_id \n"
                    + "inner join Category ca on c.c_id = ca.c_id");
        } catch (SQLException ex) {
            Logger.getLogger(ConsignmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
