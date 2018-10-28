<%-- 
    Document   : pick_address
    Created on : Oct 27, 2018, 11:30:16 AM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please select your address</h1>

        <form action="addOrder">
            <h4>My address is </h4>
            <select name="address_id" class="form-control">
                <c:forEach var="add" items="${add_list}">
                    <option value=${add.address_id}>${add.address_des}</option>
                    
                </c:forEach>
                   
            </select>
        </form>
         <a href="newAddress.jsp">เพิ่มที่อยู่ใหม่</a>
    </body>
</html>
