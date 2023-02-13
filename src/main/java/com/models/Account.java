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
    private int UserId;
    private String Fname;
    private String Lname;
    private String phone;
    private String password;
    private int userStt;
    
    
    public Account() {
    }

    public Account(int UserId, String Fname, String Lname, String phone, String password, int userStt) {
        this.UserId = UserId;
        this.Fname = Fname;
        this.Lname = Lname;
        this.phone = phone;
        this.password = password;
        this.userStt = userStt;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public int getUserStt() {
        return userStt;
    }

    public void setUserStt(int userStt) {
        this.userStt = userStt;
    }

    

    public String getFname() {
        return Fname;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
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

    @Override
    public String toString() {
        return "Account{" + "UserId=" + UserId + ", Fname=" + Fname + ", Lname=" + Lname + ", phone=" + phone + ", password=" + password + ", userStt=" + userStt + '}';
    }

}
