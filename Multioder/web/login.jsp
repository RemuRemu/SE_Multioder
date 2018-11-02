<%-- 
    Document   : login
    Created on : Oct 20, 2018, 9:52:05 PM
    Author     : Chronical
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Log in</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <!--<link rel="stylesheet" type="text/css" href="jb.css">-->
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="ani.css">
    </head>
    <body style="font-family: 'Kanit', sans-serif; background-image: url('pic/food.jpg'); background-size: cover; background-attachment: fixed;">
        <!-- <img src="food1.jpg" style="position: fixed; top: 0px; left: 0px; width: 105%;"> -->
        <div class="back"></div>
        <!-- <img src="back.png" style="width: 35%; height: 97%; margin-top: -1em; margin-left: 10%; padding-top: 2em; padding-bottom: 3em; position: fixed;"> -->
        <div class="area" style="background-image: url('pic/back.png');">
            <div class="logo_area">
                <img id="logo" src="pic/logo.png">
            </div>
            <div class="form_login">
                <form method="post" action="loginServlet">
                    <font size="6" color="white"><b>เข้าสู่ระบบ</b></font><br><br>
                    <input type="text" name="user" placeholder="Username" size="40px"> <br><br>
                    <input type="password" name="pass" placeholder="Password" size="40px"> <br><br>
                    <input type="submit" name="login" value="Login"><br><br>
                </form>
                <font size="4" color="white">หากยังไม่เป็นสมาชิก <a href="register.jsp">คลิกที่นี่</a></font>
            </div>
        </div>
        
        <div class="pic" style="width: 500px; position: fixed; top: 28%; left: 50%; overflow: hidden;">
            <img src="pic/slogan1.png" class="slide anime" style="width: 100%;">
            <img src="pic/slogan2.png" class="slide anime" style="width: 100%;">
            <img src="pic/slogan3.png" class="slide anime" style="width: 100%;">
        </div>

        <c:if test="${loginflag == false}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("ชื่อผู้ใช้หรือพาสเวิร์ดไม่ถูกต้อง");</script>  
        </c:if>
            
        <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("slide");
            for (i = 0; i < x.length; i++) {
               x[i].style.display = "none";  
            }
            myIndex++;
            if (myIndex > x.length) {myIndex = 1}
            x[myIndex-1].style.display = "block";
            setTimeout(carousel, 4000);
        }
        </script>

    </body>
</html>

