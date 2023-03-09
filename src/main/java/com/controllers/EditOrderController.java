/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import com.dao.OrderDAO;
import com.models.Account;
import com.models.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Do Huynh Anh Vu - CE171446 - Group3 - SE1605 - SWP391
 */
public class EditOrderController extends HttpServlet {

    /**
     * Load data of order need to edit
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id")); //get id of order need edit
            OrderDAO dao = new OrderDAO();
            Order or = dao.getOrder(id);  // get order by order id
            AccountDAO dao1 = new AccountDAO();
            Account acc = dao1.getAccountByID(or.getAccountID()); //get account by account id save in order
            request.setAttribute("acc", acc);   //save these data to attribute

            request.setAttribute("o", or);
            request.getRequestDispatcher("/editorder.jsp").forward(request, response); //forward
        } catch (SQLException ex) {
            Logger.getLogger(EditOrderController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Edit order and update in database
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("btnUpdate") != null) {
            //doi moi
            String o_id = request.getParameter("o_id");
            String o_date = request.getParameter("o_date");
            String delivery_date = request.getParameter("delivery_date");  //get edit data for order from input form
            String status = request.getParameter("status");
            String note = request.getParameter("note");

            OrderDAO dao = new OrderDAO();
            Order o = dao.getOrder(Integer.parseInt(o_id));  //get order from order id to get account name of the order

            String account_id = request.getParameter("account_id");
            String address = request.getParameter("address");
            com.models.Order or = new com.models.Order(Integer.parseInt(o_id), Date.valueOf(o_date), Date.valueOf(delivery_date), status, note, o.getAccountID(), address);
            int count = dao.updateOrder(or);   //update order in database
            if (count > 0) { //Return succesful message if update success
                request.setAttribute("message", "Update Successful");
                request.getRequestDispatcher("/allorder").forward(request, response);
            } else { //Return failed if update fail
                request.setAttribute("message", "Update Failed");
                request.getRequestDispatcher("/allorder").forward(request, response);
            }
        }
    }
}
