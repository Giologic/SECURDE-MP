package modelz;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public abstract class ExpirableAccount extends Account{
    private boolean isExpired;
    private Date timestamp;
    private Date expiry;
    private final static int EXPIRY_DURATION = 120;

    public ExpirableAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Date timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email);
        this.isExpired = isExpired;
        this.timestamp = timestamp;
        Calendar cal = new GregorianCalendar();
        cal.add(Calendar.DATE, EXPIRY_DURATION);
        this.expiry = cal.getTime();
    }
    
    public ExpirableAccount(String username, String password, String email, String privilege){
        super(username, password, email, privilege);
    }

    public boolean isExpired(){
        Calendar cal = new GregorianCalendar();
        if(cal.getTime().after(expiry)) return true;
        return false;
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
