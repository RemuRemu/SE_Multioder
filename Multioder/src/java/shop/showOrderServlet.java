/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop;

import Profile.showProfileServlet;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
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
import model.Order;
import model.OrderItem;
import model.ShopOrder;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "showOrderServlet", urlPatterns = {"/showOrderServlet"})
public class showOrderServlet extends HttpServlet {

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
            //int s_id = (int) session.getAttribute("shopid");
            int s_id = parseInt(request.getParameter("shopid"));
            ArrayList<Order> s_ordlist = new ArrayList<Order>();
            ArrayList<Double> total = new ArrayList<Double>();
            String order = "SELECT * FROM `order` WHERE order_id IN (SELECT order_id FROM order_item WHERE shop_id = ? ORDER BY order_id ASC);";
            PreparedStatement o = conn.prepareStatement(order);
            o.setInt(1, s_id);
            ResultSet rs_o = o.executeQuery();
            while (rs_o.next()) {
                Order ord = new Order();
                ord.setOrder_id(rs_o.getInt("order_id"));
                int order_id = rs_o.getInt("order_id");
                ord.setBuy_date(rs_o.getDate("buy_date"));
                ord.setStatus(rs_o.getString("status"));
                ord.setAddress(rs_o.getString("address"));
                String find_total = "Select * From order_item WHERE shop_id = ? AND order_id = ?";
                PreparedStatement m = conn.prepareStatement(find_total);
                m.setInt(1, s_id);
                m.setInt(2, order_id);
                ResultSet rs = m.executeQuery();
                double price = 0;
                while (rs.next()) {
                    total.add(rs.getDouble("price"));
                    price+=rs.getDouble("price");
                }
                ord.setTotal(price);
                s_ordlist.add(ord);
            }

            request.setAttribute("s_ordlist", s_ordlist);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/shop/show_order.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(showProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
