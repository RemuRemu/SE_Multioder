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
import java.util.ArrayList;
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
import model.Address;
import model.Profile;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "showEditProfileServlet", urlPatterns = {"/showEditProfileServlet"})
public class showEditProfileServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("username");
            String mem = "SELECT * FROM userprofile WHERE username = ?";
            PreparedStatement c = conn.prepareStatement(mem);
            c.setString(1, username);
            ResultSet rs = c.executeQuery();
            rs.next();
            int u_id = rs.getInt("uid");
            ArrayList<Address> addlist = new ArrayList<Address>();
            String sql = "SELECT * FROM address WHERE userprofile_uid = ?";
            PreparedStatement a = conn.prepareStatement(sql);
            a.setInt(1, u_id);
            ResultSet rs_a = a.executeQuery();

            while (rs_a.next()) {
                Address add = new Address();
                add.setAddress_id(rs_a.getInt("address_id"));
                add.setAddress_des(rs_a.getString("address_des")); 
                addlist.add(add);

            }
            String profile = "SELECT * FROM userprofile WHERE uid = ?";
            PreparedStatement p = conn.prepareStatement(profile);
            p.setInt(1, u_id);
            ResultSet rs_p = p.executeQuery();

            
            Profile pro = new Profile();
            if (rs_p.next()) {
                pro.setUid(rs_p.getInt("uid"));
                pro.setUsername(rs_p.getString("username")); 
                pro.setPassword(rs_p.getString("password")); 
                pro.setFirstname(rs_p.getString("firstname")); 
                pro.setLastname(rs_p.getString("lastname"));
                pro.setEmail(rs_p.getString("email")); 
                pro.setPhone(rs_p.getString("phone")); 

            }
            request.setAttribute("pro", pro);
            request.setAttribute("addlist", addlist);
            
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/edit_profile.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(showEditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
