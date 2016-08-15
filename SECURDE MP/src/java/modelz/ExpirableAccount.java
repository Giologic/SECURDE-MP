package modelz;

import java.util.Date;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public abstract class ExpirableAccount extends Account{
    private boolean isExpired;
    private Date timestamp;

    public ExpirableAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Date timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email);
        this.isExpired = isExpired;
        this.timestamp = timestamp;
    }

    public boolean isExpired(){
        return isExpired;
    }

    public void setExpired(boolean expired) {
        isExpired = expired;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

}
