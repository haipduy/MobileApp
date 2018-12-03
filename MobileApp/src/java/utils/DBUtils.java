/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PDH
 */
public class DBUtils implements Serializable{
    public static Connection getConnection(){
        Connection conn=null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=MobileApp", "sa", "12345678");
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException ex){
            ex.printStackTrace();
        }
        return conn;
    }
}
