<%-- 
    Document   : shop_login
    Created on : Nov 25, 2018, 6:08:01 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Shop</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="shop_css.css">
    </head>
    <body style="background-image: url('../pic/food.jpg'); background-size: cover; background-attachment: fixed;">
        <div class="back"></div>
        <div class="login">
            <img id="logo" src="../pic/logo.png" align="middle">
            <h1>เข้าสู่ระบบสำหรับผู้ประกอบการ</h1><br>
            <form action="../shopLoginServlet">
                <input type="text" name="user" value="" placeholder="Username" size="25px" /> <br><br>
                <input type="password" name="pass" value="" placeholder="Password" size="25px" /><br><br>
            <input type="submit" value="Login" />
            </form>
        </div>
    </body>
</html>
