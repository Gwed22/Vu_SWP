/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author PC
 */
public class Message {
    private String messageId;
    private String chatSessionId;
    private Date Datetime;
    private String messageContext;

    public Message() {
    }

    public Message(String messageId, String chatSessionId, Date Datetime, String messageContext) {
        this.messageId = messageId;
        this.chatSessionId = chatSessionId;
        this.Datetime = Datetime;
        this.messageContext = messageContext;
    }

    public String getMessageId() {
        return messageId;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    public String getChatSessionId() {
        return chatSessionId;
    }

    public void setChatSessionId(String chatSessionId) {
        this.chatSessionId = chatSessionId;
    }

    public Date getDatetime() {
        return Datetime;
    }

    public void setDatetime(Date Datetime) {
        this.Datetime = Datetime;
    }

    public String getMessageContext() {
        return messageContext;
    }

    public void setMessageContext(String messageContext) {
        this.messageContext = messageContext;
    }

    @Override
    public String toString() {
        return "Message{" + "messageId=" + messageId + ", chatSessionId=" + chatSessionId + ", Datetime=" + Datetime + ", messageContext=" + messageContext + '}';
    }
    
    
}
