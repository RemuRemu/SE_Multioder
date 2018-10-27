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
        <h1> recommend </h1>

                       

 
        <c:forEach var="rec"  items="${rec_menu_list}">  
            <form action="xxx"> 
                ${rec.name} 
                ${rec.description} 
                ${rec.price}   
                ${rec.recommend}   
            </form>
            

            
        </c:forEach>
        
        <h1> menu </h1>
        <c:forEach var="menu"  items="${menu_list}">  
            <form action="/Multioder/ProcessSelection">
                ${menu.name} 
                ${menu.description} 
                ${menu.price}   
                ${menu.menu_id}   
               
                <button type="submit" name="add" value="${menu.menu_id}" > add Cart</button>
            </form>


        </c:forEach>
    </body>
</html>
