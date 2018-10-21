<!-- <%-- 
    Document   : index
    Created on : Oct 21, 2018, 2:04:02 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Multioder - Login</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="jb.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body style="font-family: 'Kanit', sans-serif; background-image: url('food1.jpg'); background-size: cover;">
        <!-- <img src="food1.jpg" style="position: fixed; top: 0px; left: 0px; width: 105%;"> -->
        <div class="back"></div>
        <!-- <img src="back.png" style="width: 35%; height: 97%; margin-top: -1em; margin-left: 10%; padding-top: 2em; padding-bottom: 3em; position: fixed;"> -->
        <div class="area">
            <div class="logo_area">
                <img id="logo" src="logo.png">
            </div>
            <div class="form_login">
                <form method="post" action="home.html">
                    <font size="6" color="white"><b>เข้าสู่ระบบ</b></font><br><br>
                    <input type="text" name="username" placeholder="Username" size="40px"> <br><br>
                    <input type="password" name="password" placeholder="Password" size="40px"> <br><br>
                    <input type="submit" name="login" value="Login"><br><br>
                </form>
                <font size="4" color="white">หากยังไม่เป็นสมาชิก <a href="signup.html">คลิกที่นี่</a></font>
            </div>
        </div>
    </body>
</html>