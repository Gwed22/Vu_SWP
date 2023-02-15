/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class SecurityQuestion {

    private int sqID;
    private String sqContext;

    public SecurityQuestion() {
    }

    public SecurityQuestion(int sqID, String sqContext) {
        this.sqID = sqID;
        this.sqContext = sqContext;
    }

    public int getSqID() {
        return sqID;
    }

    public void setSqID(int sqID) {
        this.sqID = sqID;
    }

    public String getSqContext() {
        return sqContext;
    }

    public void setSqContext(String sqContext) {
        this.sqContext = sqContext;
    }

    @Override
    public String toString() {
        return "SecurityQuestion{" + "sqID=" + sqID + ", sqContext=" + sqContext + '}';
    }

}
