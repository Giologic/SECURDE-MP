package modelz;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class ProductManagerAccount extends ExpirableAccount {
    Timestamp date;

    public ProductManagerAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Timestamp timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email, isExpired, timestamp);
    }

    public ProductManagerAccount(String username, String password, String email, String privilege, boolean isExpired, Timestamp timestamp) {
        super(username, password, email, privilege, isExpired, timestamp);
        
    }
    
    public void setTimestamp(Timestamp timestamp){
        date = timestamp;
    }
    
    public Timestamp getTimestamp(){
        return date;
    }
    
    

    public void editProduct(int id){
        // TODO: 7/25/2016 Link to Product
    }

    public void addProduct(Product product) {
        // TODO: 7/25/2016 Link to Product
    }

    public void deleteProduct(Product product) {
        // TODO: 7/25/2016 Link to Product 
    }


}
