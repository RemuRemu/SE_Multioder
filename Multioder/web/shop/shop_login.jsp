<%-- 
    Document   : shop_login
    Created on : Nov 25, 2018, 6:08:01 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../shopLoginServlet">
            Username :<input type="text" name="user" value="" />
            Password :<input type="password" name="pass" value="" />
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
