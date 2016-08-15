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
import modelz.TransactionHandler;

/**
 *
 * @author William
 */
@WebServlet(name = "CheckoutCartServlet", urlPatterns = {"/CheckoutCartServlet"})
public class CheckoutCartServlet extends HttpServlet {

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
        System.out.println("In CheckoutServlet");
        HttpSession session = request.getSession();
        String creditCardNumber = request.getParameter("cardNum");
        String ownerName = request.getParameter("ownerName");
        CustomerAccount account = (CustomerAccount) session.getAttribute("Account");
        String securityCode = request.getParameter("securityCode");
        double total = (double) session.getAttribute("total");
        AccountHandler handler = new AccountHandler();
        TransactionHandler tHandler = new TransactionHandler();
        if(tHandler.checkCreditCard(creditCardNumber, securityCode, ownerName) && tHandler.checkBalance(total, ownerName, creditCardNumber, securityCode)){
            double balance = tHandler.getBalance(creditCardNumber, securityCode, ownerName);
            if(balance != -1){
                double newBalance = balance - total;
            
                System.out.println("New Balance: " +newBalance);
                tHandler.setNewBalance(newBalance, creditCardNumber, securityCode, ownerName);
                handler.clearCart(account);
                account.getShoppingCart().clearCart();
                session.setAttribute("Account", account);
                response.sendRedirect("ShoppingCart.jsp");
            }else{
                System.out.println("Error acquiring balance");
                response.sendRedirect("Checkout.jsp");
            }
        }
        else{
            response.sendRedirect("Checkout.jsp");
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
