/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerz;

import modelz.RegistrationChecker;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelz.Account;
import modelz.AccountHandler;
import modelz.Address;
import modelz.CustomerAccount;
import modelz.ShoppingCart;

/**
 *
 * @author William
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
       String email = request.getParameter("email");
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       String confPassword = request.getParameter("confPass");
       String firstName = request.getParameter("fName");
       String lastName = request.getParameter("lName");
       String middleInitial = request.getParameter("mInitial");
       String billingHouse = request.getParameter("bHouse");
       String billingStreet = request.getParameter("bStreet");
       String billingSubdivision = request.getParameter("bSubdivision");
       String billingCity = request.getParameter("bCity");
       String billingPostalCode = request.getParameter("bPostalCode");
       String billingCountry = request.getParameter("bCountry");
       String shippingHouse = request.getParameter("sHouse");
       String shippingStreet = request.getParameter("sStreet");
       String shippingSubdivision = request.getParameter("sSubdivision");
       String shippingCity = request.getParameter("sCity");
       String shippingPostalCode = request.getParameter("sPostalCode");
       String shippingCountry = request.getParameter("sCountry");
        System.out.println(email);
        System.out.println(username);
        System.out.println(firstName);
        System.out.println(lastName);
        System.out.println(middleInitial);
        System.out.println(password);
        System.out.println(confPassword);
        System.out.println(billingHouse);
        System.out.println(billingStreet);
        System.out.println(billingSubdivision);
        System.out.println(billingCity);
        System.out.println(billingCountry);
        System.out.println(shippingHouse);
        System.out.println(shippingStreet);
        System.out.println(shippingSubdivision);
        System.out.println(shippingCity);
        System.out.println(shippingPostalCode);
        System.out.println(shippingCountry);
        
       
       
       
       RegistrationChecker checker = new RegistrationChecker();
       AccountHandler handler = new AccountHandler();
       if(checker.isValid(username,email, password, confPassword, lastName, lastName, middleInitial, billingHouse, billingStreet, billingCity, billingCity, billingPostalCode, billingCountry, shippingHouse, shippingStreet, shippingCity, shippingCity, shippingPostalCode, shippingCountry)){
        ShoppingCart cart = new ShoppingCart();
        Address billingAddress = new Address(billingHouse, billingStreet, billingSubdivision, billingCity, billingPostalCode, billingCountry);
        Address shippingAddress = new Address(shippingHouse, shippingStreet, shippingSubdivision, shippingCity, shippingPostalCode, shippingCountry);
        CustomerAccount account = new CustomerAccount(firstName, lastName, middleInitial, "customer", username, password, email, billingAddress, shippingAddress, cart);
        handler.register(account, account.getBillingAddress() , account.getShippingAddress());
        handler.assignPrivilege(account.getPrivilege(), account.getUsername());
        request.getRequestDispatcher("Login.jsp").forward(request,response);
        
       }
       
       else{
           //error
           System.out.println("Invalid Inputs");
           request.getRequestDispatcher("Registration.jsp").forward(request,response);
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
