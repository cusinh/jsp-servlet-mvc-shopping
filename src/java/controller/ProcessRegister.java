package controller;

import dao.UserDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ProfileBean;
import util.Validate;

/**
 *
 * @author Sinh
 */
public class ProcessRegister extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phone_number");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        RequestDispatcher dis = request.getRequestDispatcher("register.jsp");

        if (!Validate.checkName(name)) {
            request.setAttribute("error", "User name is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkPhone(phoneNumber)) {
            request.setAttribute("error", "Phone number is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkEmail(email)) {
            request.setAttribute("error", "Email is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkPassword(password)) {
            request.setAttribute("error", "Password is invalid");
            dis.forward(request, response);
        } else if (UserDAO.isDuplicateEmailorPhone(phoneNumber, email)) {
            request.setAttribute("error", "Phone or email is duplicate");
            dis.forward(request, response);
        } else {
            ProfileBean profileBean = new ProfileBean(0,name, phoneNumber, email, password);

            boolean result = UserDAO.addNewUser(profileBean);
            if (result) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("error", "Try again !");
                dis.forward(request, response);
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
