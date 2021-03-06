package modelz;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class AccountingManagerAccount extends ExpirableAccount{
    Timestamp date;
    public AccountingManagerAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Timestamp timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email, isExpired, timestamp);
    }
    
    public AccountingManagerAccount(String username, String password, String email, String privilege, boolean isExpired, Timestamp date) {
        super(username, password, email, privilege, isExpired, date);
    }

    public void viewFinancialRecords() {
        //// TODO: 7/25/2016 Link to Financial Records
    }
    
    public void setTimestamp(Timestamp timestamp){
        date = timestamp;
    }
    
    public Timestamp getTimestamp(){
        return date;
    }
}
