/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.retail.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.retail.model.items;

/**
 *
 * @author Givindu
 */
@WebServlet(name = "WasteInsert", urlPatterns = {"/WasteInsert"})
public class WasteInsert extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            items a1 = new items();
            String ItemNo;
            String ItemName;
            String quantity;
            String price;
            String ori;
            
            String message="id";
            try{
                ItemNo = request.getParameter("ItemNO").trim();

                ItemName = request.getParameter("ItemName").trim();
                quantity = request.getParameter("ItemQuantity").trim();
                price = request.getParameter("ItemPrice").trim();
                ori = request.getParameter("originalqty").trim();
                out.println("oooooooooooooooooooooooooo");
                a1.setItemNo(ItemNo);
                a1.setItemName(ItemName);
                a1.setPrice(Double.parseDouble(price));
                a1.setQuantity(Double.parseDouble(quantity));
                a1.setQty(Double.parseDouble(ori));
                
                out.println(a1.getItemNo());
                out.println(a1.getItemName());
                
                message = a1.insertwastedb();
                message = a1.updateWaste();
                response.sendRedirect("Reports.jsp");
                
            }
            catch(Exception e){
                
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(WasteInsert.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(WasteInsert.class.getName()).log(Level.SEVERE, null, ex);
        }
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
