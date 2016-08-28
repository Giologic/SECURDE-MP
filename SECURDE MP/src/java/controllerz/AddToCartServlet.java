/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelz.AccountHandler;
import modelz.CustomerAccount;
import modelz.Product;
import modelz.ProductHandler;
import modelz.ShoppingCart;
import security.AuditLogger;


/**
 *
 * @author William
 */
@WebServlet(name = "AddToCartServlet", urlPatterns = {"/AddToCartServlet"})
public class AddToCartServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        Product product = (Product) session.getAttribute("Product");
        String productName = product.getName();
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = product.getPrice();
        AccountHandler handler = new AccountHandler();
        ProductHandler pHandler = new ProductHandler();
        CustomerAccount account = (CustomerAccount) session.getAttribute("Account");  
        Product prod = pHandler.getSpecificProduct(productName);
        System.out.println("shopping count: " +account.getShoppingCart().getProdList().size());
        handler.addToCart(account.getShoppingCart(), prod, quantity);
        ShoppingCart cart = handler.getShoppingCart(account);
        account.setShoppingCart(cart);
        session.setAttribute("Account", account);
        AuditLogger logger = new AuditLogger();
        String username = (String) session.getAttribute("username");
        String privilege = (String) session.getAttribute("privilege");
        logger.logEvent("Shopping Cart", username , privilege, "Added item " +prod.getName()+" to shopping cart");
        request.getRequestDispatcher("ShoppingCart.jsp").forward(request, response);
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
