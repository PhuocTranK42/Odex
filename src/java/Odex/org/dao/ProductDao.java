/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.dao;

import Odex.org.model.Product;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface ProductDao {
    public boolean insert(Product product);
    public boolean update(Product product);
    public boolean delete(int id);
    
    public List<Product> all();
    public Product find(int id);
    public Product findByName(String name);
    public List<Product> findByCategoryId(int categoryId);
    public List<Product> searchByName(String productName);
}
