/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BillDAO;
import dao.BillDetailDAO;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;
import model.ProfileBean;
import tool.sendMail;
import util.RandomCode;

/**
 *
 * @author Sinh
 */
public class ProcessCheckOut extends HttpServlet {

    private final BillDAO billDAO = new BillDAO();
    private final BillDetailDAO billDetailDAO = new BillDetailDAO();
    String randCode = RandomCode.randomCode(8);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String address = request.getParameter("address");
        String payment = request.getParameter("payment");
        RequestDispatcher dis = request.getRequestDispatcher("checkemail.jsp");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        ProfileBean profileBean = (ProfileBean) session.getAttribute("user");
        sendMail sm = new sendMail();
            
        try {
            int id = (int) new Date().getTime();
            Bill bill = new Bill();
            bill.setBillId(id);
            bill.setBillAddress(address);
            bill.setBillPayment(payment);
            bill.setUserId(profileBean.getUserId());
            bill.setBillDate(new Timestamp(new Date().getTime()));
            bill.setBillTotal((int) cart.total());
            bill.setBillCode(randCode);
            bill.setBillAccept(0);
            billDAO.insertBill(bill);
            
            for(Map.Entry<Integer,Item> list : cart.getCartItems().entrySet()){
                billDetailDAO.insertBillDetail(new BillDetail(0, id, list.getValue().getProduct().getProductId(),
                        list.getValue().getProduct().getProductPrice(),
                        list.getValue().getQuantity()));
            }
            
            sm.sendMail(profileBean.getEmail(), "Shopin order confirmation",
                    "Hello "+profileBean.getName()+"\n"
                            +"Thank you for your order !\n"
                            +"Total you can pay is "+cart.total()+"\n"
                            +"\n"+"Your confirmation code is : " + randCode
                            +"\nThanks,\n" 
                            +"Your friends at Shopin");
            cart = new Cart();
            session.setAttribute("cart", cart);
            session.setAttribute("billid", bill.getBillId());
            dis.forward(request, response);
        } catch (Exception e) {
        }
    }

}
