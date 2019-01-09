/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sinh
 */
public class BillDetail {
    private int billDetailId;
    private int billId;
    private int productId;
    private int billPrice;
    private int billQuantity;

    public BillDetail() {
    }

    public BillDetail(int billDetailId, int billId, int productId, int billPrice, int billQuantity) {
        this.billDetailId = billDetailId;
        this.billId = billId;
        this.productId = productId;
        this.billPrice = billPrice;
        this.billQuantity = billQuantity;
    }

    public BillDetail(int id, int productId, int productPrice, int quantity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getBillDetailId() {
        return billDetailId;
    }

    public void setBillDetailId(int billDetailId) {
        this.billDetailId = billDetailId;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getBillPrice() {
        return billPrice;
    }

    public void setBillPrice(int billPrice) {
        this.billPrice = billPrice;
    }

    public int getBillQuantity() {
        return billQuantity;
    }

    public void setBillQuantity(int billQuantity) {
        this.billQuantity = billQuantity;
    }

    
}
