/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DAO;
import com.dao.ProductDAO;
import com.models.Products;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class EditProductController extends HttpServlet {

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
            out.println("<title>Servlet EditProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProductController at " + request.getContextPath() + "</h1>");
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
        if (request.getParameter("id") != null) {
            String id = request.getParameter("id");
            DAO dao = new DAO();
            Products pro = dao.getAllProductById(id);
            HttpSession session = request.getSession();
            session.setAttribute("p", pro);
            request.getRequestDispatcher("/product-edit.jsp").forward(request, response);
        }
        if (request.getParameter("pid") != null) {
            int pid = Integer.parseInt(request.getParameter("pid"));
            ProductDAO dao = new ProductDAO();
            dao.delete(pid);
            response.sendRedirect(request.getContextPath() + "/productlist");
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
        if (request.getParameter("btnEdit") != null) {
            int id = Integer.parseInt(request.getParameter("txtID"));
            String name = request.getParameter("txtName");
            float price = Float.parseFloat(request.getParameter("txtPrice"));
            String img = request.getParameter("txtImg");
            int quantity = Integer.parseInt(request.getParameter("txtQuantity"));
            int category = Integer.parseInt(request.getParameter("Category"));
            String desc = request.getParameter("txtDesc");

            Products pro = new Products(id, name, price, desc, img, category, quantity);
            ProductDAO dao = new ProductDAO();
            int count = dao.update(pro);
            if (count > 0) {
                response.sendRedirect("/productlist");
            } else {
                response.sendRedirect("/productedit");
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
