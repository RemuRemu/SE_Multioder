<%-- 
    Document   : addnewshop
    Created on : Dec 16, 2018, 12:31:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addShopServlet">
            Shop name<input type="text" name="shop_name" value="" />
            Shop username<input type="text" name="shop_username" value="" />
            Password<input type="password" name="shop_password" value="" />
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
