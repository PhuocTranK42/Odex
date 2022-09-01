/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Odex.org.admin.product;

import Odex.org.BaseServlet;
import Odex.org.admin.AdminServlet;
import Odex.org.dao.CategoryDao;
import Odex.org.dao.DatabaseDao;
import Odex.org.dao.ProductDao;
import Odex.org.model.Category;
import Odex.org.model.Product;
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
public class CreateProductServlet extends AdminServlet {

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
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.all();
        
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/product/create.jsp").include(request, response);
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
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        Double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String img = request.getParameter("img");

        Product product = new Product(name, desc, price, quantity, categoryId, img);

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        productDao.insert(product);

        response.sendRedirect("IndexProductServlet");
    }

}
