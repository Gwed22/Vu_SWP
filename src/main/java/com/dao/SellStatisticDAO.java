/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class SellStatisticDAO {

    private Connection conn = null;

    public SellStatisticDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet getAllToChart() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select ca.c_name, SUM(oi.quantity) as quantity from Category ca\n"
                    + "left join Consignment c on c.c_id = ca.c_id\n"
                    + "left join OrderItem oi on c.con_id = oi.con_id\n"
                    + "left join [Order] o on o.o_id = oi.o_id\n"
                    + "group by ca.c_name");
        } catch (SQLException ex) {
            Logger.getLogger(SellStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
