package modelz;

/**
 * Created by MSI LEOPARD on 7/25/2016.
 */
public class ProductReviewTransaction extends ProductTransaction {

    private int product_id;
    private String review;

    public ProductReviewTransaction(int user_id) {
        super(user_id);
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }
}
