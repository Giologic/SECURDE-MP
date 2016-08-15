package modelz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class ShoppingCart {
    private int user_id;
    private ArrayList<Product> products;
    
    public ShoppingCart(int user_id, ArrayList<Product> products) {
        this.user_id = user_id;
        this.products = products;
        
    }
    
    public ShoppingCart(){
        products = new ArrayList<>();
        
    }
    
    public int getUserID(){
    	return user_id;
    }
    
    public ArrayList<Product> getProdList(){
    	return products;
    }


    public void addProduct(Product product) {
        this.products.add(product);
        
    }

    public void removeProduct(Product prod) {
        for(int i = 0; i < products.size(); i++){
            if(products.get(i).getName().equals(prod.getName()));
                products.remove(i);
        }
        
    }
    
    

    public void clearCart() {
        products.clear();
        
    }
}