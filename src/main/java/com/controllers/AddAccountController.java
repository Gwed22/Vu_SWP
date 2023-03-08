/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import com.models.Role;
import com.models.SecurityQuestion;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * @author Do Huynh Anh Vu - CE171446 - Group3 - SE1605 - SWP391
 */
public class AddAccountController extends HttpServlet {


    /**
     * Load data from database and forward to jsp 
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            AccountDAO dao = new AccountDAO();
            ArrayList<Role> listR = dao.getAllRole();  //get role list fro account
            ArrayList<SecurityQuestion> listSQ = dao.getAllSQ(); //get security question for account
            request.setAttribute("listRole", listR); //save to atrribute
            request.setAttribute("listSQ", listSQ);
            request.getRequestDispatcher("addaccount.jsp").forward(request, response); //forward to jsp
        } catch (SQLException ex) {
            Logger.getLogger(AddAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Get data from jsp then insert to database and return message
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("btnAdd") != null) {
            try {
                AccountDAO dao = new AccountDAO();
                //Them moi
                int sq_id = Integer.parseInt(request.getParameter("sq_id"));
                int role_id = Integer.parseInt(request.getParameter("role_id"));
                String full_name = request.getParameter("username");
                String phone = request.getParameter("phone");
                String gender = request.getParameter("gender");                   //Get data that enter in addaccount.jsp
                String address = request.getParameter("address");
                String password = request.getParameter("password1");

                com.models.Account acc = new com.models.Account(sq_id,full_name, phone, password, gender, address, sq_id, role_id);
                //create new account with data above
                int count = dao.addNewAccount(acc); //insert into database
                if (count > 0) { //Return succesful message if insert success
                    request.setAttribute("message", "Add Successful");
                    request.getRequestDispatcher("/allaccount").forward(request, response);
                } else { //Return failed if insert fail
                    request.setAttribute("message", "Add Failed");
                    request.getRequestDispatcher("/allaccount").forward(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(AddAccountController.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
