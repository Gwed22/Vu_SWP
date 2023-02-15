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
    private int p_ID;
    private String p_Name;
    private String p_Img;
    private double p_Price;
    private String OrderDate;
    private String ShippingDate;
    private String ShippingAddress;
    private int Quantity;
    private int OrderID;
    private int IsDelivery;

    public OrderItem() {
    }

   

    public OrderItem(int p_ID, String p_Name, String p_Img, double p_Price, String OrderDate, String ShippingDate, String ShippingAddress, int Quantity, int OrderID, int IsDelivery) {
        this.p_ID = p_ID;
        this.p_Name = p_Name;
        this.p_Img = p_Img;
        this.p_Price = p_Price;
        this.OrderDate = OrderDate;
        this.ShippingDate = ShippingDate;
        this.ShippingAddress = ShippingAddress;
        this.Quantity = Quantity;
        this.OrderID = OrderID;
        this.IsDelivery = IsDelivery;
    }
    

    public int getP_ID() {
        return p_ID;
    }

    public void setP_ID(int p_ID) {
        this.p_ID = p_ID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }
    
    public String getP_Name() {
        return p_Name;
    }

    public void setP_Name(String p_Name) {
        this.p_Name = p_Name;
    }

    public String getP_Img() {
        return p_Img;
    }

    public void setP_Img(String p_Img) {
        this.p_Img = p_Img;
    }

    public double getP_Price() {
        return p_Price;
    }

    public void setP_Price(double p_Price) {
        this.p_Price = p_Price;
    }

    

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public String getShippingDate() {
        return ShippingDate;
    }

    public void setShippingDate(String ShippingDate) {
        this.ShippingDate = ShippingDate;
    }

 
    public String getShippingAddress() {
        return ShippingAddress;
    }

    public void setShippingAddress(String ShippingAddress) {
        this.ShippingAddress = ShippingAddress;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getIsDelivery() {
        return IsDelivery;
    }

    public void setIsDelivery(int IsDelivery) {
        this.IsDelivery = IsDelivery;
    }

    @Override
    public String toString() {
        return "ProductOrders{" + "p_ID=" + p_ID + ", p_Name=" + p_Name + ", p_Img=" + p_Img + ", p_Price=" + p_Price + ", p_Gene="  + ", OrderDate=" + OrderDate + ", ShippingDate=" + ShippingDate + ", ShippingAddress=" + ShippingAddress + ", OrderID=" + OrderID + ", IsDelivery=" + IsDelivery + '}';
    }
    
    
}
