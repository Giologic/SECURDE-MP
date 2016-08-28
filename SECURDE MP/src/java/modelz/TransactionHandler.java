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
    
    public void addPurchase(CustomerAccount account, Product prod){
        DBConnector connect = new DBConnector();
        Connection conn = connect.getConnection();
        PreparedStatement ps;
        String sql = "INSERT INTO purchases (user_id, product_id) VALUES (?,?)";
        try{
            ps = conn.prepareStatement(sql);
            ps.setInt(1, account.getId());
            ps.setInt(2, prod.getId());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public boolean checkIfPurchased(CustomerAccount account){
        DBConnector connect = new DBConnector();
        Connection conn = connect.getConnection();
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT * FROM purchases WHERE user_id = ?";
        try{
            ps = conn.prepareStatement(sql);
            ps.setInt(1, account.getId());
            rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
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
    
    public double getTotal(String category){
        DBConnector connect = new DBConnector();
        Connection conn = connect.getConnection();
        PreparedStatement pstmt;
        String sql = "SELECT total FROM sales WHERE category = ?";
        double total;
        ResultSet rs;
        try{
           pstmt = conn.prepareStatement(sql);
           pstmt.setString(1, category);
           rs = pstmt.executeQuery();
           if(rs.next()){
               total = rs.getDouble("total");
           }
        }catch(Exception e){
            e.printStackTrace();
        }
        return -1;
        
    }
    
    public double filterAllSales(){
        DBConnector connection = new DBConnector();
        Connection conn = connection.getConnection();
        PreparedStatement pstmt;
        String sql = "SELECT SUM(total) AS \"total sales\" FROM sales";
        double totalSales;
        try{
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                totalSales = rs.getDouble("total sales");
                return totalSales;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return -1;
    }
    
    public ArrayList<ProductSales> filterCategorySales(String category){
        DBConnector connection = new DBConnector();
        Connection conn = connection.getConnection();
        PreparedStatement pstmt;
        String sql = "SELECT * FROM sales WHERE category = ?";
        ArrayList<ProductSales> products = new ArrayList();
        double totalSales;
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, category);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                totalSales = rs.getDouble("total");
                String prodName = rs.getString("product_name");
                ProductSales product = new ProductSales(prodName, totalSales);
                products.add(product);
            }
            return products;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public ArrayList<ProductSales> filterProductSales(){
        DBConnector connection = new DBConnector();
        Connection conn = connection.getConnection();
        PreparedStatement pstmt;
        ArrayList<ProductSales> products = new ArrayList();
        String sql = "SELECT * FROM sales";
        double totalSales;
        try{
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                totalSales = rs.getDouble("total");
                String prodName = rs.getString("product_name");
                ProductSales product = new ProductSales(prodName, totalSales);
                products.add(product);
            }
            return products;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
    public void addNewSale(Product prod){
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        String sql = "SELECT * FROM sales WHERE product_name = ?";
        //String sql = "INSERT INTO sales (product_name,category,total) VALUES (?,?,?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, prod.getName());
            ResultSet rs = pstmt.executeQuery();
            if(!rs.next()){
                sql = "INSERT INTO sales (product_name,category,total) VALUES (?,?,?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, prod.getName());
                pstmt.setString(2, prod.getCategory());
                pstmt.setDouble(3, 0);
                pstmt.executeUpdate();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public ProductSales getProductSale(String prodName){
        
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        String sql = "SELECT * FROM sales WHERE product_name = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, prodName);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                ProductSales salesProduct = new ProductSales(rs.getString("product_name"), rs.getDouble("total"));
                return salesProduct;
            }else{
                return null;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
    
    public void setNewTotal(double total, String prodName){
        DBConnector connector = new DBConnector();
        Connection conn = connector.getConnection();
        PreparedStatement pstmt;
        String sql = "UPDATE sales SET total = ? WHERE product_name = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setDouble(1, total);
            pstmt.setString(2, prodName);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
