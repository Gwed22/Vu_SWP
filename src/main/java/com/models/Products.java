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

    private int productID;
    private int conID;
    private float productPrice;
    private String poductDesc;
    

    // Constructor
    public Products() {

    }

    public Products(int productID, int conID, float productPrice, String poductDesc) {
        this.productID = productID;
        this.conID = conID;
        this.productPrice = productPrice;
        this.poductDesc = poductDesc;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
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

   

}
