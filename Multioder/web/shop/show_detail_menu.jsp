<%-- 
    Document   : show_detail_menu
    Created on : Dec 18, 2018, 2:00:48 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Edit Menu</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="shop/shop_css.css">
</head>
<body style="background: #FDF2E9">
    <div class="content">
        <div class="title" style="display: flex; justify-content: space-between;">
            <font size="7" style="text-shadow: 1px 1px 2px gray;">แก้ไขข้อมูลอาหาร</font>
        </div>

        <form action="editInfoMenuServlet">
            ชื่ออาหาร : <input type="text" name="foodname" value="${detail_menu.name}" /><br>
            รายละเอียดของอาหาร : <input type="text" name="fooddesc" value="${detail_menu.description}" /><br>
            ราคา : <input type="text" name="foodprice" value="${detail_menu.price}" /><br>
            รูปภาพประกอบ : <input type="file" name="foodimg" value="" style="background: none;"/>
            <input type="submit" value="Submit" />
            <input type="hidden" value="${detail_menu.menu_id}" name="foodid" />
            <input type="hidden" name="shopid" value="${shopid}" />

        </form>
    </div>
    </body>
</html>
