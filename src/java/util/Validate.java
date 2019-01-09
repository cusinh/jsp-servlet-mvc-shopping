package util;

/**
 *
 * @author Sinh
 */
public class Validate {
    public static boolean checkName(String name){
        return name.matches("[\\p{L}\\s]{6,40}");
    }
    public static boolean checkPhone(String phone){
        return phone.matches("\\d{9,11}");
    }
    public static boolean checkEmail(String email){
        return email.matches("^[A-Za-z0-9+_.-]+@(.+)$");
    }
    public static boolean checkPassword(String password){
        return password.matches("\\w{6,21}");
    }
}
