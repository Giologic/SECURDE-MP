package model;

import java.util.Date;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public abstract class ProductTransaction {

    private int transact_id;
    private int user_id;
    private Date timestamp;

    public ProductTransaction(int user_id) {
        this.user_id = user_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }
}
