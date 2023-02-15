/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Timestamp;

/**
 *
 * @author PC
 */
public class Comment {
    private int commentID;
    private int accountID;
    private int productID;
    private Timestamp dateTime;
    private String commentContext;

    public Comment() {
    }

    public Comment(int commentID, int accountID, int productID, Timestamp dateTime, String commentContext) {
        this.commentID = commentID;
        this.accountID = accountID;
        this.productID = productID;
        this.dateTime = dateTime;
        this.commentContext = commentContext;
    }

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentID=" + commentID + ", accountID=" + accountID + ", productID=" + productID + ", dateTime=" + dateTime + ", commentContext=" + commentContext + '}';
    }
    
    
    
}
