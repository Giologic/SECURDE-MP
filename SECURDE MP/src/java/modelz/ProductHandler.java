package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author William
 */
public class ProductHandler {
    
	public void addProduct(Product prod){
		String prodName = prod.getName();
		String prodDesc = prod.getDescription();
		double prodPrice = prod.getPrice();
		String prodCat = prod.getCategory();
		String prodImg = prod.getImage();
        DBConnector connector = new DBConnector();
    	Connection conn = connector.getConnection();
    	try {
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO product (name, price, description, category, image) VALUES (?, ?, ?, ?, ?)");
			pstmt.setString(1, prodName);
			pstmt.setDouble(2, prodPrice);
			pstmt.setString(3, prodDesc);
			pstmt.setString(4, prodCat);
			pstmt.setString(5, prodImg);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	public void deleteProduct(int prodID){
		DBConnector connector = new DBConnector();
		Connection conn = connector.getConnection();
		try{
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM product WHERE id = ?");
			pstmt.setInt(1, prodID);
			ResultSet rs = pstmt.executeQuery();
			pstmt.close();
			if(rs.next() == false){
				System.out.println("Cannot print");
			}
			else{
				pstmt = conn.prepareStatement("DELETE * FROM product WHERE id = ?");
				pstmt.setInt(1, prodID);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			}
		} catch (SQLException e1){
			e1.printStackTrace();
		}
	}
	public void editProduct(Product prod){
		int prodID = prod.getId();
		String prodName = prod.getName();
		String prodDesc = prod.getDescription();
		double prodPrice = prod.getPrice();
		String prodCat = prod.getCategory();
		String prodImg = prod.getImage();
		
		DBConnector connector = new DBConnector();
		Connection conn = connector.getConnection();
		PreparedStatement pstmt;
		ResultSet rs;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM product WHERE id = ?");
			pstmt.setInt(1, prodID);
			rs = pstmt.executeQuery();
			pstmt.close();
			if(rs.next() == false){
				System.out.println("Cannot edit");
			}
			else{
				pstmt = conn.prepareStatement("UPDATE product SET name = ?, price = ?, description = ?, category = ?, image = ? WHERE id = ?");
				pstmt.setString(1, prodName);
				pstmt.setDouble(2, prodPrice);
				pstmt.setString(3, prodDesc);
				pstmt.setString(4, prodCat);
				pstmt.setString(5, prodImg);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
    public ArrayList<Product> displayProducts(){
    	ArrayList<Product> allProducts = new ArrayList<Product>();
    	DBConnector connector = new DBConnector();
		Connection conn = connector.getConnection();
		PreparedStatement pstmt;
		ResultSet rs;
		try{
			pstmt = conn.prepareStatement("SELECT * FROM product");
			rs = pstmt.executeQuery();
			while(rs.next()){
				Product prod = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("description"), rs.getDouble("price"),
						                   rs.getString("category"), rs.getString("image"));
				allProducts.add(prod);
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return allProducts ;
        
    }
	
	public Product getSpecificProduct(String productName){
		Product prod = null;
		DBConnector connector = new DBConnector();
		Connection conn = connector.getConnection();
		PreparedStatement pstmt;
		ResultSet rs;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM product WHERE name = ?");
			pstmt.setString(1, productName);
			rs = pstmt.executeQuery();
			pstmt.close();
			if(rs.next() == false){
				return prod = null;
			}
			else{
				prod.setId(rs.getInt("id"));
				prod.setName(rs.getString("name"));
				prod.setPrice(rs.getDouble("price"));
				prod.setDescription(rs.getString("description"));
				prod.setCategory(rs.getString("category"));
				prod.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prod;
	}
}