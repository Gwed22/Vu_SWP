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
public class Sale {

    private int saleID;
    private Date saleStartDate;
    private Date saleEndDate;
    private float salePrice;
    private String saleDesc;
    private int conID;
    private String productName;
    private String productImg;
    private float productPrice;

    public Sale() {
    }

    public Sale(float salePrice) {
        this.salePrice = salePrice;
    }

    public Sale(Date saleStartDate, Date saleEndDate, float salePrice, String saleDesc, int conID, String productName, String productImg, float productPrice) {
        this.saleStartDate = saleStartDate;
        this.saleEndDate = saleEndDate;
        this.salePrice = salePrice;
        this.saleDesc = saleDesc;
        this.conID = conID;
        this.productName = productName;
        this.productImg = productImg;
        this.productPrice = productPrice;
    }
    
   
    public Sale(int saleID, Date saleStartDate, Date saleEndDate, float salePrice, String saleDesc, int conID) {
        this.saleID = saleID;
        this.saleStartDate = saleStartDate;
        this.saleEndDate = saleEndDate;
        this.salePrice = salePrice;
        this.saleDesc = saleDesc;
        this.conID = conID;
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

    public float getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(float productPrice) {
        this.productPrice = productPrice;
    }
    
    public int getSaleID() {
        return saleID;
    }

    public void setSaleID(int saleID) {
        this.saleID = saleID;
    }

    public Date getSaleStartDate() {
        return saleStartDate;
    }

    public void setSaleStartDate(Date saleStartDate) {
        this.saleStartDate = saleStartDate;
    }

    public Date getSaleEndDate() {
        return saleEndDate;
    }

    public void setSaleEndDate(Date saleEndDate) {
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

    public int getConID() {
        return conID;
    }

    public void setConID(int conID) {
        this.conID = conID;
    }

    @Override
    public String toString() {
        return "Sale{" + "saleID=" + saleID + ", saleStartDate=" + saleStartDate + ", saleEndDate=" + saleEndDate + ", salePrice=" + salePrice + ", saleDesc=" + saleDesc + ", conID=" + conID + ", productName=" + productName + ", productImg=" + productImg + ", productPrice=" + productPrice + '}';
    }

    

}
