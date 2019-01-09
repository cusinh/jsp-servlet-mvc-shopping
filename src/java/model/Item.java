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
public class Item {
    private ProductBean product;
    private int quantity;

    public Item() {
    }

    public Item(ProductBean product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public ProductBean getProduct() {
        return product;
    }

    public void setProduct(ProductBean product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quanlity) {
        this.quantity = quanlity;
    }       
}
