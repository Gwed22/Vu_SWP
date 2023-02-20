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

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }
    public List<Item> getItems() {
        return items;
    }
    
    
    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }
    
    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProudct().getProductID()==id) {
                return i;
            }
        }
        return null;
    }
    
    public void addItem(Item i) {
        if (getItemById(i.getProudct().getProductID()) != null) {
            Item m= getItemById(i.getProudct().getProductID());
            m.setQuantity(m.getQuantity()+i.getQuantity());
        } else {
            items.add(i);
        }
    }
    
    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }
    
    public float getTotalMoney() {
        float t = 0;
        for (Item i : items) {
            t+=(i.getQuantity() * i.getPrice());
        }
        return t;
    }
    private Products getProductsById (int id, List<Products> list) {
        for (Products p : list) {
            if (p.getProductID() == id) {
                return p;
            }
        }
        return null;
    }
    
    public Cart(String txt, List<Products> list) {
        items = new ArrayList<>();
        if (txt !=null && txt.length()!= 0) {
            String[] s=txt.split(",");
            for(String i: s) {
                String[] n = i.split(":");
                int id = Integer.parseInt(n[0]);
                int quantity = Integer.parseInt(n[1]);
                Products p = getProductsById(id, list);
                Item t = new Item(p, quantity, p.getProductPrice());
                addItem(t);
            }
        }
    }

}
