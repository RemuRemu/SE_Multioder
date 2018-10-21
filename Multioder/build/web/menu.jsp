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
        <sql:setDataSource var="newdatasource" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql:///seproject" user="root" password="root" />
        <sql:query var="db" dataSource="${newdatasource}">
            SELECT * FROM menu GROUP BY name
        </sql:query>
            <form action="shop.jsp" method="POST">
        <c:forEach var="row" items="${db.rows}">
            ${row.name} <button type="submit" name="shop" value="menuid"> Click To Shop </button> <br>
                
        </c:forEach>
            </form>
                  
    </body>
</html>
