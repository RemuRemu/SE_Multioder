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
        <c:forEach var="menu"  items="${menu_list}">  
            <form action="/Multioder/shopServlet">
                ${menu.name} 
                <input type="hidden" name="name" value=${menu.name} />
            
            <input type="submit" value="Go to shop" />
            </form>
        </c:forEach>
        



</body>
</html>
