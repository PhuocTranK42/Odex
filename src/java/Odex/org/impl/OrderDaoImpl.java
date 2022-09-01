package Odex.org.impl;

import Odex.org.dao.OrderDao;
import Odex.org.db.MySQLDriver;
import Odex.org.model.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class OrderDaoImpl implements OrderDao {
    private Connection conn;

    public OrderDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }
    
    
    @Override
    public boolean insert(Order order) {
        String sql = "INSERT INTO orders VALUES(NULL, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.setInt(3, order.getUserId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Order order) {
        String sql = "UPDATE orders SET code=?, status=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int orderId) {
        String sql = "DELETE FROM orders WHERE id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<Order> all() {
        List<Order> orderList = new ArrayList<Order>();
        String sql = "SELECT * FROM orders";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while(rs.next()){
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");
                
                orderList.add(new Order(id, code, status, userId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderList;
    }

    @Override
    public Order find(int id) {
        String sql = "SELECT * FROM orders WHERE id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");
                
                return new Order(id, code, status, userId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Order findByCode(String code) {
        String sql = "SELECT * FROM orders WHERE code=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, code);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String status = rs.getString("status");
                int userId = rs.getInt("userId");
                
                return new Order(id, code, status, userId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
