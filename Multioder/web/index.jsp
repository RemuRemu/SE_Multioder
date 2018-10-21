<%-- 
    Document   : index
    Created on : Oct 21, 2018, 2:04:02 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Login</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="jb.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body style="background-image: url('pic\food1.jpg'); background-size: cover;">
        <div class="back"></div>
        <div class="area">
            <div class="logo_area">
                <img id="logo" src="pic\logo.png">
            </div>
            <div class="form_login">
                <form method="post" action="home.jsp">
                    <font size="6" color="white"><b>เข้าสู่ระบบ</b></font><br><br>
                    <input type="text" name="username" placeholder="Username" size="40px"> <br><br>
                    <input type="password" name="password" placeholder="Password" size="40px"> <br><br>
                    <input type="submit" name="login" value="Login"><br><br>
                </form>
                <font size="4" color="white">หากยังไม่เป็นสมาชิก <a href="signup.jsp">คลิกที่นี่</a></font>
            </div>
        </div>
    </body>
</html>