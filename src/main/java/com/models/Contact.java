/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author Tran Ba Nam
 */
public class Contact {
    private int contactID;
    private int accId;
    private int oid;
    private String mail;
    private Date date;
    private String context;

    public Contact(int accId, int oid, String mail, Date date, String context) {
        this.accId = accId;
        this.oid = oid;
        this.mail = mail;
        this.date = date;
        this.context = context;
    }

    public int getContactID() {
        return contactID;
    }

    public void setContactID(int contactID) {
        this.contactID = contactID;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    @Override
    public String toString() {
        return "Contact{" + "accId=" + accId + ", oid=" + oid + ", mail=" + mail + ", date=" + date + ", context=" + context + '}';
    }
    
    
    
}
