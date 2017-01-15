package com.mon_app.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by mecosse on 12/01/2017.
 */
public class Validate {
    public static boolean checkUser(String email,String password)
    {
        boolean st =false;

        try{
System.out.println("coucou");
            //chargement driver
            Class.forName("com.mysql.jdbc.Driver");

            //creation de la connexion avec bdd
            Connection con= DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/ihop","root","");
            PreparedStatement ps =con.prepareStatement
                    ("select * from user where username=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return st;
    }
}
