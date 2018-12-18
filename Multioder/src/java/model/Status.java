/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Chronical
 */
public class Status {
    private int orderid;
    private String status;
    private int shopid;

    /**
     * @return the shopid
     */
    public int getShopid() {
        return shopid;
    }

    /**
     * @param shopid the shopid to set
     */
    public void setShopid(int shopid) {
        this.shopid = shopid;
    }

    /**
     * @return the orderid
     */
    public int getOrderid() {
        return orderid;
    }

    /**
     * @param orderid the orderid to set
     */
    public void setOrderid(int orderid) {
        this.orderid = orderid;
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
}
