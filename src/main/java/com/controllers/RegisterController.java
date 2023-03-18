/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.AccountDAO;
import com.dao.RegisterDAO;
import com.models.Account;
import com.models.SecurityQuestion;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HN015T
 */
public class RegisterController extends HttpServlet {

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
            out.println("<title>Servlet RegisterController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
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

        RegisterDAO dao = new RegisterDAO(); //create object DAO 
        ArrayList<SecurityQuestion> listC = dao.getAllQuestion(); //call function and create object ArrayList
        request.setAttribute("listC", listC); //set attribute for list
        request.getRequestDispatcher("register.jsp").forward(request, response);

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
        if (request.getParameter("btnAdd") != null) { //check user click on register button
            String name = request.getParameter("txtName"); //get parameter
            String phone = request.getParameter("txtPhone");//get parameter
            String password = request.getParameter("txtPassword");//get parameter
            String gender = request.getParameter("gender");//get parameter
            String address = request.getParameter("txtAddress");//get parameter
            int sq_id = Integer.parseInt(request.getParameter("sqID"));//get parameter
            String answer_context = request.getParameter("txtAnswer");//get parameter

            RegisterDAO dao = new RegisterDAO(); //create object DAO
            Account acc = dao.checkPhoneNumber(phone); // call function 
            if (acc == null) {//check if account is correct 
                int count = dao.register(name, phone, password, gender, address, sq_id, answer_context);
                if (count > 0) {
                    response.sendRedirect("login");
                } else {
                    response.sendRedirect("register");
                }

            } else { // account is incorrect
                request.setAttribute("message", "Duplicate Phone number!");
                ArrayList<SecurityQuestion> listC = dao.getAllQuestion();
                request.setAttribute("listC", listC);
//                response.sendRedirect("register");
                request.getRequestDispatcher("register.jsp").forward(request, response);
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
