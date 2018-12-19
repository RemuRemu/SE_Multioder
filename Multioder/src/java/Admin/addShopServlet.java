/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import Register.registerServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(name = "addShopServlet", urlPatterns = {"/addShopServlet"})
public class addShopServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String shopname = request.getParameter("shop_name");
            String shop_username = request.getParameter("shop_username");
            String shop_password = request.getParameter("shop_password");

            // if (shopname.isEmpty() || shop_username.isEmpty() || shop_password.isEmpty()) {
            //   int fail = 2;
            // request.setAttribute("a_addshop_flag", fail);
            // RequestDispatcher rd = getServletConztext().getRequestDispatcher("/addnewshop.jsp");
            // rd.forward(request, response);
            //return;
            // }
            if (shop_username == null || shop_password == null) {
                response.sendRedirect("/addnewshop.jsp");
            } else {
                String find_sameuser = "SELECT shopusername FROM shop WHERE  shopusername = ?";
                String find_samename = "SELECT shopname FROM shop WHERE  shopname = ?";

                PreparedStatement sameuser = conn.prepareStatement(find_sameuser);
                sameuser.setString(1, shop_username);

                PreparedStatement samename = conn.prepareStatement(find_samename);
                samename.setString(1, find_samename);

                ResultSet user_rs = sameuser.executeQuery();
                ResultSet name_rs = samename.executeQuery();

                if (user_rs.next() == true) {
                    int fail = 1;
                    request.setAttribute("flag", fail);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/addnewshop.jsp");
                    rd.forward(request, response);
                    return;
                } else if (name_rs.next()) {
                    int fail = 1;
                    request.setAttribute("flag", fail);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/addnewshop.jsp");
                    rd.forward(request, response);
                    return;
                }

                String insert_shop = "INSERT INTO shop"
                        + "(shopname, shop_status, shoplogo, shopusername, shoppassword) VALUES"
                        + "(?,0,null,?,?)";
                PreparedStatement m = conn.prepareStatement(insert_shop);
                m.setString(1, shopname);
                m.setString(2, shop_username);
                m.setString(3, shop_password);
                m.executeUpdate();

                int pass = 3;
                request.setAttribute("flag", pass);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/showShopServlet");
                rd.forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(registerServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(addShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(addShopServlet.class.getName()).log(Level.SEVERE, null, ex);
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
