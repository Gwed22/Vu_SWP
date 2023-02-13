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

    private int ProductID;
    private String ProductName;
    private float ProductPrice;
    private String ProductDesc;
    private String ProductImg;
    private int c_Id;
    private int SellPersonID;
    private int Quantity;

    // Constructor
    public Products() {

    }

    public Products(int ProductID, String ProductName, float ProductPrice, String ProductDesc, String ProductImg, int c_Id, int Quantity) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.ProductPrice = ProductPrice;
        this.ProductDesc = ProductDesc;
        this.ProductImg = ProductImg;
        this.c_Id = c_Id;
        this.SellPersonID = 1;
        this.Quantity = Quantity;
    }

    // Getter & Setter
    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public float getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(float ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public String getProductDesc() {
        return ProductDesc;
    }

    public void setProductDesc(String ProductDesc) {
        this.ProductDesc = ProductDesc;
    }

    public String getProductImg() {
        return ProductImg;
    }

    public void setProductImg(String ProductImg) {
        this.ProductImg = ProductImg;
    }

    public int getSellPersonID() {
        return SellPersonID;
    }

    public void setSellPersonID(int SellPersonID) {
        this.SellPersonID = SellPersonID;
    }

    public int getC_Id() {
        return c_Id;
    }

    public void setC_Id(int c_Id) {
        this.c_Id = c_Id;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    @Override
    public String toString() {
        return "Products{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", ProductPrice=" + ProductPrice + ", ProductDesc=" + ProductDesc + ", ProductImg=" + ProductImg + ", c_Id=" + c_Id + ", SellPersonID=" + SellPersonID + ", Quantity=" + Quantity + '}';
    }

}
