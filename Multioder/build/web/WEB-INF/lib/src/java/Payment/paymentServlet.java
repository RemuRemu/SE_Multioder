/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Payment;

import co.omise.Client;
import co.omise.ClientException;
import co.omise.models.Charge;
import co.omise.models.OmiseException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
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
@WebServlet(name = "paymentServlet", urlPatterns = {"/paymentServlet"})
public class paymentServlet extends HttpServlet {

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
            Client client = new Client("pkey_test_5br77ofbj0xi13v5xqz", "skey_test_5br77ofc1db6vlm3fxc");
            String oid = request.getParameter("order_id");
            String omiseToken = request.getParameter("omiseToken");
            int order_id = Integer.parseInt(oid);
            String find_order = "SELECT * FROM `order` WHERE order_id = ?";
            PreparedStatement fo = conn.prepareStatement(find_order);
            fo.setInt(1, order_id);
            ResultSet rs_fo = fo.executeQuery();
            rs_fo.next();
            double price = rs_fo.getDouble("total_price");
            double sprice = rs_fo.getDouble("total_price") * 100;
            int total_price = (int) sprice;

            try {
                Charge charge = client.charges().create(new Charge.Create()
                        .amount(total_price) // THB 1,000.00
                        .currency("THB")
                        .card(omiseToken));
                System.out.println("created charge: " + charge.getId());
                
                
            Timestamp time = new Timestamp(System.currentTimeMillis());
                //insert payment
                String insert_payment = "INSERT INTO payment"
                        + "(date,order_id, amount) VALUES"
                        + "(?, ?, ?)";

                PreparedStatement c = conn.prepareStatement(insert_payment);
                c.setTimestamp(1, time);
                c.setInt(2, order_id);
                c.setDouble(3, price);
  
                c.executeUpdate();


                RequestDispatcher rd = getServletContext().getRequestDispatcher("/pay_comp.jsp");
                rd.forward(request, response);
            } catch (IOException e) {
                Logger.getLogger(paymentServlet.class.getName()).log(Level.SEVERE, null, e);
            } catch (OmiseException ex) {
                Logger.getLogger(paymentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClientException ex) {
            Logger.getLogger(paymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(paymentServlet.class.getName()).log(Level.SEVERE, null, ex);
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
