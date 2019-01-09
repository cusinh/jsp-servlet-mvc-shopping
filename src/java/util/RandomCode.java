/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author Sinh
 */
public class RandomCode {

    public static String randomCode(int lenght) {
        String result = "";
        String uppercase = "QWERTYUIOPASDFGHJKLZXCVBNM";
        String lowercase = uppercase.toLowerCase();
        String number = "0123456789";
        String randomString = uppercase + lowercase + number;

        for (int i = 0; i <= lenght; i++) {
            int temp = (int) Math.round(Math.random() * randomString.length());
            result += randomString.charAt(temp);
        }

        return result;
    }
}
