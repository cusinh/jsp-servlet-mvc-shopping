/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.UserDAO.openConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import model.Bill;

/**
 *
 * @author Sinh
 */
public class BillDAO {

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

    public static boolean insertBill(Bill bill) {
        String query = "insert into bill(bill_id,user_id,bill_total,bill_payment,bill_address,bill_datetime,bill_code,bill_accept) values (?,?,?,?,?,?,?,?)";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setInt(1, bill.getBillId());
            ps.setInt(2, bill.getUserId());
            ps.setInt(3, bill.getBillTotal());
            ps.setString(4, bill.getBillPayment());
            ps.setString(5, bill.getBillAddress());
            ps.setTimestamp(6, bill.getBillDate());
            ps.setString(7, bill.getBillCode());
            ps.setInt(8, bill.getBillAccept());
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            System.out.println("error : " + e.getMessage());
        }
        return false;
    }

    public static boolean updateBill(String billcode, int billaccept, int billid) {
        String query = "update bill set bill_code = ?, bill_accept = ? where bill_id = ?";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);

            ps.setString(1, billcode);
            ps.setInt(2, billaccept);
            ps.setInt(3, billid);
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            System.out.println("error : " + e.getMessage());
        }
        return false;
    }

    public static String checkCode(int bill_id) {
        String randcode = "";
        String query = "select bill_code from bill where bill_id = ?";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setInt(1, bill_id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                randcode = rs.getString("bill_code");
            }
        } catch (Exception e) {
            System.out.println("error" + e.getMessage());
        }
        return randcode;
    }
}
