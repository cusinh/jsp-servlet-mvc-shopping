package dao;

import java.sql.*;
import model.ProfileBean;

/**
 *
 * @author Sinh
 */
public class UserDAO {

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

    public static boolean isDuplicateEmailorPhone(String phone, String email) {
        String query = "select id from user where phone = ? or email = ?";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, phone);
            ps.setString(2, email);
            return ps.executeQuery().next();
        } catch (Exception e) {
            System.out.println("error" + e.getMessage());
        }
        return false;
    }

    public static boolean addNewUser(ProfileBean profileBean) {
        String query = "insert into user(name,phone,email,password,role) values (?,?,?,?,0)";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, profileBean.getName());
            ps.setString(2, profileBean.getPhone());
            ps.setString(3, profileBean.getEmail());
            ps.setString(4, profileBean.getPassword());
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            System.out.println("error : " + e.getMessage());
        }
        return false;
    }

    public static ProfileBean getProfileBean(String email, String password) {
        ProfileBean profile = null;
        String query = "SELECT * FROM user WHERE email = ? and password = ?";
        try (Connection c = openConnection()) {
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                profile = new ProfileBean(rs.getInt("id"),rs.getString("name"), rs.getString("phone"), rs.getString("email"), rs.getString("password"));
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        }
        return profile;
    }

    public static ProfileBean checkLogin(String email, String password) {
        return getProfileBean(email, password);
    }
}
