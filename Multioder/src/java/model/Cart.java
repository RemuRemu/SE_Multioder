/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


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
    private List<OrderItem> menus;
    public void addItem(int menu_id, int quentity) {
        try{
             
            OrderItem item = null;
            for (int i = 0; i < menus.size(); i++) {
                OrderItem check = menus.get(i);
                int id = check.getMenu_id();
                if (menu_id == id) {
                   item = check;
                }

            }
            if (item == null) {
                String sql = "SELECT * from menu join shop on (menu.shop_id = shop.shopid) where menuid = ?";
                PreparedStatement s_menu = conn.prepareStatement(sql);
                s_menu.setInt(1, menu_id);
                ResultSet rs = s_menu.executeQuery();
                while (rs.next()) {
                    OrderItem menu = new OrderItem();
                    menu.setName(rs.getString("shopname"));
                    menu.setFoodname(rs.getString("name"));
                    menu.setImage(rs.getString("image"));
                    menu.setMenu_id(menu_id);
                    menu.setQuentity(quentity);
                    menu.setPrice(rs.getDouble("price"));
                    menus.add(menu);
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

    public List<OrderItem> getMenus() {
        return menus;
    }

    public Cart(Connection conn) {
        this.conn = conn;
        menus = new LinkedList<OrderItem>();
    }

    public void addQuentity(int menu_id, int quentity){
        OrderItem item = null;
            for (int i = 0; i < menus.size(); i++) {
                OrderItem check = menus.get(i);
                int id = check.getMenu_id();
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
            for (int i = 0; i < menus.size(); i++) {
                OrderItem check = menus.get(i);
                int id = check.getMenu_id();
                if (menu_id == id) {
                   item = check;
                   count = i;
                }

            }
        quentity = item.getQuentity() - quentity;
        if(quentity < 0){
            removeItem(count);
        }
        else{
        item.setQuentity(quentity);
        }
    }
    public void removeItem(int count){
        menus.remove(count);
    }
    public double getTotal() {
        double total = 0;
        for (int i = 0; i < menus.size(); i++) {
            OrderItem item = menus.get(i);
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
    public void removeCart(){
        menus.removeAll(menus);
    }

    private DataSource getSeproject() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/seproject");
    }

}
