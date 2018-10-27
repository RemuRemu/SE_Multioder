<%-- 
    Document   : menu
    Created on : Oct 21, 2018, 4:29:45 PM
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
        <a href="cart.jsp"><button type="submit">Check Cart</button></a>
        <c:forEach var="menu"  items="${menu_list}">  
            <form action="/Multioder/shopServlet">
            
                ${menu.menu_id} ${menu.name} ${menu.price} <button type="submit" name="food" value="${menu.name}">Go to shop</button>
            
            </form>
        </c:forEach>
        



</body>
</html>
