/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class AllAccountController extends HttpServlet {

    /**
     *  Get all account in database and forward to view page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AccountDAO dao = new AccountDAO();
            ResultSet rs = dao.getAllAccount(); //Get all account from database to result set 
            request.setAttribute("rs", rs); //save result set value
            request.getRequestDispatcher("allaccount.jsp").forward(request, response); //forward
        } catch (SQLException ex) {
            Logger.getLogger(AllAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     /**
     *  Get all account in database and forward to view page
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AccountDAO dao = new AccountDAO();
            ResultSet rs = dao.getAllAccount(); //Get all account from database to result set 
            request.setAttribute("rs", rs); //save result set value
            request.getRequestDispatcher("allaccount.jsp").forward(request, response); //forward
        } catch (SQLException ex) {
            Logger.getLogger(AllAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
