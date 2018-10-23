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
    <body style="background-image: url('pic/food.jpg'); background-size: cover;">
        <div class="back"></div>
        <div class="area" style="background-image: url('pic/back.png');">
            <div class="logo_area">
                <img id="logo" src="pic/logo.png">
            </div>
            <div class="form_login">
                <form action="loginServlet" method="POST">
                    <font size="6" color="white"><b>เข้าสู่ระบบ</b></font><br><br>
                    <input type="text" name="user" placeholder="Username" size="30px" value="" /> <br><br>
                    <input type="password" name="pass" placeholder="Password" size="30px" value="" /> <br><br>

                    <input type="submit" value="Login" />
                </form>
                <font size="4" color="white">หากยังไม่เป็นสมาชิก <a href="register.jsp">คลิกที่นี่</a></font>
            </div>
        </div>
        
        <div class="pic" style="width: 500px; position: fixed; top: 200px; left: 725px; overflow: hidden;">
            <img src="pic/slogan1.png" class="slide anime" style="width: 100%;">
            <img src="pic/slogan2.png" class="slide anime" style="width: 100%;">
            <img src="pic/slogan3.png" class="slide anime" style="width: 100%;">
        </div>

        <c:if test="${loginflag == false}">
            <script src="assets/js/sweetalert.min.js"></script>
            <script>swal("Username or Password Incorrect");</script>  
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