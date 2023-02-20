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
public class Consignment {

    private int conID;
    private String productName;
    private int cID;
    private int conQuantity;
    private int brandID;
    private float conPrice;
    private Date importDate;
    private String productImg;
    private float productPrice;
    private String productDesc;

    public Consignment() {
    }

    public Consignment(String productName, int cID, int conQuantity, int brandID, float conPrice, Date importDate, String productImg) {
        this.productName = productName;
        this.cID = cID;
        this.conQuantity = conQuantity;
        this.brandID = brandID;
        this.conPrice = conPrice;
        this.importDate = importDate;
        this.productImg = productImg;
    }

    public Consignment(int conID, String productName, int cID, int conQuantity, int brandID, float conPrice, Date importDate, String productImg) {
        this.conID = conID;
        this.productName = productName;
        this.cID = cID;
        this.conQuantity = conQuantity;
        this.brandID = brandID;
        this.conPrice = conPrice;
        this.importDate = importDate;
        this.productImg = productImg;
    }

    public Consignment(int conID, String productName, int cID, int conQuantity, int brandID, float conPrice, Date importDate, String productImg, float productPrice, String productDesc) {
        this.conID = conID;
        this.productName = productName;
        this.cID = cID;
        this.conQuantity = conQuantity;
        this.brandID = brandID;
        this.conPrice = conPrice;
        this.importDate = importDate;
        this.productImg = productImg;
        this.productPrice = productPrice;
        this.productDesc = productDesc;
    }

    
    
    public int getConID() {
        return conID;
    }

    public void setConID(int conID) {
        this.conID = conID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getcID() {
        return cID;
    }

    public void setcID(int cID) {
        this.cID = cID;
    }

    public int getConQuantity() {
        return conQuantity;
    }

    public void setConQuantity(int conQuantity) {
        this.conQuantity = conQuantity;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public float getConPrice() {
        return conPrice;
    }

    public void setConPrice(float conPrice) {
        this.conPrice = conPrice;
    }

    public Date getImportDate() {
        return importDate;
    }

    public void setImportDate(Date importDate) {
        this.importDate = importDate;
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

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }
    
    

}
