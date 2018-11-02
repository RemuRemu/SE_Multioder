/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author USER
 */
public class Order {
    private int order_id;
    private Date buy_date;
    private String status;
    private String address;
    private int total;
    private int userprifile_uid;
    private int shop_id;

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

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the total
     */
    public int getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(int total) {
        this.total = total;
    }

    /**
     * @return the userprifile_uid
     */
    public int getUserprifile_uid() {
        return userprifile_uid;
    }

    /**
     * @param userprifile_uid the userprifile_uid to set
     */
    public void setUserprifile_uid(int userprifile_uid) {
        this.userprifile_uid = userprifile_uid;
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
}
