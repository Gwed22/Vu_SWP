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
public class Message {

    private int messageID;
    private int chatSessionID;
    private Timestamp dateTime;
    private String messageContext;

    public Message() {
    }

    public Message(int messageID, int chatSessionID, Timestamp dateTime, String messageContext) {
        this.messageID = messageID;
        this.chatSessionID = chatSessionID;
        this.dateTime = dateTime;
        this.messageContext = messageContext;
    }

    public int getMessageID() {
        return messageID;
    }

    public void setMessageID(int messageID) {
        this.messageID = messageID;
    }

    public int getChatSessionID() {
        return chatSessionID;
    }

    public void setChatSessionID(int chatSessionID) {
        this.chatSessionID = chatSessionID;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getMessageContext() {
        return messageContext;
    }

    public void setMessageContext(String messageContext) {
        this.messageContext = messageContext;
    }

    @Override
    public String toString() {
        return "Message{" + "messageID=" + messageID + ", chatSessionID=" + chatSessionID + ", dateTime=" + dateTime + ", messageContext=" + messageContext + '}';
    }

}
