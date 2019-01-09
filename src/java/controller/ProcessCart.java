/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.ProductBean;

/**
 *
 * @author Sinh
 */
public class ProcessCart extends HttpServlet {   
    
    private final ProductDAO productDAO = new ProductDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productId = request.getParameter("ProductId");
        
        Cart cart = (Cart) session.getAttribute("cart");
        
        try {
            int idProduct = Integer.parseInt(productId);
            ProductBean b = productDAO.getProductById(idProduct);
            Item item = new Item();
            switch(command){
                case "plus": 
                    if(cart.getCartItems().containsKey(idProduct)){
                        cart.insertToCart(idProduct, new Item(b,cart.getCartItems().get(idProduct).getQuantity()));
                    }
                    else{
                        cart.insertToCart(idProduct, new Item(b, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp");
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("index.jsp");
    }
}
