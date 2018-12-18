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
        <form action="editInfoShopServlet">
            Shop name :<input type="text" name="shopname" value="${shopdetail.shopname}" /><br>
            Shop status :<c:set var = "status" scope = "session" value = "${shopdetail.shop_status}"/>

                <c:choose> 
                    <c:when test = "${shopdetail.shop_status == true}">
                        <select name="status">
                        <option value="1">active</option>
                        <option value="0"> inactive</option>
                        </select>
                    </c:when>
                    <c:when test = "${shopdetail.shop_status == false}">
                        <select name="status">
                        <option value="0"> inactive</option>
                        <option value="1">active</option>
                        </select>
                    </c:when>
                    <c:otherwise>
                        No comment sir...
                    </c:otherwise>
                </c:choose>    
            <br>
                        Shop username :<input type="text" name="shopusername" value="${shopdetail.shopusername}" /><br>
                        shop password :<input type="password" name="shoppassword" value="" />
                        <input type="submit" value="Submit" />
                        <input type="hidden" value="${shopdetail.shopid}" name="shopid" />
        </form>
    </body>
</html>
