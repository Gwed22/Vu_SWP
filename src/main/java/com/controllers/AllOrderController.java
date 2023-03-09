/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Do Huynh Anh Vu - CE171446 - Group3 - SE1605 - SWP391
 */
public class AllOrderController extends HttpServlet {

    /**
     * Get all order in database and forward to view page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO dao = new OrderDAO();
        ResultSet rs = dao.getAllOrder();  //Get all order from database to result set
        request.setAttribute("rs", rs); //Save result set to atrribute to view in jsp
        request.getRequestDispatcher("allorder.jsp").forward(request, response); // forward to jsp file 
    }

    /**
     * Get all order in database and forward to view page
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO dao = new OrderDAO();
        ResultSet rs = dao.getAllOrder();  //Get all order from database to result set
        request.setAttribute("rs", rs); //Save result set to atrribute to view in jsp
        request.getRequestDispatcher("allorder.jsp").forward(request, response); // forward to jsp file 
    }
}
