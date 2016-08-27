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
import modelz.AccountHandler;
import modelz.AccountingManagerAccount;
import modelz.ProductManagerAccount;
import security.BCrypt;
import security.CSVFileGenerator;
import security.RandomPasswordGenerator;

/**
 *
 * @author William
 */
@WebServlet(name = "AddAccountServlet", urlPatterns = {"/AddAccountServlet"})
public class AddAccountServlet extends HttpServlet {

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
        String username = request.getParameter("username");
//        String password = request.getParameter("password");
        //RandomPasswordGenerator creates a randomly generated password
        //BCrypt is a password hasher
        //BCrypt.hashpw(password,BCrypt.gensalt(<n>); -> Encrypts the password and hashes n times
        //For our project we hash 12 times
        //BCrypt.checkpw(inputPassword,hashedPassword); -> Checks if passwords match
        String generatedPassword = RandomPasswordGenerator.getRandomPassword();
        String hashedPassword = BCrypt.hashpw(generatedPassword, BCrypt.gensalt(12));
        System.out.println("gen pass: " +generatedPassword);
        String email = request.getParameter("email");
        String privilege = request.getParameter("privilege");
        AccountHandler handler = new AccountHandler();
        HttpSession session = request.getSession();
        if("product manager".equals(privilege)){
            //Creates CSV File for Account
            
            CSVFileGenerator.writeCsvFile("PM_" + username + "_accountinfo.csv", username, generatedPassword);
            System.out.println("In product manager");
            ProductManagerAccount pAccount = new ProductManagerAccount(username, hashedPassword, email, "product manager");
            handler.addProductManagerAccount(pAccount);
            handler.assignPrivilege(privilege, username);
        }
        else if("accounting manager".equals(privilege)){
            //Creates CSV File for Account
            CSVFileGenerator.writeCsvFile("AM_" + username + "_accountinfo.csv", username, generatedPassword);
            AccountingManagerAccount aAccount = new AccountingManagerAccount(username, hashedPassword, email, "accounting manager");
            handler.addAccountingManagerAccount(aAccount);
            handler.assignPrivilege(privilege, username);
        }
        ArrayList<ProductManagerAccount> pAccounts = handler.getAllProductManagerAccounts();
        ArrayList<AccountingManagerAccount> aAccounts = handler.getAllAccountingManagerAccounts();
        session.setAttribute("productManagers", pAccounts);
        session.setAttribute("accountingManagers", aAccounts);
        
         request.getRequestDispatcher("Administrator.jsp").forward(request, response);
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
