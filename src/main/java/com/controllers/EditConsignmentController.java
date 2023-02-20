/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.daos.ConsignmentDAO;
import com.models.Brand;
import com.models.Category;
import com.models.Consignment;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class EditConsignmentController extends HttpServlet {

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
            out.println("<title>Servlet EditConsignmentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditConsignmentController at " + request.getContextPath() + "</h1>");
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
        int id = Integer.parseInt(request.getParameter("id"));

        ConsignmentDAO dao = new ConsignmentDAO();
        Consignment c = dao.getConsignment(id);
        ArrayList<Category> listC = dao.getAllCategory();
        ArrayList<Brand> listB = dao.getAllBrand();
        request.setAttribute("c", c);
        request.setAttribute("listC", listC);
        request.setAttribute("listB", listB);
        request.getRequestDispatcher("editconsignment.jsp").forward(request, response);
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
        if (request.getParameter("btnEdit") != null) {
            int id = Integer.parseInt(request.getParameter("txtID"));
            String name = request.getParameter("txtName");
            int cid = Integer.parseInt(request.getParameter("Category"));
            int quantity = Integer.parseInt(request.getParameter("txtQuantity"));
            int bid = Integer.parseInt(request.getParameter("Brand"));
            float price = Float.parseFloat(request.getParameter("txtPrice"));
            String date = request.getParameter("txtDate");
            String img = request.getParameter("txtImg");

            ConsignmentDAO dao = new ConsignmentDAO();
            int count = dao.updateConsignment(id, name, cid, quantity, bid, price, date, img);
            if (count > 0) {
                request.setAttribute("message", "Update Successful");
                request.getRequestDispatcher("/allconsignment").forward(request, response);
            } else {
                request.setAttribute("message", "Update Failed");
                request.getRequestDispatcher("/allconsignment").forward(request, response);
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
