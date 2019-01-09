/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.BillDetail;

/**
 *
 * @author Sinh
 */
public class BillDetailDAO {
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
    
    public static boolean insertBillDetail(BillDetail billDetail) {

        String query = "insert into bill_detail(bill_detail_id,bill_id,product_id,bill_price,quantity) values (?,?,?,?,?)";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setInt(1, billDetail.getBillDetailId());
            ps.setInt(2, billDetail.getBillId());
            ps.setInt(3, billDetail.getProductId());
            ps.setInt(4, billDetail.getBillPrice());
            ps.setInt(5, billDetail.getBillQuantity());

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("error : " + e.getMessage());
        }
        return false;
    }
}
