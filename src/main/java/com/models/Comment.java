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
    private String accName;
    private String commentContext;

    public Comment() {
    }

    public Comment(int commentID, int accountID, int productID, String accName, String commentContext) {
        this.commentID = commentID;
        this.accountID = accountID;
        this.productID = productID;
        this.accName = accName;
        this.commentContext = commentContext;
    }

    

    public Comment(String accName, String commentContext) {
        this.accName = accName;
        this.commentContext = commentContext;
    }

    public String getAccName() {
        return accName;
    }

    public void setAccName(String accName) {
        this.accName = accName;
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

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentID=" + commentID + ", accountID=" + accountID + ", productID=" + productID + ", commentContext=" + commentContext + '}';
    }

}
