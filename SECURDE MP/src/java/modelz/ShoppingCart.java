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
    private HashMap<String,Integer> qty;
    public ShoppingCart(int user_id, ArrayList<Product> products) {
        this.user_id = user_id;
        this.products = products;
        qty = new HashMap();
    }
    
    public ShoppingCart(){
        
    }
    
    public int getUserID(){
    	return user_id;
    }
    
    public ArrayList<Product> getProdList(){
    	return products;
    }


    public void addProduct(Product product, int quantity) {
        this.products.add(product);
        qty.put(product.getName(), quantity);
    }

    public void removeProduct(Product prod) {
        for(int i = 0; i < products.size(); i++){
            if(products.get(i).getName().equals(prod.getName()));
                products.remove(i);
        }
        qty.remove(prod.getName());
    }
    
    public int getQuantity(Product prod){
        
        return qty.get(prod.getName());
    }

    public void clearCart() {
        products.clear();
        qty.clear();
    }
}