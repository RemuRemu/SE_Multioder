/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

/**
 *
 * @author Chronical
 */
public class OrderItem {

    private ServletContext context;

    private String image;
    private String name;
    private String shopname;

    private double price;
    private int quentity;
    private int order_id;
    private int menu_id;
    private int item_num;
    private int shop_id;

    public OrderItem() {

    }

    public OrderItem(ServletContext context) {
        this.context = context;
    }



    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the quentity
     */
    public int getQuentity() {
        return quentity;
    }

    /**
     * @param quentity the quentity to set
     */
    public void setQuentity(int quentity) {
        this.quentity = quentity;
    }

    /**
     * @return the order_id
     */
    public int getOrder_id() {
        return order_id;
    }

    /**
     * @param order_id the order_id to set
     */
    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    /**
     * @return the acc_id
     */
    public int getMenu_id() {
        return menu_id;
    }

    /**
     * @param acc_id the acc_id to set
     */
    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    /**
     * @return the item_num
     */
    public int getItem_num() {
        return item_num;
    }

    /**
     * @param item_num the item_num to set
     */
    public void setItem_num(int item_num) {
        this.item_num = item_num;
    }

    /**
     * @return the amount
     */
    public double getAmount() {
        return quentity * price;
    }

    /**
     * @return the shop_id
     */
    public int getShop_id() {
        return shop_id;
    }

    /**
     * @param shop_id the shop_id to set
     */
    public void setShop_id(int shop_id) {
        this.shop_id = shop_id;
    }

    public Menu getMenu() throws SQLException {
        DataSource ds = (DataSource) context.getAttribute("dataSource");
        Connection conn = ds.getConnection();

        String sql = "SELECT * FROM menu WHERE  menuid = ?";
        PreparedStatement s_menu = conn.prepareStatement(sql);
        s_menu.setInt(1, menu_id);
        ResultSet rs = s_menu.executeQuery();
        rs.next();
        Menu menu = new Menu();
        menu.setName(rs.getString("name"));
        menu.setShop_id(rs.getInt("shop_id"));
        menu.setDescription(rs.getString("description"));
        menu.setPrice(rs.getFloat("price"));
        menu.setImage(rs.getString("image"));
        menu.setRecommend(rs.getInt("recommend"));
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {

            }
        }
        return menu;

    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the shopname
     */
    public String getShopname() {
        return shopname;
    }

    /**
     * @param shopname the shopname to set
     */
    public void setShopname(String shopname) {
        this.shopname = shopname;
    }



}
