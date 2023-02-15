/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class ChatSession {
    private int chatSessionID;
    private int customerID;
    private int staffID;

    public ChatSession() {
    }

    public ChatSession(int chatSessionID, int customerID, int staffID) {
        this.chatSessionID = chatSessionID;
        this.customerID = customerID;
        this.staffID = staffID;
    }

    public int getChatSessionID() {
        return chatSessionID;
    }

    public void setChatSessionID(int chatSessionID) {
        this.chatSessionID = chatSessionID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    @Override
    public String toString() {
        return "ChatSession{" + "chatSessionID=" + chatSessionID + ", customerID=" + customerID + ", staffID=" + staffID + '}';
    }
    
    
}
