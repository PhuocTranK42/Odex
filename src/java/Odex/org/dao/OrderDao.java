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
    public List<Order> findByStatus(String status);
    
    public int countOrder();
    public int countPendingOrder();
    public int countShippingOrder();
    public int countDeliveredOrder();
    public int countCanceledOrder();
    public List<Integer> countOrderEachDay();
    
    public int countOrderByDay(String date);
}
