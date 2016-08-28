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
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelz.DBConnector;;

/**
 *
 * @author William
 */
public class AccountHandler {
    
    public void register(Account acc, Address billAdd, Address shipAdd){
    	 try{   
                 System.out.println(billAdd.getCity());
                 System.out.println(shipAdd.getCity());
    		 DBConnector connector = new DBConnector();
    		 Connection conn = connector.getConnection();
    		 //customer_account
    		 PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customer_account "
    		 		+ "(username, password, first_name, last_name, middle_initial, email,"
    		 		+ " billing_house_no, billing_street, billing_subdivision, billing_postal_code,"
    		 		+ " billing_country, shipping_house_no, shipping_street, shipping_subdivision,"
    		 		+ " shipping_postal_code, shipping_country, billing_city, shipping_city) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)");
    		 pstmt.setString(1, acc.getUsername());
    		 pstmt.setString(2, acc.getPassword());
    		 pstmt.setString(3, acc.getFirst_name());
    		 pstmt.setString(4, acc.getLast_name());
    		 pstmt.setString(5, acc.getMiddle_initial());
    		 pstmt.setString(6, acc.getEmail());
    		 pstmt.setString(7, billAdd.getHouse_no());
    		 pstmt.setString(8, billAdd.getStreet());
    		 pstmt.setString(9, billAdd.getSubdivision());
    		 pstmt.setString(10, billAdd.getPostal_code());
    		 pstmt.setString(11, billAdd.getCountry());
    		 pstmt.setString(12, shipAdd.getHouse_no());
    		 pstmt.setString(13, shipAdd.getStreet());
    		 pstmt.setString(14, shipAdd.getSubdivision());
    		 pstmt.setString(15, shipAdd.getPostal_code());
    		 pstmt.setString(16, shipAdd.getCountry());
                 pstmt.setString(17, billAdd.getCity());
                 pstmt.setString(18, shipAdd.getCity());
    		 
    		 pstmt.executeUpdate();
    		 pstmt.close();
    		 conn.close();
    	 }
    	 catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} 
    }
    public ArrayList getAllProductManagerAccounts(){
        ArrayList<ProductManagerAccount> accounts = new ArrayList();
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        String sql = "SELECT * FROM productmanager_account";
        PreparedStatement pstmt;
        try{
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                ProductManagerAccount manager = new ProductManagerAccount(rs.getString("username"),rs.getString("password"),rs.getString("email"),"product manager");
                manager.setTimestamp(rs.getTimestamp("date"));
                accounts.add(manager);
               
            }
            return accounts;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public void addProductManagerAccount(ProductManagerAccount account){
        System.out.println("Adding new product manager");
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String sql = "INSERT INTO productmanager_account (username,password,email,status,password_changed,date) VALUES (?,?,?,?,?,?)";
        PreparedStatement pstmt;
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account.getUsername());
            pstmt.setString(2, account.getPassword());
            pstmt.setString(3, account.getEmail());
            pstmt.setString(4, "active");
            pstmt.setString(5, "no");
            pstmt.setTimestamp(6, timestamp);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void addAccountingManagerAccount(AccountingManagerAccount account){
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String sql = "INSERT INTO accountingmanager_account (username,password,email,status,password_changed,date) VALUES (?,?,?,?,?,?)";
        PreparedStatement pstmt;
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account.getUsername());
            pstmt.setString(2, account.getPassword());
            pstmt.setString(3, account.getEmail());
            pstmt.setString(4, "active");
            pstmt.setString(5, "no");
            pstmt.setTimestamp(6, timestamp);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public ArrayList getAllAccountingManagerAccounts(){
        ArrayList<AccountingManagerAccount> accounts = new ArrayList();
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        String sql = "SELECT * FROM accountingmanager_account";
        PreparedStatement pstmt;
        try{
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                AccountingManagerAccount manager = new AccountingManagerAccount(rs.getString("username"),rs.getString("password"),rs.getString("email"),"accounting manager");
                manager.setTimestamp(rs.getTimestamp("date"));
                accounts.add(manager);
               
            }
            return accounts;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public void assignPrivilege(String privilege, String username){
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        String sql = "INSERT INTO privilege (username, account_privilege) VALUES (?,?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, privilege);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public String getPrivilege(String username){
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        String privilege = "";
        String sql = "SELECT account_privilege FROM privilege WHERE username = ?";
        PreparedStatement pstmt;
        try { 
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                privilege = rs.getString("account_privilege");
                return privilege;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return privilege;
    }
    public AdministratorAccount adminLogin(String username, String password){
    	DBConnector connector = new DBConnector();
        AdministratorAccount loggedIn = null;
    	Connection conn = connector.getConnection();
		String sql = "SELECT * FROM administrator_account WHERE username = ? AND password = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
                                    loggedIn = new AdministratorAccount(rs.getString("username"), rs.getString("password")
                                    ,rs.getString("email"), "admin");
				pstmt.close();
				conn.close();
				return loggedIn;
			}
			else{
				return null;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loggedIn;
        
    }
    
    public String getproductManagerLoginStatus(String username){
        String status = "";
        
        return status;
    }
    
    public ProductManagerAccount productManagerLogin(String username, String password){
    	DBConnector connector = new DBConnector();
        ProductManagerAccount loggedIn = null;
    	Connection conn = connector.getConnection();
		String sql = "SELECT * FROM productmanager_account WHERE username = ? AND password = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
                                    loggedIn = new ProductManagerAccount(rs.getString("username"), rs.getString("password")
                                    ,rs.getString("email"), "product manager");
				pstmt.close();
				conn.close();
				return loggedIn;
			}
			else{
				return null;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loggedIn;
        
    }
    
    public AccountingManagerAccount accountingManagerLogin(String username, String password){
    	DBConnector connector = new DBConnector();
        AccountingManagerAccount loggedIn = null;
    	Connection conn = connector.getConnection();
		String sql = "SELECT * FROM accountingmanager_account WHERE username = ? AND password = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
                                    loggedIn = new AccountingManagerAccount(rs.getString("username"), rs.getString("password")
                                    ,rs.getString("email"), "product manager");
				pstmt.close();
				conn.close();
				return loggedIn;
			}
			else{
				return null;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loggedIn;
        
    }
    
    @SuppressWarnings("null")
	public CustomerAccount login(String username, String password){
    	DBConnector connector = new DBConnector();
        CustomerAccount loggedIn = null;
    	Connection conn = connector.getConnection();
		String sql = "SELECT * FROM customer_account WHERE username = ? AND password = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
                            Address billing = new Address(rs.getString("billing_house_no"),
                                    rs.getString("billing_street"),
                                    rs.getString("billing_subdivision"),
                                    rs.getString("billing_city"),
                                    rs.getString("billing_postal_code"),
                                    rs.getString("billing_country"));
                            Address shipping = new Address(rs.getString("shipping_house_no"),
                                    rs.getString("shipping_street"),
                                    rs.getString("shipping_subdivision"),
                                    rs.getString("shipping_city"),
                                    rs.getString("shipping_postal_code"),
                                    rs.getString("shipping_country"));
                                    loggedIn = new CustomerAccount(rs.getInt("id"),rs.getString("first_name"), 
                                    rs.getString("last_name"),
                                    rs.getString("middle_initial"),"customer",
                                    rs.getString("username"),
                                    rs.getString("password"), 
                                    rs.getString("email"),
                                    billing,shipping,
                                    new ShoppingCart());
//				loggedIn.setUsername(rs.getString("username"));
//				loggedIn.setPassword(rs.getString("password"));
//				loggedIn.setFirst_name(rs.getString("first_name"));
//				loggedIn.setLast_name(rs.getString("last_name"));
//				loggedIn.setMiddle_initial(rs.getString("middle_initial"));
//				loggedIn.setEmail(rs.getString("email"));
//				billAdd.setHouse_no(rs.getString("billing_house_no"));
//				billAdd.setStreet(rs.getString("billing_street"));
//				billAdd.setSubdivision(rs.getString("billing_subdivision"));
//				billAdd.setPostal_code(rs.getString("billing_postal_code"));
//				billAdd.setCountry(rs.getString("billing_country"));
//				shipAdd.setHouse_no(rs.getString("shipping_house_no"));
//				shipAdd.setStreet(rs.getString("shipping_street"));
//				shipAdd.setSubdivision(rs.getString("shipping_subdivision"));
//				shipAdd.setPostal_code(rs.getString("shipping_postal_code"));
//				shipAdd.setCountry(rs.getString("shipping_country"));
				pstmt.close();
				conn.close();
//				loggedIn.setBillingAddress(billAdd);
//				loggedIn.setShippingAddress(shipAdd);
				return loggedIn;
			}
			else{
				return null;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loggedIn;
        
    }
        
        public ShoppingCart getShoppingCart(CustomerAccount acc){
    	ArrayList<Product> prodList = new ArrayList<Product>();
        ShoppingCart cart = new ShoppingCart(acc.getId(), prodList);
    	int userID;
    	DBConnector connector = new DBConnector();
    	Connection conn = connector.getConnection();
    	PreparedStatement pstmt;
        ResultSet rs;
        ResultSet productRs;
    	String sql = "SELECT product_id, quantity FROM shopping_cart WHERE user_id = ?";
    	try{
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setInt(1, acc.getId());
    		rs = pstmt.executeQuery();
    		//pstmt.close();
    		while(rs.next()){
    				int prodID = rs.getInt("product_id");
    				int qty = rs.getInt("quantity");
    				pstmt = conn.prepareStatement("SELECT * FROM product where id = ?");
                                pstmt.setInt(1, prodID);
                                productRs = pstmt.executeQuery();
                                if(productRs.next()){
                                    Product prod = new Product(productRs.getInt("id"), 
                                            productRs.getString("name"), 
                                            productRs.getString("description"), 
                                            productRs.getDouble("price"), 
                                            productRs.getString("category"), 
                                            productRs.getString("image"));
                                    prod.setQuantity(qty);
                                    cart.addProduct(prod);
                                }
    			}
    		//pstmt.close();
                conn.close();
    		return cart;	
    	}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return new ShoppingCart();
    	
    }
    
    public void addToCart(ShoppingCart cart, Product prod, int quantity){
        prod.setQuantity(quantity);
        cart.addProduct(prod);
        int userID = cart.getUserID();
        int prodID = prod.getId();
        int tempCount, prodCount;
        String sql;
        DBConnector connector = new DBConnector();
    	Connection conn = connector.getConnection();
    	PreparedStatement pstmt;
    	sql = "SELECT COUNT(*) AS count FROM shopping_cart WHERE user_id = ? AND product_id = ?";
    	try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, userID);
//			pstmt.setInt(2, prodID);
//			ResultSet rs = pstmt.executeQuery();
                        
                        
                                    sql = "INSERT INTO shopping_cart (user_id, product_id, quantity) VALUES (?, ?, ?)";
                                    pstmt = conn.prepareStatement(sql);
                                    pstmt.setInt(1, userID);
                                    pstmt.setInt(2, prodID);
                                    pstmt.setInt(3, quantity);
                                    pstmt.executeUpdate();
                                    pstmt.close();
                            
//                            else{
//                                    sql = "SELECT quantity FROM shopping_cart WHERE user_id = ? AND product_id = ?";
//                                    pstmt = conn.prepareStatement(sql);
//                                    pstmt.setInt(1, userID);
//                                    pstmt.setInt(2, prodID);
//                                    rs = pstmt.executeQuery();
//                                    if(rs.next()){
//                                        prodCount = rs.getInt("quantity");
//                                        pstmt.close();
//                                        sql = "UPDATE shopping_cart SET quantity = ? WHERE user_id = ? AND product_id = ?";
//                                        pstmt = conn.prepareStatement(sql);
//                                        pstmt.setInt(1, prodCount++);
//                                        pstmt.setInt(2, userID);
//                                        pstmt.setInt(3, prodID);
//                                        pstmt.executeUpdate();
//                                        pstmt.close();
//                                    }
//                            }
                        //}
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
    
    public void checkoutCart(Account acc, ShoppingCart cart){
        //credit bills ni user
    	//cart.
    }
    
    public void removeFromCart(ShoppingCart cart, Product prod){
    	int prodID = prod.getId();
    	int userID = cart.getUserID();
    	cart.removeProduct(prod);
        int tempCount, prodCount;
        String sql;
        DBConnector connector = new DBConnector();
    	Connection conn = connector.getConnection();
    	PreparedStatement pstmt;
    	sql = "SELECT COUNT(*) AS count FROM shopping_cart WHERE customer_id = ? AND product_id = ?";
    	try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userID);
			pstmt.setInt(2, prodID);
			ResultSet rs = pstmt.executeQuery();
			tempCount = rs.getInt("count");
			pstmt.close();
			if(tempCount <= 0){
				System.out.println("Cannot Delete");
			}
			else{
				sql = "SELECT quantity FROM shopping_cart WHERE user_id = ? AND product_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, userID);
				pstmt.setInt(2, prodID);
				rs = pstmt.executeQuery();
				prodCount = rs.getInt("quantity");
				pstmt.close();
				sql = "UPDATE shopping_cart SET quantity = ? WHERE user_id = ? AND product_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prodCount--);
				pstmt.setInt(2, userID);
				pstmt.setInt(3, prodID);
				pstmt.executeUpdate();
				pstmt.close();
			}
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }
    
    public void clearCart(CustomerAccount account){
    //change. Instead of DELETE (since bad practice) add a column flag for shopping cart isDeleted
    //isDeleted = 1 (delete), isDeleted = 0 (still there)
      account.getShoppingCart().clearCart();
      int userID = account.getId();
      DBConnector connector = new DBConnector();
  	  Connection conn = connector.getConnection();
  	  try {
		PreparedStatement pstmt = conn.prepareStatement("DELETE FROM shopping_cart WHERE user_id = ?");
		pstmt.setInt(1, userID);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
  	  } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
  	  }
    }
    
   
}