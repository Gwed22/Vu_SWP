/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Consignment {

    private int conID;
    private String productName;
    private float conPrice;
    private int brandID;
    private int cid;
    private int conQuantity;

    public Consignment() {
    }

    public Consignment(int conID, String productName, float conPrice, int brandID, int cid, int conQuantity) {
        this.conID = conID;
        this.productName = productName;
        this.conPrice = conPrice;
        this.brandID = brandID;
        this.cid = cid;
        this.conQuantity = conQuantity;
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

    public float getConPrice() {
        return conPrice;
    }

    public void setConPrice(float conPrice) {
        this.conPrice = conPrice;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getConQuantity() {
        return conQuantity;
    }

    public void setConQuantity(int conQuantity) {
        this.conQuantity = conQuantity;
    }

    @Override
    public String toString() {
        return "Consignment{" + "conID=" + conID + ", productName=" + productName + ", conPrice=" + conPrice + ", brandID=" + brandID + ", cid=" + cid + ", conQuantity=" + conQuantity + '}';
    }
    
}
