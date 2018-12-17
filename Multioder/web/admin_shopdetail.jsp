<%-- 
    Document   : admin_shopdetail
    Created on : Dec 17, 2018, 11:45:32 AM
    Author     : USER
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shop NO. ${shopdetail.shopid}</h1>
        ${shopdetail.shopid}${shopdetail.shopname}
        <form action="editInfoshopServlet">
            Shop name :<input type="text" name="shopname" value="${shopdetail.shopname}" /><br>
            Shop status :<c:set var = "status" scope = "session" value = "${shopdetail.shop_status}"/>

                <c:choose> 
                    <c:when test = "${shopdetail.shop_status == true}">
                        <select name="status">
                        <option>active</option>
                        <option> inactive</option>
                        </select>
                    </c:when>
                    <c:when test = "${shopdetail.shop_status == false}">
                        <select name="status">
                        <option> inactive</option>
                        <option>active</option>
                        </select>
                    </c:when>
                    <c:otherwise>
                        No comment sir...
                    </c:otherwise>
                </c:choose>    
            <br>
                        Shop username :<input type="text" name="shopusername" value="${shopdetail.shopusername}" /><br>
                        shop password :<input type="password" name="" value="${shopdetail.shoppassword}" />
                        <input type="submit" value="Submit" />
        </form>
    </body>
</html>
