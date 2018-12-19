/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop;

import Profile.viewOrderServlet;
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
import model.Order;
import model.OrderItem;
import model.Status;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "viewShopOrderServlet", urlPatterns = {"/viewShopOrderServlet"})
public class viewShopOrderServlet extends HttpServlet {

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
            model.Shop shop = (model.Shop) session.getAttribute("shop");
            int shopid = shop.getShopid();
            String order = request.getParameter("ord_id");
            int order_id = Integer.parseInt(order);
            ArrayList<OrderItem> s_itemlist = new ArrayList<OrderItem>();
            String sql = "select * from order_item where order_id = ? AND shop_id = ?";
            String sta = "select * from orderist where orderid = ? AND shopid = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, order_id);
            stmt.setInt(2, shopid);
            ResultSet rs = stmt.executeQuery();

            PreparedStatement sta_s = conn.prepareStatement(sta);
            sta_s.setInt(1, order_id);
            sta_s.setInt(2, shopid);
            ResultSet sta_rs = sta_s.executeQuery();
            sta_rs.next();
            String status = sta_rs.getString("status");

            while (rs.next()) {

                OrderItem item = new OrderItem(getServletContext());
                item.setPrice(rs.getDouble("price"));
                item.setQuentity(rs.getInt("amount"));
                item.setMenu_id(rs.getInt("menu_id"));
                item.setItem_num(rs.getInt("itemnumber"));
                item.setOrder_id(rs.getInt("order_id"));
                s_itemlist.add(item);
            }

            request.setAttribute("s_itemlist", s_itemlist);
            request.setAttribute("status", status);
            request.setAttribute("order_id", order_id);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/shop/view_order.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(viewOrderServlet.class.getName()).log(Level.SEVERE, null, ex);
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
