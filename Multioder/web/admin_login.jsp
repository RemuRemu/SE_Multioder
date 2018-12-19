<%-- 
    Document   : admin_login
    Created on : Dec 19, 2018, 2:46:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Admin</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="admin_css.css">
    </head>
    <body style="background-image: url('pic/food.jpg'); background-size: cover; background-attachment: fixed;">
        <div class="back"></div>
        <div class="login">
            <img id="logo" src="pic/logo.png" align="middle">
            <h1>เข้าสู่ระบบสำหรับ Admin</h1><br>
            <form action="adminLoginServlet" method="POST" class="down">
                <input type="text" name="username" value="" placeholder="Username" size="25px" /> <br><br>
                <input type="password" name="password" value="" placeholder="Password" size="25px" /> <br><br>
                <input type="submit" value="Login" />
            </form>
        </div>
            
    </body>
</html>
