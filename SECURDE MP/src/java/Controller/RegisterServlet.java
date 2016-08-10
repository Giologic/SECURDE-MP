/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Address;
import model.CustomerAccount;
import model.ShoppingCart;

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       // processRequest(request, response);
       String email = request.getParameter("email");
       String password = request.getParameter("password");
       String confPassword = request.getParameter("confPass");
       String firstName = request.getParameter("fName");
       String lastName = request.getParameter("lName");
       String middleInitial = request.getParameter("mInitial");
       String billingHouse = request.getParameter("bHouse");
       String billingCity = request.getParameter("bCity");
       int billingPostalCode = Integer.parseInt(request.getParameter("bPostalCode"));
       String billingCountry = request.getParameter("bCountry");
       String shippingHouse = request.getParameter("sHouse");
       String shippingCity = request.getParameter("sCity");
       int shippingPostalCode = Integer.parseInt(request.getParameter("sPostalCode"));
       String shippingCountry = request.getParameter("sCountrry");
       
       ShoppingCart cart = new ShoppingCart();
       Address billingAddress = new Address(billingHouse, billingCity, billingPostalCode, billingCountry);
       Address shippingAddress = new Address(shippingHouse, shippingCity, shippingPostalCode, shippingCountry);
       Account account = new CustomerAccount(firstName, lastName, middleInitial, "customer","greyhawndz", password, email);
       
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
