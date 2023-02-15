/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Timestamp;

/**
 *
 * @author PC
 */
public class Sale {

    private int saleID;
    private Timestamp saleStartDate;
    private Timestamp saleEndDate;
    private float salePrice;
    private String saleDesc;
    private int productID;

    public Sale() {
    }

    public Sale(int saleID, Timestamp saleStartDate, Timestamp saleEndDate, float salePrice, String saleDesc, int productID) {
        this.saleID = saleID;
        this.saleStartDate = saleStartDate;
        this.saleEndDate = saleEndDate;
        this.salePrice = salePrice;
        this.saleDesc = saleDesc;
        this.productID = productID;
    }

    public int getSaleID() {
        return saleID;
    }

    public void setSaleID(int saleID) {
        this.saleID = saleID;
    }

    public Timestamp getSaleStartDate() {
        return saleStartDate;
    }

    public void setSaleStartDate(Timestamp saleStartDate) {
        this.saleStartDate = saleStartDate;
    }

    public Timestamp getSaleEndDate() {
        return saleEndDate;
    }

    public void setSaleEndDate(Timestamp saleEndDate) {
        this.saleEndDate = saleEndDate;
    }

    public float getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(float salePrice) {
        this.salePrice = salePrice;
    }

    public String getSaleDesc() {
        return saleDesc;
    }

    public void setSaleDesc(String saleDesc) {
        this.saleDesc = saleDesc;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    @Override
    public String toString() {
        return "Sale{" + "saleID=" + saleID + ", saleStartDate=" + saleStartDate + ", saleEndDate=" + saleEndDate + ", salePrice=" + salePrice + ", saleDesc=" + saleDesc + ", productID=" + productID + '}';
    }

}