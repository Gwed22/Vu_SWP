/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.RegisterDAO;
import com.models.Account;
import com.models.SecurityQuestion;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author HN015T
 */
public class ForgotPasswordController extends HttpServlet {

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
            out.println("<title>Servlet ForgotPasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPasswordController at " + request.getContextPath() + "</h1>");
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
        RegisterDAO dao = new RegisterDAO(); // create object DAO
        ArrayList<SecurityQuestion> listC = dao.getAllQuestion(); //call function and create object ArrayList
        request.setAttribute("listC", listC); //set attribute for lists
        request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
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
        int accountID = Integer.parseInt(request.getParameter("accountID"));//get parameter
        String answer_context = request.getParameter("txtAnswer");//get parameter
        String question = null; //create object question = null
        RegisterDAO dao = new RegisterDAO(); //create object DAO
        request.setAttribute("id", accountID); // set attribute for accountID

        Account acc = dao.checkAccount(accountID, answer_context); //call functions
        if (acc != null) { //check if the answer is correct
            request.setAttribute("acc", acc);
            request.setAttribute("id", accountID);
            request.getRequestDispatcher("resetpassword.jsp").forward(request, response);
        } else { // if question is incorrect, then recheck the answer one more time
            question = dao.getQuestion(accountID);//call function
            acc = dao.checkAccount(accountID, answer_context); //call function
            request.setAttribute("q", question); //set attribute for question
            request.setAttribute("id", accountID);//set attribute for accountID
            if (acc != null) { //recheck the answer of user
                request.setAttribute("acc", acc); //set attribute for account
                request.setAttribute("id", accountID);//set attribute for accountID
                request.getRequestDispatcher("resetpassword.jsp").forward(request, response);
//                request.setAttribute("message", "Your answer is incorrect!");
//                response.sendRedirect("forgotpassword");
//                request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
            } else {

                request.setAttribute("message", "Your answer is incorrect!");
                request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
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
