<%-- 
    Document   : cart
    Created on : Oct 23, 2018, 5:48:12 PM
    Author     : Amp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="menuServlet"><button type="submit">Go to menu</button></a>
        <% controller.Cart ord = (controller.Cart) session.getAttribute("cart"); %>
        <% if (ord != null) { %>
        
        <% for (int i = 0; i < ord.getAccs().size(); i++) { %>
        <form action="amountControl" method="POST">
            <%= ord.getAccs().get(i).getAcc_id() %> <%= ord.getAccs().get(i).getPrice() %> <%= ord.getAccs().get(i).getQuentity() %> <input type="hidden" name="menuid" value="<%= ord.getAccs().get(i).getAcc_id() %>" />
            <button type="submit" name="amount" value="decrease">ลด</button> <button type="submit" name="amount" value="increase">เพิ่ม</button><br>
           </form>         
        <% } %>
        <% } %>
        
    </body>
</html>
