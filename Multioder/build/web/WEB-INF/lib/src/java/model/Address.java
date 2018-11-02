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
public class Address {
    private int address_id;
    private String address_des;
    private int userprofile_uid;

    /**
     * @return the address_id
     */
    public int getAddress_id() {
        return address_id;
    }

    /**
     * @param address_id the address_id to set
     */
    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    /**
     * @return the address_des
     */
    public String getAddress_des() {
        return address_des;
    }

    /**
     * @param address_des the address_des to set
     */
    public void setAddress_des(String address_des) {
        this.address_des = address_des;
    }

    /**
     * @return the userprofile_uid
     */
    public int getUserprofile_uid() {
        return userprofile_uid;
    }

    /**
     * @param userprofile_uid the userprofile_uid to set
     */
    public void setUserprofile_uid(int userprofile_uid) {
        this.userprofile_uid = userprofile_uid;
    }
}
