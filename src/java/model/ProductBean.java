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
public class ProductBean {

    private int productId;
    private String categoryId;
    private String productName;
    private int productPrice;
    private int productSale;
    private String productImage;
    private String productImage2;
    private String productImage3;
    private String productDescription;
    private String productOverview;
    private String productMore;

    public ProductBean() {
    }

    public ProductBean(int productId, String categoryId, String productName, int productPrice, int productSale, String productImage, String productImage2, String productImage3, String productDescription, String productOverview, String productMore) {
        this.productId = productId;
        this.categoryId = categoryId;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productSale = productSale;
        this.productImage = productImage;
        this.productImage2 = productImage2;
        this.productImage3 = productImage3;
        this.productDescription = productDescription;
        this.productOverview = productOverview;
        this.productMore = productMore;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductSale() {
        return productSale;
    }

    public void setProductSale(int productSale) {
        this.productSale = productSale;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductImage2() {
        return productImage2;
    }

    public void setProductImage2(String productImage2) {
        this.productImage2 = productImage2;
    }

    public String getProductImage3() {
        return productImage3;
    }

    public void setProductImage3(String productImage3) {
        this.productImage3 = productImage3;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductOverview() {
        return productOverview;
    }

    public void setProductOverview(String productOverview) {
        this.productOverview = productOverview;
    }

    public String getProductMore() {
        return productMore;
    }

    public void setProductMore(String productMore) {
        this.productMore = productMore;
    }
    
   

}
