/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;


/**
 *
 * @author DELL
 */
public class Message {
    private int message_id;
    private int chat_session_id;
    private Date date_time;
    private String message_context;

    public Message(int message_id, int chat_session_id, Date date_time, String message_context) {
        this.message_id = message_id;
        this.chat_session_id = chat_session_id;
        this.date_time = date_time;
        this.message_context = message_context;
    }

    public Message() {
    }

    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public int getChat_session_id() {
        return chat_session_id;
    }

    public void setChat_session_id(int chat_session_id) {
        this.chat_session_id = chat_session_id;
    }

    public Date getDate_time() {
        return date_time;
    }

    public void setDate_time(Date date_time) {
        this.date_time = date_time;
    }

    public String getMessage_context() {
        return message_context;
    }

    public void setMessage_context(String message_context) {
        this.message_context = message_context;
    }

    @Override
    public String toString() {
        return "Message{" + "message_id=" + message_id + ", chat_session_id=" + chat_session_id + ", date_time=" + date_time + ", message_context=" + message_context + '}';
    }
}
