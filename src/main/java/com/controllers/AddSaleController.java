/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.SaleDAO;
import com.models.Consignment;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class AddSaleController extends HttpServlet {

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
            out.println("<title>Servlet AddSaleController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSaleController at " + request.getContextPath() + "</h1>");
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
        SaleDAO dao = new SaleDAO();
        ArrayList<Consignment> listCon = dao.getAllConsignment();
        request.setAttribute("listCon", listCon);
        request.getRequestDispatcher("saleadd.jsp").forward(request, response);
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
        if (request.getParameter("btnAdd") != null) {
            int con_id = Integer.parseInt(request.getParameter("txtConID"));
            Date sale_start_date = Date.valueOf(request.getParameter("txtSaleStartDate"));
            Date sale_end_date = Date.valueOf(request.getParameter("txtSaleEndDate"));
            float sale_price = Float.parseFloat(request.getParameter("txtSalePrice"));
            String sale_description = request.getParameter("txtDesc");

            SaleDAO dao = new SaleDAO();
            int count = dao.addSale(sale_start_date, sale_end_date, sale_price, sale_description, con_id);
            if (count > 0) {
                request.setAttribute("message", "Add Successful");
                request.getRequestDispatcher("/salelist").forward(request, response);
            } else {
                request.setAttribute("message", "Add Failed");
                request.getRequestDispatcher("/salelist").forward(request, response);
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
