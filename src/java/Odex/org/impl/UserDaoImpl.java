/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.impl;

import Odex.org.dao.UserDao;
import Odex.org.db.MySQLDriver;
import Odex.org.model.User;
import Odex.org.util.MD5Hashing;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.security.provider.MD5;

/**
 *
 * @author Admin
 */
public class UserDaoImpl implements UserDao {
    private Connection conn;

    public UserDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }
    
    
    @Override
    public boolean insert(User user) {
        String sql = "INSERT INTO users VALUES(NULL, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(User user) {
        String sql = "UPDATE users SET email=?, password=?, role=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int userId) {
        String sql = "DELETE FROM users WHERE id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<User> all() {
        List<User> userList = new ArrayList<User>();
        String sql = "SELECT * FROM users";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while(rs.next()){
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                userList.add(new User(id, email, password, role));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }

    @Override
    public User find(int id) {
        String sql = "SELECT * FROM users WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                return new User(id, email, password, role);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public User findByEmail(String email) {
        String sql = "SELECT * FROM users WHERE email=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                return new User(id, email, password, role);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
