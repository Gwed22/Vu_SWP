/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * 
 * @author Do Huynh Anh Vu - CE171446 - Group3 - SE1605 - SWP391
 */
public class DeleteAccountController extends HttpServlet {


    /**
     * Delete an account with input id
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id")); //get id of account need delete
            AccountDAO dao = new AccountDAO();
            int count = dao.deleteAccount(id); //delete account in database
            if (count > 0) { //Return successful if delete successs
                request.setAttribute("message", "Delete Successful");
                request.getRequestDispatcher("/allaccount").forward(request, response); //forward
            } else { //Return failed if delete fail
                request.setAttribute("message", "Delete Failed");
                request.getRequestDispatcher("/allaccount").forward(request, response); //forward
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeleteAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
 }
}
