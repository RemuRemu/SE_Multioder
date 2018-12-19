<%-- 
    Document   : menu
    Created on : Dec 18, 2018, 9:17:07 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Shop Home</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="shop_css.css">
    </head>
    <body style="background: #FDF2E9">
        <div class="navbar">
            <font size="7" style="text-shadow: 1px 1px 2px gray; text-align: center;">ยินดีต้อนรับ</font><br>
            <img src="${shop.shoplogo}" style="margin: auto; width: 30%;"/><br>
            <a href="../manageMenuServlet?shopid=${shop.shopid}"> <button style="width: 100%; margin: auto;">จัดการเมนู</button> </a> <br>
            <a href="../showOrderServlet?shopid=${shop.shopid}"> <button style="width: 100%; margin: auto;">จัดการใบสั่งซื้อ</button> </a> <br>
            <a href="../showShopProfileServlet?shopid=${shop.shopid}"> <button style="width: 100%; margin: auto;">จัดการร้านค้า</button> </a> <br>
            <a href="../shopLogoutServlet"><button style="width: 100%; margin: auto;">ออกจากระบบ</button></a>
        </div>
        <c:if test="${edit_shop == 2}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("แก้ไขเสร็จสิ้น");</script> 

        </c:if>
    </body>

</html>
