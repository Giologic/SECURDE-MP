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
import modelz.ProductSales;
import modelz.TransactionHandler;

/**
 *
 * @author William
 */
@WebServlet(name = "FilterSalesServlet", urlPatterns = {"/FilterSalesServlet"})
public class FilterSalesServlet extends HttpServlet {

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
        String filter = request.getParameter("salesFilter");
        TransactionHandler tHandler = new TransactionHandler();
        if("filterTotal".equals(filter)){
            double total = tHandler.filterAllSales();
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales", total);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
        }else if("filterBoots".equals(filter)){
             ArrayList<ProductSales> sales = tHandler.filterCategorySales("Boots");
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales Products", sales);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
        }else if("filterShoes".equals(filter)){
             ArrayList<ProductSales> sales = tHandler.filterCategorySales("Shoes");
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales Products", sales);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
         
        }else if("filterSandals".equals(filter)){
            ArrayList<ProductSales> sales = tHandler.filterCategorySales("Sandals");
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales Products", sales);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
        }else if("filterSlippers".equals(filter)){
             ArrayList<ProductSales> sales = tHandler.filterCategorySales("Slippers");
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales Products", sales);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
        }else if("filterProduct".equals(filter)){
            ArrayList<ProductSales> sales = tHandler.filterProductSales();
            request.setAttribute("filter action", filter);
            request.setAttribute("Total Sales Products", sales);
            request.getRequestDispatcher("Transactions.jsp").forward(request, response);
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
