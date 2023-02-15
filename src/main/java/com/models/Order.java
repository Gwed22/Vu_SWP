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
    private String Status;
    private int AccountID;
    private String note;

    public Order() {
    }

    public Order(int OrderID, Date OrderDate, Date ShippingDate, String ShippingAddress, String Status, int AccountID) {
        this.OrderID = OrderID;
        this.OrderDate = OrderDate;
        this.ShippingDate = ShippingDate;
        this.ShippingAddress = ShippingAddress;
        this.Status = Status;
        this.AccountID = AccountID;
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

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Order{" + "OrderID=" + OrderID + ", OrderDate=" + OrderDate + ", ShippingDate=" + ShippingDate + ", ShippingAddress=" + ShippingAddress + ", Status=" + Status + ", AccountID=" + AccountID + ", note=" + note + '}';
    }
    
}
