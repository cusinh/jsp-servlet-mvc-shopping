/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.ProductBean;

/**
 *
 * @author Sinh
 */
public class SearchDAO {

    public static Connection openConnection() {
        Connection conn = null;
        try {
            Class.forName(DBConfig.driver);
            conn = DriverManager.getConnection(DBConfig.url, DBConfig.user, DBConfig.password);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error : " + e.getMessage());
        }
        return conn;
    }
 
    public ArrayList<ProductBean> getProductByProductName(String productName) {
        ArrayList<ProductBean> list = new ArrayList<>();
        String query = "SELECT * FROM product WHERE product_name like '%" + productName + "%' or category_id like '%" + productName + "%'";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductBean b = new ProductBean();
                b.setProductId(rs.getInt("product_id"));
                b.setCategoryId(rs.getString("category_id"));
                b.setProductName(rs.getString("product_name"));
                b.setProductPrice(rs.getInt("product_price"));
                b.setProductSale(rs.getInt("product_sale"));
                b.setProductImage(rs.getString("product_image"));
                b.setProductImage2(rs.getString("product_image2"));
                b.setProductImage3(rs.getString("product_image3"));
                b.setProductDescription(rs.getString("product_description"));
                b.setProductOverview(rs.getString("product_overview"));
                b.setProductMore(rs.getString("product_more"));
                list.add(b);
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        }
        return list;
    }

}
