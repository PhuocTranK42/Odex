/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org.admin.orderDetail;

import Odex.org.BaseServlet;
import Odex.org.admin.AdminServlet;
import Odex.org.dao.DatabaseDao;
import Odex.org.dao.OrderDetailDao;
import Odex.org.model.OrderDetail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
public class IndexOrderDetailServlet extends AdminServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();
        List<OrderDetail> orderDetailList = orderDetailDao.all();
        
        request.setAttribute("orderDetailList", orderDetailList);
        request.getRequestDispatcher("admin/orders_details/index.jsp").include(request, response);
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
        
    }

}
