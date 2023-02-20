/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Item {
      private Products proudct;
    private int quantity;
    private double Price;

    public Item() {
    }

    public Item(Products proudct, int quantity, double Price) {
        this.proudct = proudct;
        this.quantity = quantity;
        this.Price = Price;
    }

    public Products getProudct() {
        return proudct;
    }

    public void setProudct(Products proudct) {
        this.proudct = proudct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }
}
