/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author DELL
 */
public class SellStatistic {

    private int soldStatisticID;
    private int orderItemID;
    private Date date;

    public SellStatistic() {
    }

    public SellStatistic(int soldStatisticID, int orderItemID, Date date) {
        this.soldStatisticID = soldStatisticID;
        this.orderItemID = orderItemID;
        this.date = date;
    }

    public int getSoldStatisticID() {
        return soldStatisticID;
    }

    public void setSoldStatisticID(int soldStatisticID) {
        this.soldStatisticID = soldStatisticID;
    }

    public int getOrderItemID() {
        return orderItemID;
    }

    public void setOrderItemID(int orderItemID) {
        this.orderItemID = orderItemID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    
}
