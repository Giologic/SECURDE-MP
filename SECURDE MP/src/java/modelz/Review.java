/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelz;

/**
 *
 * @author William
 */
public class Review {
    String review;
    String reviewer;
    
    public Review(String review, String reviewer){
        this.review = review;
        this.reviewer = reviewer;
    }
    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getReviewer() {
        return reviewer;
    }

    public void setReviewer(String reviewer) {
        this.reviewer = reviewer;
    }
    
}
