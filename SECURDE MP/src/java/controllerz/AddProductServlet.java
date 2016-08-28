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
import modelz.Product;
import modelz.ProductHandler;
import modelz.TransactionHandler;
import security.AuditLogger;

/**
 *
 * @author William
 */
@WebServlet(name = "AddProductServlet", urlPatterns = {"/AddProductServlet"})
public class AddProductServlet extends HttpServlet {

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
        String name = request.getParameter("product_name");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        ArrayList<Product> products = new ArrayList();
        AuditLogger logger = new AuditLogger();
        String username = (String) session.getAttribute("username");
        String privilege = (String) session.getAttribute("privilege");
        double price = Double.parseDouble(request.getParameter("price"));
        Product prod = new Product(name,description,price,category,"converse2.jpg");
        ProductHandler pHandler = new ProductHandler();
        TransactionHandler tHandler = new TransactionHandler();
        pHandler.addProduct(prod);
        tHandler.addNewSale(prod);
        logger.logEvent("Add Product", username , privilege, "Added new Product: " +name +", description: " +description +", category: " 
                +category +", price: " +price);
        products = pHandler.displayProducts();
        session.setAttribute("Products", products);
        request.getRequestDispatcher("ProductManager.jsp").forward(request, response);
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
