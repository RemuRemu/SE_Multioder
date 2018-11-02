/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Address;

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
import model.Menu;
import model.Shop;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "addressServlet", urlPatterns = {"/addressServlet"})
public class addressServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();

            //get user_id from userprofile
            String username =  (String) session.getAttribute("username");
            String find_user = "SELECT * FROM userprofile WHERE username = ?";
            PreparedStatement user = conn.prepareStatement(find_user);
            user.setString(1, username);
            ResultSet rs = user.executeQuery();
            out.print("test");
            //member
            if (rs.next() != false) {
                int user_id = rs.getInt("uid");
                out.print(user_id);
                out.print("test");
                //find add in address table that match uid and insert them in list

            ArrayList<Address> add_list = new ArrayList<Address>();
                String find_add = "SELECT * FROM address WHERE userprofile_uid = ?";
                PreparedStatement address = conn.prepareStatement(find_add);
                address.setInt(1, user_id);
                ResultSet rs_add = address.executeQuery();
                while (rs_add.next()) {
                    Address add = new Address();
                    add.setAddress_id(rs_add.getInt("address_id"));
                    add.setAddress_des(rs_add.getString("address_des"));
                    add.setUserprofile_uid(rs_add.getInt("userprofile_uid"));
                    add_list.add(add);

                }
                request.setAttribute("add_list", add_list);
                request.setAttribute("userid", user_id);
                //forward to select add
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/pick_address.jsp");
                rd.forward(request, response);


        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger("connection-close").log(Level.SEVERE, null, ex);
            }
        }
    }   catch (SQLException ex) {
            Logger.getLogger(addressServlet.class.getName()).log(Level.SEVERE, null, ex);
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
