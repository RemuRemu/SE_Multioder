/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ViewMenu;

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
import javax.sql.DataSource;
import model.Menu;
import model.Shop;

/**
 *
 * @author Chronical
 */
@WebServlet(name = "shopServlet", urlPatterns = {"/shopServlet"})
public class shopServlet extends HttpServlet {

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
        String foodName = request.getParameter("food");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print(foodName);
            ArrayList<Menu> menu_list = new ArrayList<Menu>();
            ArrayList<Shop> shop_logo = new ArrayList<Shop>();
            ArrayList<Shop> rec_shop_logo = new ArrayList<Shop>();
            ArrayList<Menu> menu_rec = new ArrayList<Menu>();
            String name = request.getParameter("name");
            String find_menu = "SELECT M.menuid, M.name ,M.shop_id , M.description , M.price ,M.image, M.recommend, S.shopname , S.shopid , S.shop_status , S.shoplogo\n" +
                                "FROM seproject.menu M\n" +
                                "JOIN seproject.shop S\n" +
                                "ON (M.shop_id = S.shopid)\n" +
                                "where S.shop_status = 1 and  M.name = ? ;";
                    
            
            PreparedStatement menu_db = conn.prepareStatement(find_menu);
            menu_db.setString(1, name);
            ResultSet rs = menu_db.executeQuery();
            int count = 0;
            while (rs.next()) {
                
                count+= 1 ;
                if (count<= 3){
                 Menu rec_menu = new Menu();
                rec_menu.setShopname(rs.getString("shopname"));
                rec_menu.setMenu_id(rs.getInt("menuid"));
                rec_menu.setName(rs.getString("name"));
                rec_menu.setDescription(rs.getString("description"));
                rec_menu.setPrice(rs.getFloat("price"));
                rec_menu.setImage(rs.getString("image"));
                rec_menu.setRecommend(rs.getInt("recommend"));
                rec_menu.setLogo("shoplogo");
                menu_rec.add(rec_menu);
                }
                
                Menu menu = new Menu();
                menu.setShopname(rs.getString("shopname"));
                menu.setMenu_id(rs.getInt("menuid"));
                menu.setName(rs.getString("name"));
                menu.setDescription(rs.getString("description"));
                menu.setPrice(rs.getFloat("price"));
                menu.setImage(rs.getString("image"));
                menu.setRecommend(rs.getInt("recommend"));
                menu.setLogo("shoplogo");
                menu_list.add(menu);
                
            }
  
            
 

            request.setAttribute("rec_shop_logo", menu_list);
            request.setAttribute("shop_logo", menu_list);
            request.setAttribute("menu_list", menu_list);
            request.setAttribute("rec_menu_list", menu_rec);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/shop.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(menuServlet.class.getName()).log(Level.SEVERE, null, ex);
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
