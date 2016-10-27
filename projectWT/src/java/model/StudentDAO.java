/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author universe
 */
public class StudentDAO extends BaseDAO {
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
   
    public void createAccount(Student s) 
    {
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "insert into wtproject.studentdata values(?,?,?,?,?,?,?)";
        try {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setInt(1,s.getSrollno());
            preparedStatement.setString(2,s.getSfname());
            preparedStatement.setString(3,s.getSlname());
            preparedStatement.setString(4,s.getSpassword());
            preparedStatement.setString(5,s.getSdepartment());
            //preparedStatement.setDouble(6,s.getScontact());
            preparedStatement.setString(6,s.getSemailid());
            preparedStatement.setDouble(7,s.getScontact());
           
       
               int count = preparedStatement.executeUpdate();
                
                if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
                } catch (SQLException ex) {
                    Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
        
    }
    
    public  boolean checkLogin(Student c)
    {
        try {
            connection=getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
           String sql = "select * from wtproject.studentdata where srollno=? AND spassword= ?";
        try {
                preparedStatement = connection.prepareStatement(sql);
                
                preparedStatement.setInt(1,c.getSrollno());
                
                preparedStatement.setString(2,c.getSpassword());
            
                rs=preparedStatement.executeQuery();
                while( rs.next())
              {
                    return true;
              }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
         return false;
    }
}
