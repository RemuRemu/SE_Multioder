/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Amp
 */
@WebServlet(name = "amountControl", urlPatterns = {"/amountControl"})
public class amountControl extends HttpServlet {

    @Resource(name = "seproject")
    private DataSource seproject;
    Connection conn;
    public void init(){
        try {
            conn = seproject.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(ProcessSelection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

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
            Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            response.sendRedirect("menuServlet");
        }
        int menu_id = Integer.parseInt(request.getParameter("menuid"));
            if (request.getParameter("amount").equals("increase")){
                cart.addQuentity(menu_id, 1);
                response.sendRedirect("cart.jsp");
            }
            if(request.getParameter("amount").equals("decrease")){
                cart.removeQuentity(menu_id, 1);
                 response.sendRedirect("cart.jsp");
            }
            if(request.getParameter("amount").equals("remove")){
                for (int i = 0; i < cart.getAccs().size(); i++){
                    if(cart.getAccs().get(i).getAcc_id() == menu_id){
                    cart.removeItem(i);
                    }
                }
                 response.sendRedirect("cart.jsp");
            }
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet amountControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet amountControl at " + request.getParameter("amount") + "</h1>");
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
