package modelz;

import java.util.Date;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class AccountingManagerAccount extends ExpirableAccount{
    public AccountingManagerAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Date timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email, isExpired, timestamp);
    }

    public void viewFinancialRecords() {
        //// TODO: 7/25/2016 Link to Financial Records
    }
}
