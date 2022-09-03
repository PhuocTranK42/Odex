/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org;

import Odex.org.dao.DatabaseDao;
import Odex.org.dao.OrderDao;
import Odex.org.dao.OrderDetailDao;
import Odex.org.entity.OrderDetailSession;
import Odex.org.model.Order;
import Odex.org.model.OrderDetail;
import Odex.org.model.User;
import Odex.org.util.GetDateTime;
import Odex.org.util.StringHelper;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CheckoutServlet extends BaseServlet {

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
        DateTimeFormatter format = DateTimeFormatter
            .ofPattern("YYYY-MM-dd");
        if(isLogged(request, response)){
            HttpSession session = request.getSession();
        
            User user = (User) session.getAttribute("user");
            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            String code = StringHelper.randomString(8);
            String currentDateTime = GetDateTime.now.format(format);
            Order order = new Order(code, "pending", user.getId(), currentDateTime);
            orderDao.insert(order);

            order = orderDao.findByCode(code);

            OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();

            if(session.getAttribute("cart") != null){
                List<OrderDetailSession> orderDetailSessionList = (List<OrderDetailSession>) session.getAttribute("cart");
                for (OrderDetailSession orderDetailSession : orderDetailSessionList) {
                    OrderDetail orderDetail = new OrderDetail(orderDetailSession.getQuantity(), orderDetailSession.getProductId(), order.getId());
                    orderDetailDao.insert(orderDetail);
                }

                session.removeAttribute("cart");            
            }

            response.sendRedirect("CartServlet");
        }else{
            response.sendRedirect("LoginServlet");
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
        isLogged(request, response);
    }
    
    private boolean isLogged(HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession session = request.getSession();
        return session.getAttribute("user") != null;
    }

}
