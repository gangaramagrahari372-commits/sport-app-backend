package controller;

import DAO.MatchDAO;
import model.Match;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/MatchServlet")
public class MatchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        MatchDAO dao = new MatchDAO();
        List<Match> list = dao.getAllMatches();

        request.setAttribute("matchList", list);
        request.getRequestDispatcher("match.jsp")
               .forward(request, response);
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Match match = new Match();

        match.setTeam1(request.getParameter("team1"));
        match.setTeam2(request.getParameter("team2"));
        match.setMatchDate(request.getParameter("matchDate"));

        MatchDAO dao = new MatchDAO();
        dao.addMatch(match);

        response.sendRedirect("MatchServlet");
    }
}