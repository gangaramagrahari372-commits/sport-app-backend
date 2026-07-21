package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Match;

public class MatchDAO {

    Connection con = DBConnection.getConnection();

    public void addMatch(Match match) {

        try {

            PreparedStatement ps = con.prepareStatement(
                    "insert into matchdetails(team1,team2,matchDate) values(?,?,?)");

            ps.setString(1, match.getTeam1());
            ps.setString(2, match.getTeam2());
            ps.setString(3, match.getMatchDate());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<Match> getAllMatches() {

        List<Match> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement(
                    "select * from matchdetails");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Match m = new Match();

                m.setId(rs.getInt("id"));
                m.setTeam1(rs.getString("team1"));
                m.setTeam2(rs.getString("team2"));
                m.setMatchDate(rs.getString("matchDate"));

                list.add(m);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}