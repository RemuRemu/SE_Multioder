<%-- 
    Document   : shop
    Created on : Oct 21, 2018, 4:41:18 PM
    Author     : Amp
--%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix='sql' uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach var="menu"  items="${menu_list2}">  
            <form action="ProcessSelection" method="POST">
                ${menu.menu_id} ${menu.name} ${menu.description} ${menu.price} <button type="submit" name="add" value="${menu.menu_id}">Add to cart </button>
            </form>


        </c:forEach>
    </body>
</html>
