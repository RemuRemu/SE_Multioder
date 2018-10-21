<%-- 
    Document   : signup
    Created on : Oct 21, 2018, 2:09:06 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Sign up</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href="jb.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body style="background-image: url('food1.jpg'); background-size: cover;">
        <div class="back"></div>
        <!-- <div class="blank" style="width: 102%; height: 102%; position: relative;"> -->
            <div class="area1">
                <div class="form_signup">
                    <form action="" method="post">
                        <font size="6" color="white"><b>สมัครสมาชิก</b></font><br><br>
                        <font size="3" color="white">
                        Username<br>
                        <input type="text" name="username" size="40px"> <br>
                        Password<br>
                        <input type="password" name="password" size="40px"> <br>
                        First name<br>
                        <input type="password" name="firstname" size="40px"> <br>
                        Last name<br>
                        <input type="password" name="lastname" size="40px"> <br>
                        Email<br>
                        <input type="password" name="email" size="40px"> <br>
                        Phone<br>
                        <input type="password" name="phone" size="40px"> <br>
                        Address<br>
                        <input type="password" name="address" size="40px"> <br><br>
                        </font>
                        <input type="submit" name="login" value="Login">
                    </form>
                    <font size="3" color="white"><a href="index.jsp"><button type="button">ย้อนกลับ</button></a></font>
                </div>
            </div>
        <!-- </div> -->
    </body>
</html>