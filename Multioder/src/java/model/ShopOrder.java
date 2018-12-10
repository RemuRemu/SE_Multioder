/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import javax.servlet.ServletContext;

/**
 *
 * @author Chronical
 */
public class ShopOrder {

    private int order_id;
    private String foodname;
    private int quentity;
    private double price;
    private Date buy_date;



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
     * @return the foodname
     */
    public String getFoodname() {
        return foodname;
    }

    /**
     * @param foodname the foodname to set
     */
    public void setFoodname(String foodname) {
        this.foodname = foodname;
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
     * @return the buy_date
     */
    public Date getBuy_date() {
        return buy_date;
    }

    /**
     * @param buy_date the buy_date to set
     */
    public void setBuy_date(Date buy_date) {
        this.buy_date = buy_date;
    }
}
