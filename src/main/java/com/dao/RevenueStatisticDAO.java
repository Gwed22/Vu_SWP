/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.IncomeSpendingDetail;
import com.models.RevenueStatistic;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class RevenueStatisticDAO {

    private Connection conn = null;

    public RevenueStatisticDAO() {
        conn = DBConnection.getConnection();
    }

    public ArrayList<RevenueStatistic> getAllToChart() {
        ResultSet rs = null;
        ArrayList<RevenueStatistic> list = new ArrayList<>();
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select o_date, SUM(totalPrice) as totalPrice from [Order]\n"
                    + "where totalPrice > 0 group by o_date order by o_date asc");
            while (rs.next()) {
                list.add(new RevenueStatistic(rs.getDate("o_date"), rs.getFloat("totalPrice")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RevenueStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<RevenueStatistic> searchToChart(String startDate, String endDate) {
        ResultSet rs = null;
        ArrayList<RevenueStatistic> list = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement("select o_date, SUM(totalPrice) as totalPrice from [Order]\n"
                    + "where totalPrice > 0 \n"
                    + "and o_date between ? and ? group by o_date order by o_date asc");
            pst.setString(1, startDate);
            pst.setString(2, endDate);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new RevenueStatistic(rs.getDate("o_date"), rs.getFloat("totalPrice")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RevenueStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<RevenueStatistic> getSpending() {
        ResultSet rs = null;
        ArrayList<RevenueStatistic> list = new ArrayList<>();
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select i.date, SUM (i.import_quantity * c.con_price) as spending \n"
                    + "from ImportStatistic i inner join Consignment c \n"
                    + "on i.con_id = c.con_id  group by i.date order by i.date asc");
            while (rs.next()) {
                list.add(new RevenueStatistic(rs.getDate("date"), rs.getFloat("spending")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RevenueStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<IncomeSpendingDetail> getIncomDetailByDate(String date) {
        ResultSet rs = null;
        ArrayList<IncomeSpendingDetail> list = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement("select c.product_name, oi.quantity, oi.productPrice * oi.quantity as total from [Order] o \n"
                    + "inner join OrderItem oi on o.o_id = oi.o_id\n"
                    + "inner join Consignment c on oi.con_id = c.con_id\n"
                    + "where o_date = ?");
            pst.setString(1, date);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new IncomeSpendingDetail(rs.getString("product_name"), rs.getInt("quantity"), rs.getFloat("total")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RevenueStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<IncomeSpendingDetail> getSpendingDetailByDate(String date) {
        ResultSet rs = null;
        ArrayList<IncomeSpendingDetail> list = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement("select c.product_name, i.import_quantity as quantity, i.import_quantity*c.con_price as total from ImportStatistic i\n"
                    + "inner join Consignment c on i.con_id = c.con_id\n"
                    + "where date = ?");
            pst.setString(1, date);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new IncomeSpendingDetail(rs.getString("product_name"), rs.getInt("quantity"), rs.getFloat("total")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RevenueStatisticDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
