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
        <title>Multioder - Shop Detail</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="admin_css.css">
    </head>
    <body>
        <div class="content">
            <div class="title" style="display: flex; justify-content: space-between;">
                <font size="7" style="text-shadow: 1px 1px 2px gray;">Shop NO. ${shopdetail.shopid}</font><br>
                <a href="showShop_test"><button>ย้อนกลับ</button></a>
            </div>
            <br>
            ${shopdetail.shopid}${shopdetail.shopname}
            <form action="editInfoShopServlet">
                ชื่อร้านค้า : <input type="text" name="shopname" value="${shopdetail.shopname}" /><br>
                สถานะของร้านค้า : <c:set var = "status" scope = "session" value = "${shopdetail.shop_status}"/>

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
        </div>
    </body>
</html>
