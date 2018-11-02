/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Order;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
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
import model.Cart;
import model.Order;
import model.OrderItem;

/**
 *
 * @author USER
 */
@WebServlet(name = "addOrderServlet", urlPatterns = {"/addOrderServlet"})
public class addOrderServlet extends HttpServlet {

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

            //get cart and address for insert
            HttpSession session = request.getSession();
            model.Cart cart = (model.Cart) session.getAttribute("cart");
            double total = cart.getTotal();

            if (cart == null) {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/menuServlet");
                rd.forward(request, response);
                return;
            }
            //get uid for user and insert in order
            String username = (String) session.getAttribute("username");
            if (username != null) {

                //get add_id
                String add = request.getParameter("address_id");
                int add_id = Integer.parseInt(add);

                //get uid
                String find_uid = "SELECT uid FROM userprofile WHERE username = ?";
                PreparedStatement u = conn.prepareStatement(find_uid);
                u.setString(1, username);
                ResultSet rs_u = u.executeQuery();
                rs_u.next();
                int uid = rs_u.getInt("uid");

                //get address
                String find_address = "SELECT * FROM address WHERE address_id = ?";
                PreparedStatement a = conn.prepareStatement(find_address);
                a.setInt(1, add_id);
                ResultSet rs_a = a.executeQuery();
                rs_a.next();
                String address = rs_a.getString("address_des");

                //insert order
                ArrayList<Order> order_list = new ArrayList<Order>();
                String insert_order = "INSERT INTO `order`"
                        + "(buy_date, status,address, total, userprofile_uid) VALUES"
                        + "(?, ?, ?, ?, ?)";

                PreparedStatement c = conn.prepareStatement(insert_order, PreparedStatement.RETURN_GENERATED_KEYS);
                Timestamp date = new Timestamp(System.currentTimeMillis());

                c.setTimestamp(1, date);
                c.setString(2, "prepare");
                c.setString(3, address);
                c.setDouble(4, total);
                c.setInt(5, uid);
                c.executeUpdate();

                ResultSet rs_number = c.getGeneratedKeys();
                rs_number.next();
                int auto_id = rs_number.getInt(1);
                session.setAttribute("order_id", auto_id);

                //find order_id
                String find_order = "SELECT MAX(order_id) as 'order_id' FROM `order` WHERE  userprofile_uid = ?";
                PreparedStatement f = conn.prepareStatement(find_order);
                f.setInt(1, uid);
                ResultSet rs = f.executeQuery();
                rs.next();
                int order_id = rs.getInt("order_id");

                //insert order_item
                List<OrderItem> accs = cart.getAccs();
                int item_num = 1;
                for (int i = 0; i < accs.size(); i++) {
                    OrderItem item = accs.get(i);
                    int menuid = item.getAcc_id();
                    double price = item.getPrice();
                    int quentity = item.getQuentity();
                    String insert_item = "INSERT INTO order_item"
                            + "(itemnumber, menu_id,order_id, price, amount,shop_id) VALUES"
                            + "(?, ?, ?, ?, ?,?)";
                    PreparedStatement i_item = conn.prepareStatement(insert_item);
                    i_item.setInt(1, item_num);
                    i_item.setInt(2, menuid);
                    i_item.setInt(3, order_id);
                    i_item.setDouble(4, price);
                    i_item.setInt(5, quentity);
                    i_item.setInt(6, 1);
                    i_item.executeUpdate();
                    item_num += 1;
                }
            } 
            //forward to order comp
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/order_comp.jsp");
            rd.forward(request, response);
            

        } catch (SQLException ex) {
            Logger.getLogger(addOrderServlet.class.getName()).log(Level.SEVERE, null, ex);
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
