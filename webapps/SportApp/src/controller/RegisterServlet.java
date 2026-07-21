package controller;

import DAO.UserDAO;
import model.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        User user = new User();

        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        UserDAO dao = new UserDAO();

        if (dao.registerUser(user)) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}