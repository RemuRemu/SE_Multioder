<%-- 
    Document   : admin_login
    Created on : Dec 19, 2018, 2:46:12 PM
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
        <form action="../adminLoginServlet" method="POST">
            Username<input type="text" name="username" value="" />
            Password<input type="text" name="password" value="" />
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
