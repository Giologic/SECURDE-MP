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
import modelz.AccountingManagerAccount;
import modelz.ProductManagerAccount;
import security.BCrypt;
import security.CSVFileGenerator;

/**
 *
 * @author William
 */
@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/ChangePasswordServlet"})
public class ChangePasswordServlet extends HttpServlet {

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
        AccountHandler handler = new AccountHandler();
        
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confPass = request.getParameter("confNewPass");
        String privilege = (String) session.getAttribute("privilege");
        String username = (String) session.getAttribute("username");
        if("product manager".equals(privilege)){
            ProductManagerAccount account = handler.getProductManagerAccount(username);
            if(BCrypt.checkpw(oldPassword, account.getPassword())){
                if(newPassword.equals(confPass)){
                    CSVFileGenerator.writeCsvFile("PM_" + username + "_accountinfo.csv", username, confPass);
                    System.out.println("PM Passed");
                    String hashedPass = BCrypt.hashpw(newPassword, BCrypt.gensalt(12));
                    handler.changeProductManagerPassword(username, hashedPass);
                    request.getRequestDispatcher("ProductManager.jsp").forward(request, response);
                }
            }
        }
        else if("accounting manager".equals(privilege)){
            AccountingManagerAccount account = handler.getAccountingManagerAccount(username);
            if(BCrypt.checkpw(oldPassword, account.getPassword())){
                if(newPassword.equals(confPass)){
                    CSVFileGenerator.writeCsvFile("AM_" + username + "_accountinfo.csv", username, confPass);
                    System.out.println("AM passed");
                    String hashedPass = BCrypt.hashpw(newPassword, BCrypt.gensalt(12));
                    handler.changeProductManagerPassword(username, hashedPass);
                    request.getRequestDispatcher("Transactions.jsp").forward(request, response);
                }
            }
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
