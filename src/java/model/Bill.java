/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author Sinh
 */
public class Bill {
    private int billId;
    private int userId;
    private int billTotal;
    private String billAddress;
    private Timestamp billDate;
    private String billPayment;
    private String billCode;
    private int billAccept;

    public Bill() {
    }

    public Bill(int billId, int userId, int billTotal, String billAddress, Timestamp billDate, String billPayment, String billCode, int billAccept) {
        this.billId = billId;
        this.userId = userId;
        this.billTotal = billTotal;
        this.billAddress = billAddress;
        this.billDate = billDate;
        this.billPayment = billPayment;
        this.billCode = billCode;
        this.billAccept = billAccept;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBillTotal() {
        return billTotal;
    }

    public void setBillTotal(int billTotal) {
        this.billTotal = billTotal;
    }

    public String getBillAddress() {
        return billAddress;
    }

    public void setBillAddress(String billAddress) {
        this.billAddress = billAddress;
    }

    public Timestamp getBillDate() {
        return billDate;
    }

    public void setBillDate(Timestamp billDate) {
        this.billDate = billDate;
    }

    public String getBillPayment() {
        return billPayment;
    }

    public void setBillPayment(String billPayment) {
        this.billPayment = billPayment;
    }

    public String getBillCode() {
        return billCode;
    }

    public void setBillCode(String billCode) {
        this.billCode = billCode;
    }

    public int getBillAccept() {
        return billAccept;
    }

    public void setBillAccept(int billAccept) {
        this.billAccept = billAccept;
    }

    
    
}
