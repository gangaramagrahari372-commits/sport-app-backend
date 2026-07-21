package controller;

import DAO.TeamDAO;
import model.Team;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/TeamServlet")
public class TeamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        TeamDAO dao = new TeamDAO();
        List<Team> list = dao.getAllTeams();

        request.setAttribute("teamList", list);
        request.getRequestDispatcher("team.jsp")
               .forward(request, response);
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String teamName = request.getParameter("teamName");
        String sport = request.getParameter("sport");

        Team team = new Team();
        team.setTeamName(teamName);
        team.setSport(sport);

        TeamDAO dao = new TeamDAO();
        dao.addTeam(team);

        response.sendRedirect("TeamServlet");
    }
}