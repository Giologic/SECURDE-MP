/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelz.CustomerAccount;
import modelz.Product;
import modelz.ProductHandler;
import modelz.Review;
import modelz.TransactionHandler;
import security.AuditLogger;

/**
 *
 * @author William
 */
@WebServlet(name = "AddReviewServlet", urlPatterns = {"/AddReviewServlet"})
public class AddReviewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String review = request.getParameter("review");
        ProductHandler pHandler = new ProductHandler();
        TransactionHandler tHandler = new TransactionHandler();
        HttpSession session = request.getSession();
        CustomerAccount account = (CustomerAccount) session.getAttribute("Account");
        Product product = (Product) session.getAttribute("Product");
        AuditLogger logger = new AuditLogger();
        String username = account.getUsername();
        String privilege = account.getPrivilege();
        if(tHandler.checkIfPurchased(account, product)){
            pHandler.addReview(product, account, review);
            ArrayList<Review> reviews = pHandler.getReviews(product);
            session.setAttribute("Reviews", reviews);
            System.out.println("Purchased");
            logger.logEvent("Item", username, privilege, "Added review to item: " +product.getName() +" Review: " +review);
            request.getRequestDispatcher("Item.jsp").forward(request, response);
        }
        else{
            System.out.println("Not purchased");
            response.sendRedirect("Item.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
