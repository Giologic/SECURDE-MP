package model;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class Address {
    private int user_id;
    private String house_no;
    private String street;
    private String subdivision;
    private String city;
    private int postal_code;
    private String country;

    public Address(int user_id, String house_no, String street, String subdivision,String city, int postal_code, String country) {
        this.user_id = user_id;
        this.house_no = house_no;
        this.street = street;
        this.subdivision = subdivision;
        this.postal_code = postal_code;
        this.country = country;
    }
    public Address(String house_no, String street, String subdivision, String city, int postal_code, String country){
        this.house_no = house_no;
        this.street = street;
        this.subdivision = subdivision;
        this.postal_code = postal_code;
        this.country = country;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getHouse_no() {
        return house_no;
    }

    public void setHouse_no(String house_no) {
        this.house_no = house_no;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getSubdivision() {
        return subdivision;
    }

    public void setSubdivision(String subdivision) {
        this.subdivision = subdivision;
    }

    public int getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(int postal_code) {
        this.postal_code = postal_code;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
