/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Abhishek
 */
import java.sql.*;


public class postgreConn {
    
    private Connection connection = null;
    public Connection getConnection()
    {
        if (connection != null)
            return null;
        String url = "Jdbc:postgresql://localhost:5433/postgres";
        try
        {
           Class.forName("org.postgresql.Driver");
          
           
           connection = DriverManager.getConnection(url, "postgres", "ABHISHEK");
           
           if (connection != null) {
               System.out.println("Connecting to database...");
           }
        } catch(Exception e){
            System.out.println("Problem when connecting to the database 1");
        }
        return connection; 
    }
}
