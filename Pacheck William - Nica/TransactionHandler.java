/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author William
 */
public class TransactionHandler {
    
    
    public void validateCredentials(){
        
    }
    
    public ArrayList<Transaction> getAllTransaction(){
    	ArrayList<Transaction> allTransactions = new ArrayList<Transaction>();
		DBConnector connector = new DBConnector();
		Connection conn = connector.getConnection();
		PreparedStatement pstmt;
		ResultSet rs;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM transaction");
			rs = pstmt.executeQuery();
			pstmt.close();
			while(rs.next()){
				Transaction trans = new Transaction(rs.getInt("id"), rs.getInt("user_id"), rs.getInt("shopping_cart_id"), rs.getDate("date"),
		                   rs.getBoolean("status"));
				allTransactions.add(trans);		
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return allTransactions;
    }
    
    
    public void processTransaction(Transaction trans){
    	int transID = trans.getId();
    	int userID = trans.getUserID();
    }
}