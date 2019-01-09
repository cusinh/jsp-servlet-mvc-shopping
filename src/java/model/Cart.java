/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Sinh
 */
public class Cart {

    private HashMap<Integer, Item> cartItems;

    public Cart() {
        cartItems = new HashMap<>();
    }

    public Cart(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Integer, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public void insertToCart(int key, Item item) {
        boolean bln = cartItems.containsKey(key);
        if (bln) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(item.getProduct().getProductId(), item);
        } else {
            cartItems.put(item.getProduct().getProductId(), item);
        }
    }

    public void removeToCart(int product) {
        boolean bln = cartItems.containsKey(product);
        if (bln) {
            cartItems.remove(product);
        }
    }

    public int countItem() {
        int count = 0;
        count = cartItems.size();
        return count;
    }


    public double total() {
        int count = 0;
        for (Map.Entry<Integer, Item> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity();
        }
        return count;
    }
}
