<%-- 
    Document   : login
    Created on : Oct 20, 2018, 9:52:05 PM
    Author     : Chronical
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="loginServlet" method="POST">

            username <input type="text" name="user" value="" /> <br>
            password <input type="password" name="pass" value="" /> <br>

            <input type="submit" value="Login" />
        </form>
        <c:if test="${loginflag == false}">
            <script src="assets/js/sweetalert.min.js"></script>
            <script>swal("Username or Password Incorrect");</script>  
        </c:if>


    </body>
</html>

