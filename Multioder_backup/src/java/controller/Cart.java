/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

/**
 *
 * @author Chronical
 */
public class Cart {

    Connection conn;
    private List<OrderItem> accs;
    public void addItem(int menu_id, int quentity) {
        try{
             
            OrderItem item = null;
            for (int i = 0; i < accs.size(); i++) {
                OrderItem check = accs.get(i);
                int id = check.getAcc_id();
                if (menu_id == id) {
                   item = check;
                }

            }
            if (item == null) {
                String sql = "SELECT * FROM menu WHERE  menuid = ?";
                PreparedStatement s_acc = conn.prepareStatement(sql);
                s_acc.setInt(1, menu_id);
                ResultSet rs = s_acc.executeQuery();
                while (rs.next()) {
                    OrderItem acc = new OrderItem();
                    acc.setAcc_id(menu_id);
                    acc.setQuentity(quentity);
                    acc.setPrice(rs.getDouble("price"));
                    accs.add(acc);
                }
            }
            else {
                quentity = item.getQuentity() + quentity;
                item.setQuentity(quentity);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Cart.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<OrderItem> getAccs() {
        return accs;
    }

    public Cart(Connection conn) {
        this.conn = conn;
        accs = new LinkedList<OrderItem>();
    }

    public void addQuentity(int menu_id, int quentity){
        OrderItem item = null;
            for (int i = 0; i < accs.size(); i++) {
                OrderItem check = accs.get(i);
                int id = check.getAcc_id();
                if (menu_id == id) {
                   item = check;
                }

            }
        quentity = item.getQuentity() + quentity;
        item.setQuentity(quentity);
    }
    
    public void removeQuentity(int menu_id, int quentity){
        OrderItem item = null;
        int count = 0;
            for (int i = 0; i < accs.size(); i++) {
                OrderItem check = accs.get(i);
                int id = check.getAcc_id();
                if (menu_id == id) {
                   item = check;
                   count = i;
                }

            }
        quentity = item.getQuentity() - quentity;
        if(quentity == 0){
            removeItem(count);
        }
        else{
        item.setQuentity(quentity);
        }
    }
    public void removeItem(int count){
        accs.remove(count);
    }
    public double getTotal() {
        double total = 0;
        for (int i = 0; i < accs.size(); i++) {
            OrderItem item = accs.get(i);
            double amount = item.getAmount();
            total += amount;
        }
        return total;
    }
    public double getPoint() {
        int point = 0;
        double totala = 0;
        totala = this.getTotal();
        point = (int) (totala/10);
        return point;
    }

    private DataSource getSeproject() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/seproject");
    }

}
