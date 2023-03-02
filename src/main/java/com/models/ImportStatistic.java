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
public class ImportStatistic {
    private int importStatisticID;
    private int conID;
    private Date date;
    private int importDate;

    public ImportStatistic() {
    }

    public ImportStatistic(int importStatisticID, int conID, Date date, int importDate) {
        this.importStatisticID = importStatisticID;
        this.conID = conID;
        this.date = date;
        this.importDate = importDate;
    }

    public int getImportStatisticID() {
        return importStatisticID;
    }

    public void setImportStatisticID(int importStatisticID) {
        this.importStatisticID = importStatisticID;
    }

    public int getConID() {
        return conID;
    }

    public void setConID(int conID) {
        this.conID = conID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getImportDate() {
        return importDate;
    }

    public void setImportDate(int importDate) {
        this.importDate = importDate;
    }
}
