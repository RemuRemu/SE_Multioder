/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

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
 * @author Chronical
 */
@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String user = request.getParameter("user");
            String password = request.getParameter("pass");
            String firstname = request.getParameter("first");
            String lastname = request.getParameter("last");
            String email = request.getParameter("mail");
            String phone = request.getParameter("phone");
            String address = request.getParameter("add");
            
            //check all field have value
            if (user.isEmpty() || password.isEmpty() || email.isEmpty() || address.isEmpty() 
                    || phone.isEmpty()|| firstname.isEmpty()|| lastname.isEmpty()) {
                int fail = 2;
                request.setAttribute("flag", fail);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
                rd.forward(request, response);
                return;
            } 
            //find same username,email
            String find_sameuser = "SELECT username FROM userprofile WHERE  username = ?";
            String find_sameemail = "SELECT email FROM userprofile WHERE  email = ?";
            PreparedStatement sameuser = conn.prepareStatement(find_sameuser);
            sameuser.setString(1, user);
            PreparedStatement sameemail = conn.prepareStatement(find_sameemail);
            sameemail.setString(1, email);
            ResultSet user_rs = sameuser.executeQuery();
            ResultSet email_rs = sameemail.executeQuery();
            if (user_rs.next() == true) {
                int fail = 1;
                request.setAttribute("flag", fail);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
                rd.forward(request, response);
                return;
            } else if (email_rs.next()) {
                int fail = 1;
                request.setAttribute("flag", fail);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
                rd.forward(request, response);
                return;
            }
            
            
            //insert in userprofile
            String insert_user = "INSERT INTO userprofile"
                    + "(username, password, firstname, lastname, email, phone) VALUES"
                    + "(?, ?, ?, ?, ?, ?)";
            PreparedStatement m = conn.prepareStatement(insert_user);
            m.setString(1, user);
            m.setString(2, password);
            m.setString(3, firstname);
            m.setString(4, lastname);
            m.setString(5, email);
            m.setString(6, phone);
            m.executeUpdate();
            
            //find uid in user_profile
            String find_mem = "SELECT uid FROM userprofile WHERE  username = ? AND email = ?";
            PreparedStatement f = conn.prepareStatement(find_mem);
            f.setString(1, user);
            f.setString(2, email);
            ResultSet rs = f.executeQuery();
            rs.next();
            int uid = rs.getInt("uid");
            //insert in add
            String insert_add = "INSERT INTO address"
                    + "(address_des,userprofile_uid) VALUES"
                    + "(?, ?)";
            PreparedStatement a = conn.prepareStatement(insert_add);
            a.setString(1, address);
            a.setInt(2, uid);
            a.executeUpdate();
            
            int pass = 3;
            request.setAttribute("flag", pass);
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
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
