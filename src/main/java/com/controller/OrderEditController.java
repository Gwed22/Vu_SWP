/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.OrderDAO;
import com.models.Order;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;

/**
 *
 * @author PC
 */
public class OrderEditController extends HttpServlet {

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
            out.println("<title>Servlet OrderEditController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderEditController at " + request.getContextPath() + "</h1>");
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
        if (request.getParameter("oid") != null) {
            int oid = Integer.parseInt(request.getParameter("oid"));
            OrderDAO dao = new OrderDAO();
            dao.delete(oid);
            response.sendRedirect(request.getContextPath() + "/orderlist");
        }
        if (request.getParameter("id") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            OrderDAO dao = new OrderDAO();
            Order or = dao.getOrder(id);
            HttpSession session = request.getSession();
            session.setAttribute("o", or);
            request.getRequestDispatcher("orderedit.jsp").forward(request, response);
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
            int orderid = Integer.parseInt(request.getParameter("txtOrderID"));
            String orderdate = request.getParameter("txtOrderDate");
            String shippingdate = request.getParameter("txtShippingDate");
            String address = request.getParameter("txtAddress");
            int stt = Integer.parseInt(request.getParameter("txtStt"));
            int userid = Integer.parseInt(request.getParameter("txtUserID"));
            int productid = Integer.parseInt(request.getParameter("txtProductID"));
            int quantity = Integer.parseInt(request.getParameter("txtQuantity"));

            Order or = new Order(orderid, Date.valueOf(orderdate), Date.valueOf(shippingdate), address, stt, userid, productid, quantity);
            OrderDAO dao = new OrderDAO();
            int count = dao.update(or);
            if (count > 0) {
                response.sendRedirect("orderlist");
            } else {
                response.sendRedirect("orderlist");
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
