package Model;

import java.sql.Date;

public class Transaction {
	private int id;
	private int userID;
	private int shoppingCartID;
	private Date transactionDate;
	private boolean transactionStatus;
	
	public Transaction(int id, int userID, int shoppingCartID, Date transactionDate, boolean transactionStatus){
		this.id = id;
		this.userID = userID;
		this.shoppingCartID = shoppingCartID;
		this.transactionDate = transactionDate;
		this.transactionStatus = transactionStatus;
	}
	
	public boolean getTransactionStatus() {
		return transactionStatus;
	}
	public void setTransactionStatus(boolean transactionStatus) {
		this.transactionStatus = transactionStatus;
	}
	public int getShoppingCartID() {
		return shoppingCartID;
	}
	public void setShoppingCartID(int shoppingCartID) {
		this.shoppingCartID = shoppingCartID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	
	
}
