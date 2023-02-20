/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.daos.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.models.Order;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;

/**
 *
 * @author Vux
 */
public class viewAllOrderController extends HttpServlet {

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
            out.println("<title>Servlet KhachHang</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet KhachHang at " + request.getContextPath() + "</h1>");
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
        String path = request.getRequestURI(); //lay duong dan
        if (path.endsWith("/Order")) {
            request.getRequestDispatcher("/orderlist.jsp").forward(request, response);
//        } else if (path.endsWith("/Order/Add")) {
//            request.getRequestDispatcher("/addorder.jsp").forward(request, response);
        } else if (path.startsWith("/Order/Update/")) {
            ///KhachHang/Edit/123 => viewAllAccountController, Edit, 123
            String[] s = path.split("/");
            String o_id = s[s.length - 1];
            OrderDAO dao = new OrderDAO();
            Order or = dao.getOrder(Integer.parseInt(o_id));
            if (or == null) {
                response.sendRedirect("/Order");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("or_info", or);
                request.getRequestDispatcher("/orderedit.jsp").forward(request, response);
            }
//        } else if (path.startsWith("/Account/Delete")) {
//            try {
//                // /KhachHang/Edit/123 => viewAllAccountController, Edit, 123
//                String[] s = path.split("/");
//                String acc_id = s[s.length - 1];
//                AccountDAO dao = new AccountDAO();
//                Account acc = dao.getAccountByID(Integer.parseInt(acc_id));
//                dao.deleteAccount(acc_id);
//                response.sendRedirect("/Account");
//            } catch (SQLException ex) {
//                Logger.getLogger(viewAllOrderController.class.getName()).log(Level.SEVERE, null, ex);
//            }
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
//        if (request.getParameter("btnAdd") != null) {
//            try {
//                AccountDAO dao = new AccountDAO();
//                //Them moi
//                String acc_id = request.getParameter("id");
//                int sq_id = 1;
//                int role_id = 1;
//                String full_name = request.getParameter("username");
//                String phone = request.getParameter("phone");
//                String gender = request.getParameter("rdoGD");
//                String address = request.getParameter("address");
//                String password = request.getParameter("password1");
//
//                com.models.Account acc = new com.models.Account(Integer.parseInt(acc_id), full_name, phone, password, gender, address, sq_id, role_id);
//
//                int count = dao.addNewAccount(acc);
//                if (count > 0) {
//                    response.sendRedirect(request.getContextPath() + "/Account");
//                } else {
//                    response.sendRedirect(request.getContextPath() + "/Account/Add");
//
//                }
//            } catch (SQLException ex) {
//                Logger.getLogger(viewAllOrderController.class
//                        .getName()).log(Level.SEVERE, null, ex);
//            }
//        }
        if (request.getParameter("btnUpdate") != null) {
            //doi moi
            String o_id = request.getParameter("o_id");
            String o_date = request.getParameter("o_date");
            String delivery_date = request.getParameter("delivery_date");
            String status = request.getParameter("status");
            String note = request.getParameter("note");
            String account_id = request.getParameter("account_id");
            String address = request.getParameter("address");
            com.models.Order or = new com.models.Order(Integer.parseInt(o_id), Date.valueOf(o_date), Date.valueOf(delivery_date), status, note, Integer.parseInt(account_id), address);
            OrderDAO dao = new OrderDAO();
            dao.updateOrder(or);
            response.sendRedirect("/Order");
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
