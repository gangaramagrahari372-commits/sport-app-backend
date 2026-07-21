package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Player;

public class PlayerDAO {

    Connection con = DBConnection.getConnection();

    public void addPlayer(Player player) {

        try {

            PreparedStatement ps = con.prepareStatement(
                    "insert into player(playerName,age,team) values(?,?,?)");

            ps.setString(1, player.getPlayerName());
            ps.setInt(2, player.getAge());
            ps.setString(3, player.getTeam());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<Player> getAllPlayers() {

        List<Player> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement("select * from player");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Player p = new Player();

                p.setId(rs.getInt("id"));
                p.setPlayerName(rs.getString("playerName"));
                p.setAge(rs.getInt("age"));
                p.setTeam(rs.getString("team"));

                list.add(p);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}