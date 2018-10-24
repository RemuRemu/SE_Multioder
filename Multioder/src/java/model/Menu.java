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
public class Menu {
    private int menu_id;
    private String name;
    private int shop_id;
    private String description;
    private float price;
    private String image;
    private int recommend;

    /**
     * @return the menu_id
     */
    public int getMenu_id() {
        return menu_id;
    }

    /**
     * @param menu_id the menu_id to set
     */
    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
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

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the price
     */
    public float getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(float price) {
        this.price = price;
    }

    /**
     * @return the recommend
     */
    public int getRecommend() {
        return recommend;
    }

    /**
     * @param recommend the recommend to set
     */
    public void setRecommend(int recommend) {
        this.recommend = recommend;
    }
    
}
