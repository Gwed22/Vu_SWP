/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author PC
 */
public class OrderProducts {
    private int OrderID;
    private String productName;
    private String productImg;
    private String address;
    private Date deliveriDate;
    private Date orderDate;
    private String status;
    private String note;
    private float totalPrice;
    private int quantity;

    
    public OrderProducts() {
    }

    public OrderProducts(int OrderID, String productName, String productImg, String address, Date deliveriDate, Date orderDate, String status, String note, float totalPrice, int quantity) {
        this.OrderID = OrderID;
        this.productName = productName;
        this.productImg = productImg;
        this.address = address;
        this.deliveriDate = deliveriDate;
        this.orderDate = orderDate;
        this.status = status;
        this.note = note;
        this.totalPrice = totalPrice;
        this.quantity = quantity;
    }

   
    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDeliveriDate() {
        return deliveriDate;
    }

    public void setDeliveriDate(Date deliveriDate) {
        this.deliveriDate = deliveriDate;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    
    

    
    
    
}
