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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CategoryBean;

/**
 *
 * @author Sinh
 */
public class CategoryDAO {

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
    
    public ArrayList<CategoryBean> getListCategory(String category_sex){
        String query = "select * from category where category_sex = ?";
        ArrayList<CategoryBean> list = new ArrayList<>();
        try(Connection c = openConnection()){
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, category_sex);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                CategoryBean cat = new CategoryBean();
                cat.setCategoryId(rs.getString("category_id"));
                cat.setCategoryName(rs.getString("category_name"));
                list.add(cat);
            }
        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
        }
        return list;
    }
    public String getCategoryName(String category_id){
        String query = "select * from category where category_id = ?";
        String name="";
        try(Connection c = openConnection()){
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, category_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
              name = rs.getString("category_name");
            }
        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
        }
        return name;
    }
    
}
