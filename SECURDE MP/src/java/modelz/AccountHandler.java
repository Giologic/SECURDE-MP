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
import java.util.ArrayList;
import modelz.DBConnector;
import java.sql.Statement;


/**
 *
 * @author William
 */
public class AccountHandler {
    DBConnector connector;
    
    
    public AccountHandler(){
        connector = DBConnector.getInstance();
    }
    
    public void register(CustomerAccount acc, Address billAdd, Address shipAdd){
    	 try{
    		 int custID, billID, shipID;
    		 ResultSet rs;
    		 Connection conn = connector.getConnection();
    		 //customer_account
    		 PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customer_account (username, password, first_name, last_name, middle_initial, email) VALUES (?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
    		 pstmt.setString(1, acc.getUsername());
    		 pstmt.setString(2, acc.getPassword());
    		 pstmt.setString(3, acc.getFirst_name());
    		 pstmt.setString(4, acc.getLast_name());
    		 pstmt.setString(5, acc.getMiddle_initial());
    		 pstmt.setString(6, acc.getEmail());
    		 pstmt.executeUpdate();
    		 pstmt.close();
    		 //get customer id
    		 pstmt = conn.prepareStatement("SELECT id FROM customer_account WHERE username = ? && password = ?");
    		 pstmt.setString(1, acc.getUsername());
    		 pstmt.setString(2, acc.getPassword());
    		 rs = pstmt.executeQuery();
    		 custID = rs.getInt("id");
    		 pstmt.close();
    		 //billing_address
    		 pstmt = conn.prepareStatement("INSERT INTO billing_address (customer_id, house_no, street, subdivision, postal_code, country) VALUES (?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
    		 pstmt.setInt(1, custID);
    		 pstmt.setString(2, billAdd.getHouse_no());
    		 pstmt.setString(3, billAdd.getStreet());
    		 pstmt.setString(4, billAdd.getSubdivision());
    		 pstmt.setString(5, billAdd.getPostal_code());
    		 pstmt.setString(6, billAdd.getCountry());
    		 pstmt.executeUpdate();
    		 pstmt.close();
    		 //shipping_address
    		 pstmt = conn.prepareStatement("INSERT INTO shipping_address (customer_id, house_no, street, subdivision, postal_code, country) VALUES (?, ?, ?, ?, ?, ?)");
    		 pstmt.setInt(1, custID);
    		 pstmt.setString(2, shipAdd.getHouse_no());
    		 pstmt.setString(3, shipAdd.getStreet());
    		 pstmt.setString(4, shipAdd.getSubdivision());
    		 pstmt.setString(5, shipAdd.getPostal_code());
    		 pstmt.setString(6, shipAdd.getCountry());
    		 pstmt.executeUpdate();
    		 pstmt.close();
    		 //billID
    		 pstmt = conn.prepareStatement("SELECT id FROM billing_address WHERE customer_id = ?");
    		 pstmt.setInt(1, custID);
    		 rs = pstmt.executeQuery();
    		 billID = rs.getInt("id");
    		 pstmt.close();
    		 //shipID
    		 pstmt = conn.prepareStatement("SELECT id FROM billing_address WHERE customer_id = ?");
    		 pstmt.setInt(1, custID);
    		 rs = pstmt.executeQuery();
    		 shipID = rs.getInt("id");
    		 pstmt.close();
    		 //update customer account
    		 pstmt = conn.prepareStatement("UPDATE customer_account SET billing_address_id = ?, shipping_address_id = ? WHERE customer_account.id = ?");
    		 pstmt.setInt(1, billID);
    		 pstmt.setInt(2, shipID);
    		 pstmt.setInt(3, custID);
    		 pstmt.executeUpdate();
    		 pstmt.close();
    		 conn.close();
    	 }
    	 catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} 
    }
    
    public int login(String username, String password){
    	Connection conn = connector.getConnection();
		String sql = "SELECT id FROM customer_account WHERE username = ? && password = ?";
		PreparedStatement pstmt;
		int id;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				id = rs.getInt("id");
				conn.close();
				pstmt.close();
				return id;
			}
			else{
				return -1;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
        
    }
    
    public void addToCart(ShoppingCart cart, Product prod){
        cart.addProduct(prod);
        //db
    }
    
    public void checkoutCart(){
        
    }
    
    public void removeFromCart(){
        
    }
    
    public void clearCart(ShoppingCart cart){
      cart.clearCart();
      //db
    }
}