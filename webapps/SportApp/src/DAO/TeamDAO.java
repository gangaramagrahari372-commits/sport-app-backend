package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Team;

public class TeamDAO {

    Connection con = DBConnection.getConnection();

    public void addTeam(Team team) {

        try {

            PreparedStatement ps = con.prepareStatement(
                    "insert into team(teamName,sport) values(?,?)");

            ps.setString(1, team.getTeamName());
            ps.setString(2, team.getSport());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Team> getAllTeams() {

        List<Team> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement("select * from team");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Team t = new Team();

                t.setId(rs.getInt("id"));
                t.setTeamName(rs.getString("teamName"));
                t.setSport(rs.getString("sport"));

                list.add(t);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}