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
 * @author USER
 */
@WebServlet(name = "editInfoMenuServlet", urlPatterns = {"/editInfoMenuServlet"})
public class editInfoMenuServlet extends HttpServlet {

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
        Connection conn = null;
        try {
            conn = seproject.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger("connection-error").log(Level.SEVERE, null, ex);
        }
        try (PrintWriter out = response.getWriter()) {
            response.setCharacterEncoding("UTF-8");
            /* TODO output your page here. You may use following sample code. */
            int foodid = parseInt(request.getParameter("foodid"));
            String foodname = request.getParameter("foodname");
            String fooddesc = request.getParameter("description");
            float foodprice = parseFloat(request.getParameter("price"));
            String foodimg = request.getParameter("image");
            HttpSession session = request.getSession();               
            model.Shop shop = (model.Shop)session.getAttribute("shop");
                int shopid = shop.getShopid();
                 String edit_food ="UPDATE seproject.menu"
                                + " SET name = ?,description = ?,price = ?,image = ?"
                              + " WHERE menuid = ?";
            //String edit_food = "UPDATE seproject.menu"
            //      + " SET name = ?,description = ?,price = ?"
            //        + " WHERE menuid = ?";
            PreparedStatement pro = conn.prepareStatement(edit_food);
            pro.setString(1, foodname);
            pro.setString(2, fooddesc);
            pro.setFloat(3, foodprice);
            pro.setString(4, foodimg);
            pro.setInt(5, foodid);
            pro.executeUpdate();
            response.sendRedirect("manageMenuServlet?shopid=" + shopid);
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
            Logger.getLogger(editInfoMenuServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(editInfoMenuServlet.class.getName()).log(Level.SEVERE, null, ex);
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
