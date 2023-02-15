/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Account {

    private int AccountID;
    private String name;
    private String phone;
    private String password;
    private String gender;
    private String address;
    private int sq_id;
    private int role_id;

    public Account() {
    }

    public Account(int AccountID, String name, String phone, String password, String gender, String address, int sq_id, int role_id) {
        this.AccountID = AccountID;
        this.name = name;
        this.phone = phone;
        this.password = password;
        this.gender = gender;
        this.address = address;
        this.sq_id = sq_id;
        this.role_id = role_id;
    }

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSq_id() {
        return sq_id;
    }

    public void setSq_id(int sq_id) {
        this.sq_id = sq_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Account{" + "AccountID=" + AccountID + ", name=" + name + ", phone=" + phone + ", password=" + password + ", gender=" + gender + ", address=" + address + ", sq_id=" + sq_id + ", role_id=" + role_id + '}';
    }
    
    
}
