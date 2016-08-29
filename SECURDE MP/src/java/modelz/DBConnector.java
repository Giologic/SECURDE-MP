/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelz;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author William
 */
public class DBConnector {
    private static String url;
    private static String dbName;
    private static String driver;
    private static String username;
    private static String password;
    private static DBConnector connector;
    private Connection connect;
    
    
    DBConnector(){
        
        this.dbName = "securde2";
        this.url = "jdbc:mysql://localhost:3306/" + dbName;
        this.driver = "com.mysql.jdbc.Driver";
        this.username = "root"; //DON'T USE ROOT ACCOUNT
        this.password = "root";
        try{
            Class.forName(driver).newInstance();
            connect = DriverManager.getConnection(url, username, password);
            System.out.println("umayos ka pls");
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("no connection");
        }
    }
    
    public Connection getConnection(){
        
        
        return connect;
    }
    
    public Connection getConnect(){
        return connect;
    }
    
    public static DBConnector getInstance(){
        if(connector == null){
            connector = new DBConnector();
        }
        return connector;
    }
}
