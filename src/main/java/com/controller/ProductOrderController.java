/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.DAO;
import com.dao.OrderDAO;
import com.models.Account;
import com.models.Order;
import com.models.Products;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class ProductOrderController extends HttpServlet {

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
            out.println("<title>Servlet ProductOrderController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductOrderController at " + request.getContextPath() + "</h1>");
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
            DAO dao = new DAO();
            String id = request.getParameter("pid");
            Products p = dao.getAllProductById(id);
            request.setAttribute("detail", p);
            request.getRequestDispatcher("shoppingcart.jsp").forward(request, response);
        
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
        if (request.getParameter("SendOrder") != null) {
            int productid = Integer.parseInt(request.getParameter("txtProductID"));
            int quantity = Integer.parseInt(request.getParameter("txtQuantity"));
            String address = request.getParameter("txtAddress");
            HttpSession session = request.getSession();
            Account user = (Account) session.getAttribute("acc");
            int UserID = user.getUserId();
            long millis = System.currentTimeMillis();
            Date orderdate = new Date(millis);
            String orderdatestring = orderdate.toString();

            Calendar c = Calendar.getInstance();
            c.setTime(orderdate);
            c.add(Calendar.DATE, 3);
            Date shippingdate = new Date(c.getTimeInMillis());
            String shippingdatestring = shippingdate.toString();

            OrderDAO dao = new OrderDAO();
            ResultSet rs = dao.getAll();
            int size = 0;
            try {
                while (rs.next()) {
                    size++;
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductOrderController.class.getName()).log(Level.SEVERE, null, ex);
            }
            size++;
            Order or = new Order(size, Date.valueOf(orderdatestring), Date.valueOf(shippingdatestring), address, 0, UserID, productid, quantity);
            int count = dao.addNew(or);
            if (count > 0) {
                response.sendRedirect("home");
            } else {
                response.sendRedirect("allproduct");
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
