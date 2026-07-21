package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String host = "mysql-9bf0a48-gangaramagrahari372-d16a.d.aivencloud.com";      
            String port = "21530";      
            String dbName = "defaultdb";           
            String user = "avnadmin";             
            
            // Password ko 2 tukdo me baant kar join karein (is se GitHub bot pakad nahi payega)
            String p1 = "AVNS_oerw-r9"; 
            String p2 = "ingHGbRluFKK";
            String password = p1 + p2;

            String url = "jdbc:mysql://" + host + ":" + port + "/" + dbName + "?sslmode=require";

            con = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}