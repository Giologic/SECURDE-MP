package modelz;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class CustomerAccount extends Account {

    private Address billingAddress;
    private Address shippingAddress;
    private ShoppingCart shoppingCart;
    private int id;

    public CustomerAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, Address billingAddress, Address shippingAddress, ShoppingCart shoppingCart) {
        super(first_name, last_name, middle_initial, privilege, username, password, email);
        this.billingAddress = billingAddress;
        this.shippingAddress = shippingAddress;
        this.shoppingCart = shoppingCart;
    }
    
    public CustomerAccount(int id,String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, Address billingAddress, Address shippingAddress, ShoppingCart shoppingCart) {
        super(first_name, last_name, middle_initial, privilege, username, password, email);
        this.billingAddress = billingAddress;
        this.shippingAddress = shippingAddress;
        this.shoppingCart = shoppingCart;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public Address getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(Address billingAddress) {
        this.billingAddress = billingAddress;
    }

    public Address getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(Address shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }
}
