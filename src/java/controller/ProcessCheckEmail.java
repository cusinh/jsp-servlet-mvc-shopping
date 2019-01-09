/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BillDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bill;
import model.Cart;

/**
 *
 * @author Sinh
 */
public class ProcessCheckEmail extends HttpServlet { 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int billid = (int) session.getAttribute("billid");
        String randomcode = request.getParameter("randomcode");

        RequestDispatcher dis = request.getRequestDispatcher("checkemail.jsp");
        
        String bill_code = BillDAO.checkCode(billid);
      
        if(randomcode.equals(bill_code)){
            BillDAO.updateBill("", 1, billid);
            
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Order Success & We will ship to you as soon as possible');");
            pw.println("location='index.jsp';");
            pw.println("</script>");
//            RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
//            rd.include(request, response);
            
        }    
        else{
            request.setAttribute("error", "Code is invalid !");
            dis.forward(request, response);
        }
        
    }
}
