package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;

public class UserDAO {

    Connection con = DBConnection.getConnection();

    // User Login
    public boolean loginUser(User user) {

        boolean status = false;

        try {

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM users WHERE username=? AND password=?");

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // User Registration
    public boolean registerUser(User user) {

        boolean status = false;

        try {

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO users(username,password) VALUES(?,?)");

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            int i = ps.executeUpdate();

            if (i > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

}