/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author William
 */
public class TransactionHandler {
    
    
    public boolean checkCreditCard(String cardNum, String secCode, String ownerName){
        System.out.println("Checking credit card");
    	boolean status = false;
    	DBConnector connector = new DBConnector();
    	Connection conn = connector.getConnection();
    	PreparedStatement pstmt;
    	ResultSet rs;
    	try{
    		pstmt = conn.prepareStatement("SELECT id FROM credit_card WHERE credit_num = ? AND security_code = ? AND full_name = ?");
    		pstmt.setString(1, cardNum);
                System.out.println("cardNum: " +cardNum);
    		pstmt.setString(2, secCode);
                System.out.println("Sec Code: " +secCode);
                pstmt.setString(3, ownerName);
                System.out.println("owner: " +ownerName);
    		rs = pstmt.executeQuery();
    		if(rs.next()){
                    System.out.println("true");
                    status = true;
                    return status;
    		}
                else{
                    System.out.println("false");
                    status = false;
                    return status;
                } 
                    
    		
    	}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println("nothing");
    	return status;
    }
    
    public boolean checkBalance(double total, String ownerName, String creditNum, String securityCode){
        System.out.println("Checking balance");
        boolean status = false;
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        ResultSet rs;
        String sql = "SELECT balance FROM credit_card WHERE credit_num = ? AND security_code = ? AND full_name = ?";
        try{
            pstmt= conn.prepareStatement(sql);
            pstmt.setString(1, creditNum);
            pstmt.setString(2, securityCode);
            pstmt.setString(3, ownerName);
            rs = pstmt.executeQuery();
            if(rs.next()){
                double balance = rs.getDouble("balance");
                if(balance >= total){
                    System.out.println("true");
                    status = true;
                    return status;
                }
                else{
                    System.out.println("false");
                    status = false;
                    return status;
                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        System.out.println("nothing");
        return status;
    }
    
    public double getBalance(String creditNum, String securityCode, String ownerName){
        System.out.println("Getting balance");
        boolean status = false;
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        ResultSet rs;
        String sql = "SELECT balance FROM credit_card WHERE credit_num = ? AND security_code = ? AND full_name = ?";
        try{
            pstmt= conn.prepareStatement(sql);
            pstmt.setString(1, creditNum);
            pstmt.setString(2, securityCode);
            pstmt.setString(3, ownerName);
            rs = pstmt.executeQuery();
            if(rs.next()){
                return rs.getDouble("balance");
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return -1;
    }
    
    public void setNewBalance(double newBalance, String creditNum, String securityCode, String ownerName){
        System.out.println("Setting new balance");
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        ResultSet rs;
        String sql = "UPDATE credit_card SET balance = ? WHERE credit_num = ? AND security_code = ? AND full_name = ?";
        try{
            pstmt= conn.prepareStatement(sql);
            pstmt.setDouble(1, newBalance);
            pstmt.setString(2, creditNum);
            pstmt.setString(3, securityCode);
            pstmt.setString(4, ownerName);
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
