/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org;

import Odex.org.dao.DatabaseDao;
import Odex.org.dao.UserDao;
import Odex.org.model.User;
import Odex.org.util.MD5Hashing;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginServlet extends BaseServlet {

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
        HttpSession session = request.getSession();
        
        if(session.getAttribute("user")!= null){
            response.sendRedirect("HomeServlet");
        }else{
            request.getRequestDispatcher("loginpage.jsp").forward(request, response);
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
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        
        String email = request.getParameter("email");
        String password = MD5Hashing.getMD5(request.getParameter("password"));
        
        User findUser = userDao.findByEmail(email);
        if(findUser != null){
            if(findUser.getPassword().equals(password)){
                //Set session login
                HttpSession session = request.getSession();
                session.setAttribute("user", findUser);
                response.sendRedirect("HomeServlet");
                /*if(findUser.getRole().equals("Admin") ){
                    response.sendRedirect("DashboardServlet");
                }else {
                response.sendRedirect("HomeServlet");
                }*/
            }
        }else{
            response.sendRedirect("LoginServlet");
        }
            
    }

}
