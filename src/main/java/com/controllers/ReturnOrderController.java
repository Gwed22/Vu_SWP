/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.OrderDAO;
import com.models.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author vudha
 */
public class ReturnOrderController extends HttpServlet {


    /**
     *  Update status of order to Return
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        OrderDAO dao = new OrderDAO();
        Order or = dao.getOrder(id);

      
        Date o_date = or.getOrderDate();
        Date delivery_date = or.getDeliveryDate();
        String address = or.getAddress();
        String note = or.getNote();
        int accid = or.getAccountID();
        
        com.models.Order or1 = new com.models.Order(id, o_date , delivery_date, "Return", note, accid, address);
        dao.updateOrder(or1);
        request.getRequestDispatcher("/allorder").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
