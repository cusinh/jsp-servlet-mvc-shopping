package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ProfileBean;
import dao.UserDAO;
import javax.servlet.RequestDispatcher;
import util.Validate;


public class ProcessLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
        HttpSession session = request.getSession();
        ProfileBean profileBean = UserDAO.checkLogin(email, password);
        RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
        
        if(profileBean != null){
            session.setAttribute("user", profileBean);
            response.sendRedirect("index.jsp");
        }
        else if (!Validate.checkEmail(email)) {
            request.setAttribute("error", "Email is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkPassword(password)) {
            request.setAttribute("error", "Password is invalid");
            dis.forward(request, response);
        }
        else{
            session.setAttribute("message", "Invalid login information");
            response.sendRedirect("login.jsp");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
