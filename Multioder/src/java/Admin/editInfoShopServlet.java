/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author USER
 */
@WebServlet(name = "editInfoShopServlet", urlPatterns = {"/editInfoShopServlet"})
public class editInfoShopServlet extends HttpServlet {

    @Resource(name = "seproject")
    private DataSource seproject;

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Connection conn = null;
        try {
            conn = seproject.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger("connection-error").log(Level.SEVERE, null, ex);
        }
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String shopname = request.getParameter("shopname");
            int shopid = parseInt(request.getParameter("shopid"));
            int shop_status = parseInt(request.getParameter("status"));
            String shopusername = request.getParameter("shopusername");
            String shoppassword = request.getParameter("shoppassword");
           

            if(shoppassword.equals("")){
                            String edit_shopInfo = "UPDATE seproject.shop"
                        + " SET shopname = ?,shop_status = ?,shopusername = ?"
                        + " WHERE shopid = ?";
                PreparedStatement pro = conn.prepareStatement(edit_shopInfo);
                pro.setString(1, shopname);
                pro.setInt(2, shop_status);
                pro.setString(3, shopusername);
       
                pro.setInt(4, shopid);
                pro.executeUpdate();
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/showShop_test");
                rd.forward(request, response);
                return;}
            
            else{
              String edit_shopInfo = "UPDATE seproject.shop"
                        + " SET shopname = ?,shop_status = ?,shopusername = ?,shoppassword = ?"
                        + " WHERE shopid = ?";
                PreparedStatement pro = conn.prepareStatement(edit_shopInfo);
                pro.setString(1, shopname);
                pro.setInt(2, shop_status);
                pro.setString(3, shopusername);
                pro.setString(4, shoppassword);
                pro.setInt(5, shopid);
                pro.executeUpdate();
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/showShop_test");
                rd.forward(request, response);
                return;}
            
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
        } catch (SQLException ex) {
            Logger.getLogger(editInfoShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(editInfoShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
