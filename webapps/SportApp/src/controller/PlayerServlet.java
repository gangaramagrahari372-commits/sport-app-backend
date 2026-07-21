package controller;

import DAO.PlayerDAO;
import model.Player;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/PlayerServlet")
public class PlayerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        PlayerDAO dao = new PlayerDAO();
        List<Player> list = dao.getAllPlayers();

        request.setAttribute("playerList", list);
        request.getRequestDispatcher("player.jsp")
               .forward(request, response);
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Player player = new Player();

        player.setPlayerName(request.getParameter("playerName"));
        player.setAge(Integer.parseInt(request.getParameter("age")));
        player.setTeam(request.getParameter("team"));

        PlayerDAO dao = new PlayerDAO();
        dao.addPlayer(player);

        response.sendRedirect("PlayerServlet");
    }
}