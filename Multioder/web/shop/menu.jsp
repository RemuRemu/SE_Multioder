<%-- 
    Document   : menu
    Created on : Dec 18, 2018, 9:17:07 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>z
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
            <a href="../manageMenuServlet?shopid=${shop.shopid}"> <button style="width: 100%; margin: auto;">จัดการเมนู</button> </a> <br>
            <a href="../showOrderServlet?shopid=${shop.shopid}"> <button style="width: 100%; margin: auto;">จัดการใบสั่งซื้อ</button> </a> <br>
            <a href="../shopLogoutServlet"><button style="width: 100%; margin: auto;">ออกจากระบบ</button></a>
            <img src="${shop.shoplogo}"/>

        </div>
    </body>
</html>
