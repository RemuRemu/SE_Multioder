<%-- 
    Document   : register
    Created on : Oct 20, 2018, 9:17:45 PM
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

        <form action="registerServlet" method="POST">
            register <br>
            username <input type="text" name="user" value="" /> <br>
            password <input type="password" name="pass" value="" /> <br>
            first name <input type="text" name="first" value="" /> <br>
            last name <input type="text" name="last" value="" /> <br>
            email <input type="text" name="mail" value="" /> <br>
            phone <input type="text" name="phone" value="" maxlength = "10"/> <br>
            <textarea name="add" rows="4" cols="20"></textarea>
            <input type="submit" value="regis" />
        </form>
        <c:if test="${flag == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("Username or Email has already used");</script>  
        </c:if>
        <c:if test="${flag == 2}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("Please enter all fields");</script>  
        </c:if>


    </body>
</html>
