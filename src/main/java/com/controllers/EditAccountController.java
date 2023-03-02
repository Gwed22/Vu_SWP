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
import java.io.PrintWriter;
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
 * @author Vux
 */
public class EditAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditAccountController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditAccountController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ///KhachHang/Edit/123 => viewAllAccountController, Edit, 123
            int acc_id = Integer.parseInt(request.getParameter("id"));
            AccountDAO dao = new AccountDAO();
            Account acc = dao.getAccountByID(acc_id);

            ArrayList<Role> listR = dao.getAllRole();
            ArrayList<SecurityQuestion> listSQ = dao.getAllSQ();

            request.setAttribute("listRole", listR);
            request.setAttribute("listSQ", listSQ);
            request.setAttribute("acc", acc);

            request.getRequestDispatcher("editaccount.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditAccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("btnUpdate") != null) {
            try {
                //doi moi
                int acc_id = Integer.parseInt(request.getParameter("id"));
                int sq_id = Integer.parseInt(request.getParameter("sq_id"));
                int role_id = Integer.parseInt(request.getParameter("role_id"));
                String full_name = request.getParameter("username");
                String phone = request.getParameter("phone");
                String gender = request.getParameter("gender");
                String address = request.getParameter("address");
                String password = request.getParameter("password1");

                com.models.Account acc = new com.models.Account(acc_id, full_name, phone, password, gender, address, sq_id, role_id);
                AccountDAO dao = new AccountDAO();
                int count = dao.updateAccount(acc);
                if (count > 0) {
                    request.setAttribute("message", "Update Successful");
                    request.getRequestDispatcher("/allconsignment").forward(request, response);
                } else {
                    request.setAttribute("message", "Update Failed");
                    request.getRequestDispatcher("/allconsignment").forward(request, response);
                }

            } catch (SQLException ex) {
                Logger.getLogger(EditAccountController.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
