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
@WebServlet(name = "removeShopServlet", urlPatterns = {"/removeShopServlet"})
public class removeShopServlet extends HttpServlet {

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

            int shopid = parseInt(request.getParameter("shopid"));

            String delete_shop1 = "SET FOREIGN_KEY_CHECKS = 0;";
            String delete_shop2 = "DELETE FROM seproject.menu WHERE shop_id = ?;";
            String delete_shop3 = "DELETE FROM seproject.order_item WHERE shop_id = ?;";
            String delete_shop4 = "DELETE FROM seproject.orderist WHERE shopid = ?;";
            String delete_shop5 = "DELETE FROM seproject.shop WHERE shopid = ?;";
            String delete_shop6 = "SET FOREIGN_KEY_CHECKS = 1;";
            PreparedStatement shop1 = conn.prepareStatement(delete_shop1);
            shop1.executeUpdate();
            PreparedStatement shop2 = conn.prepareStatement(delete_shop2);
            shop2.setInt(1, shopid);
            shop2.executeUpdate();
            PreparedStatement shop3 = conn.prepareStatement(delete_shop3);
            shop3.setInt(1, shopid);
            shop3.executeUpdate();
            PreparedStatement shop4 = conn.prepareStatement(delete_shop4);
            shop4.setInt(1, shopid);
            shop4.executeUpdate();
            PreparedStatement shop5 = conn.prepareStatement(delete_shop5);
            shop5.setInt(1, shopid);
            shop5.executeUpdate();
            PreparedStatement shop6 = conn.prepareStatement(delete_shop6);
            shop6.executeUpdate();
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/showShopServlet");
            rd.forward(request, response);
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger("connection-close").log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(removeShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(removeShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
