/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author William
 */
public class RegistrationChecker {
    private String email;
    private String password;
    private String confPass;
    private String fName; 
    private String lName; 
    private String mInitial;
    private String billingHouse;
    private String billingCity;
    private int billingPostalCode;
    private String billingCountry;
    private String shippingHouse;
    private String shippingCity;
    private int shippingPostalCode;
    private String shippingCountry;

    public boolean isValid(String email, String password, String confPass, String fName, String lName, String mInitial, String billingHouse, String billingCity, String billingPostalCode, String billingCountry, String shippingHouse, String shippingCity, String shippingPostalCode, String shippingCountry) {
        if("".equals(email) && "".equals(password) && confPass == "" && "".equals(fName) && "".equals(lName) && "".equals(mInitial)){
            return false;
        }
        if(billingHouse == "" && billingCity == "" && billingPostalCode == "" )
        
        return true;
    }
    
   private boolean isInteger(String str){
        if (str == null) {
		return false;
	}
	int length = str.length();
	if (length == 0) {
		return false;
	}
	int i = 0;
	if (str.charAt(0) == '-') {
		if (length == 1) {
			return false;
		}
		i = 1;
	}
	for (; i < length; i++) {
		char c = str.charAt(i);
		if (c <= '/' || c >= ':') {
			return false;
		}
	}
	return true;
        
    }
    
    
}
