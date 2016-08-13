package modelz;

import java.util.ArrayList;

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
        products = new ArrayList<Product>();
    }


    public void addProduct(Product product) {
        this.products.add(product);
    }

    public void removeProduct(int product_id) {
        this.products.remove(product_id);
    }

    public void clearCart() {
        products.clear();
    }
}
