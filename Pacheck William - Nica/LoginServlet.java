/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package controllerz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelz.AccountHandler;
import modelz.AccountingManagerAccount;
import modelz.AdministratorAccount;
import modelz.CustomerAccount;
import modelz.Product;
import modelz.ProductHandler;
import modelz.ProductManagerAccount;
import modelz.ProductSales;
import modelz.ShoppingCart;
import modelz.TransactionHandler;

/**
 *
 * @author William
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
        AccountHandler handler = new AccountHandler();
        ProductHandler pHandler = new ProductHandler();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String privilege = handler.getPrivilege(username);
        HttpSession session = request.getSession();
        if(!"".equals(privilege)){
            if("admin".equals(privilege)){
                System.out.println("Admin Login");
                AdministratorAccount admin = handler.adminLogin(username, password);
                if(admin != null){
                    session.setAttribute("admin", admin);
                    ArrayList<ProductManagerAccount> productManagers = handler.getAllProductManagerAccounts();
                    ArrayList<AccountingManagerAccount> accountingManagers = handler.getAllAccountingManagerAccounts();
                    session.setAttribute("productManagers", productManagers);
                    session.setAttribute("accountingManagers", accountingManagers);
                    response.sendRedirect("Administrator.jsp");
                }
                else{
                    String errorMessage = "Invalid Username/Password";
                    request.setAttribute("loginError", errorMessage);
                    response.sendRedirect("Login.jsp");
                }
                
            }
            else if("product manager".equals(privilege)){
                System.out.println("Product Manager Login");
                ProductManagerAccount productMan = handler.productManagerLogin(username, password);
                if(productMan != null){
                    session.setAttribute("productManager", productMan);
                    ArrayList<Product> products = pHandler.displayProducts();
                    session.setAttribute("Products", products);
                    response.sendRedirect("ProductManager.jsp");
                }
            }
            else if("accounting manager".equals(privilege)){
                System.out.println("Accounting Manager Login");
                AccountingManagerAccount accountingMan = handler.accountingManagerLogin(username, password);
                TransactionHandler tHandler = new TransactionHandler();
                ArrayList<ProductSales> sales = tHandler.filterProductSales();
                request.setAttribute("filter action", "filterProduct");
                request.setAttribute("Total Sales Products", sales);
                if(accountingMan != null){
                    session.setAttribute("accountingManager", accountingMan);
                    request.getRequestDispatcher("Transactions.jsp").forward(request, response);
                }
            }
            else if("customer".equals(privilege)){
                System.out.println("Customer Login");
                CustomerAccount account = handler.login(username, password);
                if(account != null){
                    //create account object here
                    ShoppingCart cart = handler.getShoppingCart(account);
                    account.setShoppingCart(cart);
                    ArrayList<Product> products = pHandler.displayProducts();
                    session.setAttribute("Products", products);
                    session.setAttribute("Account", account);
                    response.sendRedirect("Main.jsp");
                }
                else{
                    String errorMessage = "Invalid Username/Password";
                    request.setAttribute("loginError", errorMessage);
                    response.sendRedirect("Login.jsp");
                }
            }
        }
        else{
            String errorMessage = "Invalid Username/Password";
            request.setAttribute("loginError", errorMessage);
            response.sendRedirect("Login.jsp");
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
    	Cookie cookie = new Cookie(COOKIE_NAME, cookieValue); 
    	cookie.setSecure(true); 
    	cookie.setHttpOnly(true);
    	cookie.setMaxAge(30*60*1000);
    	response.addCookie(cookie);
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