/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import com.models.Account;
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
 *
 * @author Do Huynh Anh Vu - CE171446 - Group3 - SE1605 - SWP391
 */
public class EditAccountController extends HttpServlet {

    /**
     * Get info of account need to edit
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int acc_id = Integer.parseInt(request.getParameter("id")); //get account id
            AccountDAO dao = new AccountDAO();
            Account acc = dao.getAccountByID(acc_id);  // get account by account id

            ArrayList<Role> listR = dao.getAllRole();  //get all role for account
            ArrayList<SecurityQuestion> listSQ = dao.getAllSQ(); //get all security question for account

            request.setAttribute("listRole", listR);
            request.setAttribute("listSQ", listSQ);  //save these list in attribute
            request.setAttribute("acc", acc);

            request.getRequestDispatcher("editaccount.jsp").forward(request, response);  //forward
        } catch (SQLException ex) {
            Logger.getLogger(EditAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Edit account with input values
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int acc_id = Integer.parseInt(request.getParameter("id"));
            int sq_id = Integer.parseInt(request.getParameter("sq_id"));
            int role_id = Integer.parseInt(request.getParameter("role_id"));
            String full_name = request.getParameter("username");                  //get edit values for account from input form
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String password = request.getParameter("password1");

            com.models.Account acc = new com.models.Account(acc_id, full_name, phone, password, gender, address, sq_id, role_id);
            //create new account with these values
            AccountDAO dao = new AccountDAO();
            int count = dao.updateAccount(acc); // update account in database
            if (count > 0) { //Return succesful message if update success
                request.setAttribute("message", "Update Successful");
                request.getRequestDispatcher("/allaccount").forward(request, response);
            } else { //Return failed if update fail
                request.setAttribute("message", "Update Failed");
                request.getRequestDispatcher("/allaccount").forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(EditAccountController.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
}
