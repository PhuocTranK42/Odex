package Odex.org.impl;

import Odex.org.dao.OrderDetailDao;
import Odex.org.db.MySQLDriver;
import Odex.org.model.OrderDetail;
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
public class OrderDetailDaoImpl implements OrderDetailDao {
    private Connection conn;

    public OrderDetailDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }
    
    
    @Override
    public boolean insert(OrderDetail orderDetail) {
        String sql = "INSERT INTO orders_details VALUES(NULL, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getQuantity());
            stmt.setInt(2, orderDetail.getProductId());
            stmt.setInt(3, orderDetail.getOrderId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(OrderDetail orderDetail) {
        String sql = "UPDATE orders_details SET quantity=?, productId =?, orderId =?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getQuantity());
            stmt.setInt(2, orderDetail.getProductId());
            stmt.setInt(3, orderDetail.getOrderId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int orderDetailId) {
        String sql = "DELETE FROM orders_details WHERE id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetailId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<OrderDetail> all() {
        List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
        String sql = "SELECT * FROM orders_details";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while(rs.next()){
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");
                int productId = rs.getInt("productId");
                int orderId = rs.getInt("orderId");
                
                orderDetailList.add(new OrderDetail(id, quantity, productId, orderId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }

    @Override
    public OrderDetail find(int id) {
        String sql = "SELECT * FROM orders_details WHERE id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int quantity = rs.getInt("quantity");
                int productId = rs.getInt("productId");
                int orderId = rs.getInt("orderId");
                
                return new OrderDetail(id, quantity, productId, orderId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public List<OrderDetail> findByOrder(int orderId) {
        List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
        String sql = "SELECT * FROM orders_details WHERE orderId=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");
                int productId = rs.getInt("productId");
                
                orderDetailList.add(new OrderDetail(id, quantity, productId, orderId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }
    
}
