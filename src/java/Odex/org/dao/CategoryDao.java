/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.dao;

import Odex.org.model.Category;
import java.util.List;
/**
 *
 * @author Admin
 */
public interface CategoryDao {
    public boolean insert(Category category);
    public boolean update(Category category);
    public boolean delete(int id);
    
    public List<Category> all();
    public Category find(int id);
    public Category findByName(String name);
}
