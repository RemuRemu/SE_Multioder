/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Profile;

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
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "editProfileServlet", urlPatterns = {"/editProfileServlet"})
public class editProfileServlet extends HttpServlet {

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
            String new_pass = request.getParameter("new_pass");
            String old_pass = request.getParameter("old_pass");
            String email = request.getParameter("email");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String phone = request.getParameter("phone");

            //find uid
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("username");
            String mem = "SELECT * FROM userprofile WHERE username = ?";
            PreparedStatement c = conn.prepareStatement(mem);
            c.setString(1, username);
            ResultSet rs = c.executeQuery();
            rs.next();
            int uid = rs.getInt("uid");

            //check old pass
            String check = "SELECT * FROM userprofile WHERE password = ?";
            PreparedStatement o = conn.prepareStatement(check);
            o.setString(1, old_pass);
            ResultSet o_pass = o.executeQuery();
            o_pass.next();

            //update password
            if (rs.getString("password").equals(old_pass)) {
                String edit_pass = "UPDATE userprofile"
                        + " SET password = ? WHERE uid = ?";
                PreparedStatement p = conn.prepareStatement(edit_pass);
                p.setString(1, new_pass);
                p.setInt(2, uid);
                p.executeUpdate();
                response.sendRedirect("showProfileServlet");
            } //change information only not change pass
            else if (old_pass.isEmpty() && new_pass.isEmpty()) {
                String edit_profile = "UPDATE userprofile"
                        + " SET firstname = ?,lastname = ?,email = ?,phone = ?"
                        + " WHERE uid = ?";
                PreparedStatement pro = conn.prepareStatement(edit_profile);
                pro.setString(1, firstname);
                pro.setString(2, lastname);
                pro.setString(3, email);
                pro.setString(4, phone);
                pro.setInt(5, uid);
                pro.executeUpdate();
                response.sendRedirect("showProfileServlet");

            } else {
                int fail = 1;
                request.setAttribute("password", fail);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/showEditProfileServlet");
                rd.forward(request, response);
                return;
            }

        } catch (SQLException ex) {
            Logger.getLogger(editProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
