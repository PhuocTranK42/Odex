/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Odex.org.model;

import Odex.org.dao.DatabaseDao;

/**
 *
 * @author Admin
 */
public class Product {
    private int id;
    private String name;
    private String desc;
    private double price;
    private int quantity;
    private int categoryId;
    private String img;
    
    public static Product find(int id){
        return DatabaseDao.getInstance().getProductDao().find(id);
    }

    public Product(int id, String name, String desc, double price, int quantity, int categoryId, String img) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.img = img;
    }

    public Product(String name, String desc, double price, int quantity, int categoryId, String img) {
        this.name = name;
        this.desc = desc;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
