/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Categories {
    private int c_Id;
    private String c_Name;

    public Categories() {
    }

    public Categories(int c_Id, String c_Name) {
        this.c_Id = c_Id;
        this.c_Name = c_Name;
    }

    public int getC_Id() {
        return c_Id;
    }

    public void setC_Id(int c_Id) {
        this.c_Id = c_Id;
    }

    public String getC_Name() {
        return c_Name;
    }

    public void setC_Name(String c_Name) {
        this.c_Name = c_Name;
    }

    @Override
    public String toString() {
        return "Categories{" + "c_Id=" + c_Id + ", c_Name=" + c_Name + '}';
    }
    
    
    
}
