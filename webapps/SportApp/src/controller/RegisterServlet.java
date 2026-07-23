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

        boolean status = false;
try {
    status = dao.registerUser(user);
} catch (Exception e) {
    throw new ServletException("Database Error: " + e.getMessage(), e);
}

if (status) {
    response.sendRedirect("login.jsp");
} else {
    throw new ServletException("Registration Failed! UserDAO returned false. Check database connection or logs.");
}
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}