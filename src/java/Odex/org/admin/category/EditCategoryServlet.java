/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org.admin.category;

import Odex.org.BaseServlet;
import Odex.org.admin.AdminServlet;
import Odex.org.dao.CategoryDao;
import Odex.org.dao.DatabaseDao;
import Odex.org.model.Category;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class EditCategoryServlet extends AdminServlet {


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
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        Category category = categoryDao.find(categoryId);
        
        request.setAttribute("category", category);
        request.getRequestDispatcher("admin/categories/edit.jsp").include(request, response);
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
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
          
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        Category category = categoryDao.find(categoryId);
        
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        category.setName(name);
        category.setDesc(desc);
        
        categoryDao.update(category);
        
        response.sendRedirect("IndexCategoryServlet");
    }
}
