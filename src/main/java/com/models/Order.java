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
public class Order {
  
    private int OrderID; 
    private Date OrderDate;
    private Date ShippingDate;
    private String ShippingAddress;
    private int isDelivery;
    private int UserID;
    private int ProductID;
    private int Quantity;

    public Order() {
    }

    public Order(int OrderID, Date OrderDate, Date ShippingDate, String ShippingAddress, int isDelivery, int UserID, int ProductID, int Quantity) {
        this.OrderID = OrderID;
        this.OrderDate = OrderDate;
        this.ShippingDate = ShippingDate;
        this.ShippingAddress = ShippingAddress;
        this.isDelivery = isDelivery;
        this.UserID = UserID;
        this.ProductID = ProductID;
        this.Quantity = Quantity;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }
    
    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public Date getShippingDate() {
        return ShippingDate;
    }

    public void setShippingDate(Date ShippingDate) {
        this.ShippingDate = ShippingDate;
    }

    public String getShippingAddress() {
        return ShippingAddress;
    }

    public void setShippingAddress(String ShippingAddress) {
        this.ShippingAddress = ShippingAddress;
    }

    public int getIsDelivery() {
        return isDelivery;
    }

    public void setIsDelivery(int isDelivery) {
        this.isDelivery = isDelivery;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }    
    
}
