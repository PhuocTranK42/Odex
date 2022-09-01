/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.dao;

import Odex.org.impl.CategoryDaoImpl;
import Odex.org.impl.OrderDaoImpl;
import Odex.org.impl.OrderDetailDaoImpl;
import Odex.org.impl.ProductDaoImpl;
import Odex.org.impl.UserDaoImpl;

/**
 *
 * @author Admin
 */
public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        return new UserDaoImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }
    
}
