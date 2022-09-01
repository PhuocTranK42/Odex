/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org.admin;

import Odex.org.dao.DatabaseDao;
import Odex.org.dao.OrderDao;
import Odex.org.dao.ProductDao;
import Odex.org.dao.UserDao;
import Odex.org.util.GetDateTime;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DashboardServlet extends AdminServlet {


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
        super.doGet(request, response);
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        
        int countUser = userDao.countUser();
        int countProduct = productDao.countProduct();
        int countOrder = orderDao.countOrder();
        int countPendingOrder = orderDao.countPendingOrder();
        int countShippingOrder = orderDao.countShippingOrder();
        int countDeliveredOrder = orderDao.countDeliveredOrder();
        int countCanceledOrder = orderDao.countCanceledOrder();
        
        List<String> dateList = GetDateTime.get7Date();
        List<Integer> countEachDay = new ArrayList<>();
        for (int i = 0; i < 7; i++) {
           countEachDay.add(orderDao.countOrderByDay(dateList.get(i)));
        }
        
        request.setAttribute("countEachDay", countEachDay);
        request.setAttribute("dateList", dateList);
        request.setAttribute("countUser", countUser);
        request.setAttribute("countProduct", countProduct);
        request.setAttribute("countOrder", countOrder);
        request.setAttribute("countPendingOrder", countPendingOrder);
        request.setAttribute("countShippingOrder", countShippingOrder);
        request.setAttribute("countDeliveredOrder", countDeliveredOrder);
        request.setAttribute("countCanceledOrder", countCanceledOrder);
        request.getRequestDispatcher("admin/index.jsp").include(request, response);
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
