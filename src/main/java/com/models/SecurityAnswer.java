/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class SecurityAnswer {

    private int answerID;
    private int accountID;
    private int sqID;
    private String answerContext;

    public SecurityAnswer() {
    }

    public SecurityAnswer(int answerID, int accountID, int sqID, String answerContext) {
        this.answerID = answerID;
        this.accountID = accountID;
        this.sqID = sqID;
        this.answerContext = answerContext;
    }

    public int getAnswerID() {
        return answerID;
    }

    public void setAnswerID(int answerID) {
        this.answerID = answerID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public int getSqID() {
        return sqID;
    }

    public void setSqID(int sqID) {
        this.sqID = sqID;
    }

    public String getAnswerContext() {
        return answerContext;
    }

    public void setAnswerContext(String answerContext) {
        this.answerContext = answerContext;
    }

    @Override
    public String toString() {
        return "SecurityAnswer{" + "answerID=" + answerID + ", accountID=" + accountID + ", sqID=" + sqID + ", answerContext=" + answerContext + '}';
    }

}
