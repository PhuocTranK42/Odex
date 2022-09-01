/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.dao;

import Odex.org.model.Order;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface OrderDao {
    public boolean insert(Order order);
    public boolean update(Order order);
    public boolean delete(int id);
    
    public List<Order> all();
    public Order find(int id);
    public Order findByCode(String code);
}
