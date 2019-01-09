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
public class CategoryBean {

    private String categoryId;
    private String categoryName;
    private String categorySex;
    
    

    public CategoryBean() {
    }

    public CategoryBean(String categoryId, String categoryName, String categorySex) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categorySex = categorySex;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategorySex() {
        return categorySex;
    }

    public void setCategorySex(String categorySex) {
        this.categorySex = categorySex;
    }

    


}
