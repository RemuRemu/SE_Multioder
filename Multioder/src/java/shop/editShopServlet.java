/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Float.parseFloat;
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
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "editShopServlet", urlPatterns = {"/editShopServlet"})
public class editShopServlet extends HttpServlet {

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
            throws ServletException, IOException {
        Connection conn = null;
        try {
            conn = seproject.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger("connection-error").log(Level.SEVERE, null, ex);
        }
        try (PrintWriter out = response.getWriter()) {
            response.setCharacterEncoding("UTF-8");
            /* TODO output your page here. You may use following sample code. */
            String shopname = request.getParameter("shopname");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String shoplogo = request.getParameter("image");

            if (shopname.isEmpty() || username.isEmpty() || password.isEmpty() || shoplogo.isEmpty()) {
                int fail = 1;
                request.setAttribute("edit_shop", fail);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/showShopProfileServlet");
                rd.forward(request, response);
                return;
            } else {
                HttpSession session = request.getSession();
                model.Shop shop = (model.Shop) session.getAttribute("shop");
                int shopid = shop.getShopid();
                String edit_shop = "UPDATE shop"
                        + " SET shopname = ?,shopusername = ?,shoppassword = ?,shoplogo = ?"
                        + " WHERE shopid = ?";
                PreparedStatement edit = conn.prepareStatement(edit_shop);
                edit.setString(1, shopname);
                edit.setString(2, username);
                edit.setString(3, password);
                edit.setString(4, shoplogo);
                edit.setInt(5, shopid);
                edit.executeUpdate();
                response.sendRedirect("setShoplogoServlet");
            }

        } catch (SQLException ex) {
            Logger.getLogger(editShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
