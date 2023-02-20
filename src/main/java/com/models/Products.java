/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Products {

    private int conID;
    private float productPrice;
    private String poductDesc;
    private String productName;
    private String productImg;

    // Constructor
    public Products() {
    }

    

    public Products(int conID, float productPrice, String poductDesc, String productName, String productImg) {
        this.conID = conID;
        this.productPrice = productPrice;
        this.poductDesc = poductDesc;
        this.productName = productName;
        this.productImg = productImg;
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

    public int getConID() {
        return conID;
    }

    public void setConID(int conID) {
        this.conID = conID;
    }

    public float getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(float productPrice) {
        this.productPrice = productPrice;
    }

    public String getPoductDesc() {
        return poductDesc;
    }

    public void setPoductDesc(String poductDesc) {
        this.poductDesc = poductDesc;
    }

    @Override
    public String toString() {
        return "Products{" + "conID=" + conID + ", productPrice=" + productPrice + ", poductDesc=" + poductDesc + ", productName=" + productName + ", productImg=" + productImg + '}';
    }

    

}
