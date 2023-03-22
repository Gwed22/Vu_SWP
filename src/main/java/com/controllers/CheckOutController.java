/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.OrderDAO;
import com.dao.OrderItemDAO;
import com.dao.ProductDAO;
import com.models.Account;
import com.models.Cart;
import com.models.Consignment;
import com.models.Item;
import com.models.Order;
import com.models.OrderItem;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class CheckOutController extends HttpServlet {

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
            out.println("<title>Servlet CheckOutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutController at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        String note = request.getParameter("txtNote");
        String address = request.getParameter("txtAddress");
        HttpSession session = request.getSession();
        Cart cart = null;
        OrderDAO odal = new OrderDAO();
        ProductDAO pdao = new ProductDAO();
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;

        } else {
            cart = new Cart();
        }
        Order or = new Order(note, address);
        Account acc = null;
        Object a = session.getAttribute("acc");
        if (a != null) {
            acc = (Account) a;
            odal.addOrder(acc, cart, or);
            List<Item> it = cart.getItems();
            for (Item item : it) {
                int con = pdao.getQuantityByID(item.getProduct().getConID());
                int quan = cart.getQuantityById(item.getProduct().getConID());
                pdao.updateQuantity(item.getProduct().getConID(), (con - quan));
            }
            response.sendRedirect("home");
            session.removeAttribute("cart");
            session.setAttribute("size", 0);
        } else {
            response.sendRedirect("login");
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
