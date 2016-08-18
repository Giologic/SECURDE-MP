package modelz;

/**
 * Created by MSI LEOPARD on 7/19/2016.
 */
public abstract class Account {
    private String first_name;
    private String last_name;
    private String middle_initial;
    private String privilege;
    private String username;
    private String password;
    private String email;

    public Account(String first_name, String last_name, String middle_initial,
        String privilege, String username ,String password, String email) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.middle_initial = middle_initial;
        this.privilege = privilege;
        this.username = username;
        this.password = password;
        this.email = email;
    }
    
    public Account(String username, String password, String email, String privilege){
        this.username = username;
        this.password = password;
        this.email = email;
        this.privilege = privilege;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getMiddle_initial() {
        return middle_initial;
    }

    public void setMiddle_initial(String middle_initial) {
        this.middle_initial = middle_initial;
    }

    public String getPrivilege() {
        return privilege;
    }

    public void setPrivilege(String privilege) {
        this.privilege = privilege;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return first_name + " " + middle_initial + " " + last_name;
    }
}