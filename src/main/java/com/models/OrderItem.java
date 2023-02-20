/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class OrderItem {

    private int orderItemID;
    private int orderID;
    private int productID;
    private int pPrice;
    private int quantity;

    public OrderItem() {
    }

    public OrderItem(int orderItemID, int orderID, int productID, int pPrice, int quantity) {
        this.orderItemID = orderItemID;
        this.orderID = orderID;
        this.productID = productID;
        
        this.pPrice = pPrice;
        this.quantity = quantity;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

   
    public int getOrderItemID() {
        return orderItemID;
    }

    public void setOrderItemID(int orderItemID) {
        this.orderItemID = orderItemID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

  

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

}
