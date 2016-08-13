/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelz;

/**
 *
 * @author William
 */
public class RegistrationChecker {
    
    public boolean isValid(String username,String email, String password, String confPass, String fName, String lName, String mInitial, String billingHouse,String billingStreet,String billingSub, String billingCity, String billingPostalCode, String billingCountry, String shippingHouse,String shippingStreet,String shippingSub, String shippingCity, String shippingPostalCode, String shippingCountry) {
        if("".equals(username) && "".equals(email) && "".equals(password) && confPass == "" && "".equals(fName) && "".equals(lName) && "".equals(mInitial)){
            System.out.println("Empty credentials");
            return false;
        }
        if(billingHouse == "" && billingStreet == "" && billingSub == "" && billingCity == "" && billingPostalCode == "" && billingCountry == ""  ){
            System.out.println("Empty billing");
            return false;
        }
        if(shippingHouse == "" && shippingStreet == "" && shippingSub == "" && shippingCity == "" && shippingPostalCode == "" && shippingCountry == ""){
            System.out.println("empty shipping");
            return false;
        }
        if(!isInteger(billingPostalCode)){
            System.out.println("billing postal not int");
            return false;
        }
        if(!isInteger(shippingPostalCode)){
            System.out.println("shipping postal not int");
            return false;
        }
        if(password != confPass){
            System.out.println("password mismatch");
            return false;
        }
        
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
