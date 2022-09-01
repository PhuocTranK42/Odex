/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.dao;

import Odex.org.model.User;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface UserDao {
    public boolean insert(User user);
    public boolean update(User user);
    public boolean delete(int userId);
    
    public List<User> all();
    public User find(int id);
    public User findByEmail(String email);
    
    public int countUser();
}
