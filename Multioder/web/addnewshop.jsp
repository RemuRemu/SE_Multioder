<%-- 
    Document   : addnewshop
    Created on : Dec 16, 2018, 12:31:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Add New Shop</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="admin_css.css">
    </head>
    <body>
        <div class="content">
            <div class="title" style="display: flex; justify-content: space-between;">
                <font size="7" style="text-shadow: 1px 1px 2px gray;">รายการร้านค้า</font><br>
                <a href="showShop_test"><button>ย้อนกลับ</button></a>
            </div>
            <form action="addShopServlet">
                ชื่อร้านค้า : <input type="text" name="shop_name" value="" /> <br>
                Shop username : <input type="text" name="shop_username" value="" /> <br>
                Password : <input type="password" name="shop_password" value="" /> <br>
                <input type="submit" value="Submit" />
            </form>
        </div>
    </body>
</html>
