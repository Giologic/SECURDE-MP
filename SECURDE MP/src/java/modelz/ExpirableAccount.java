package modelz;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public abstract class ExpirableAccount extends Account{
    private boolean boolExp;
    private Timestamp timestamp;
    private final static int EXPIRY_DURATION = 120;

    public ExpirableAccount(String first_name, String last_name, String middle_initial, String privilege, String username, String password, String email, boolean isExpired, Timestamp timestamp) {
        super(first_name, last_name, middle_initial, privilege, username, password, email);
        this.boolExp = isExpired;
        this.timestamp = timestamp;
    }
    
    public ExpirableAccount(String username, String password, String email, String privilege, boolean boolExp, Timestamp timestamp){
        super(username, password, email, privilege);
        this.boolExp = boolExp;
        this.timestamp = timestamp;
    }
    
    public boolean isExpired() {
        if(!this.boolExp){
            //Set calendar to timestamp 
            Calendar convertedCal = new GregorianCalendar();
            Date timeStampDate = new Date(timestamp.getTime());
            convertedCal.setTime(timeStampDate);
            convertedCal.add(Calendar.DATE, EXPIRY_DURATION);
            Calendar calNow = new GregorianCalendar();
            
            if(calNow.after(convertedCal)) boolExp = true;
        }
        return this.boolExp;
    }

    public void setExpired(boolean expired) {
        boolExp = expired;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

}
