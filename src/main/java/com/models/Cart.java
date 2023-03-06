/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class Cart {
    private List<Item> items;
    private List<Sale> sale;
    
    
    public Cart() {
        items= new ArrayList<>();
        
    }
    
    
    
    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    public int getQuantityById(int id) {
        return getItemByID(id).getQuantity();
    }
    private Item getItemByID(int id) {
        for (Item item : items) {
            if (item.getProduct().getConID() == id) {
                return item;
            }
        }
        return null;
    }
    public void addItem(Item t) {
        if (getItemByID(t.getProduct().getConID())!= null) {
            Item m = getItemByID(t.getProduct().getConID());
            m.setQuantity(m.getQuantity()+t.getQuantity());
            
        } else {
            items.add(t);
        }
    }
    
    public void removeItem (int id) {
        if (getItemByID(id)!=null) {
            items.remove(getItemByID(id));
        }
    }   
    public double getTotalMoney() {
        double t=0;
        for (Item item : items) {
            t+=(item.getQuantity()*item.getPrice());
        }
        return t;
    }
}
