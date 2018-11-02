<%-- 
    Document   : register
    Created on : Oct 20, 2018, 9:17:45 PM
    Author     : Chronical
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Register</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <!--<link rel="stylesheet" type="text/css" href="jb.css">-->
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body style="font-family: 'Kanit', sans-serif; background-image: url('pic/food.jpg'); background-size: cover; background-attachment: fixed;">
        <div class="back"></div>
        <div class="area1" style="background-image: url('pic/back.png');">
            <div class="form_signup">
                <form action="registerServlet" method="POST">
                    <font size="7" color="white"><b>สมัครสมาชิก</b></font> <br><br>
                    <font size="3" color="white">
                    ชื่อผู้ใช้ (username) <br>
                    <input type="text" name="user" value="" size="40px"/> <br>
                    รหัสผ่าน (password) <br>
                    <input type="password" name="pass" value="" size="40px"/> <br>
                    ชื่อจริง (first name) <br>
                    <input type="text" name="first" value="" size="40px"/> <br>
                    นามสกุล (last name) <br>
                    <input type="text" name="last" value="" size="40px"/> <br>
                    อีเมล์ (email) <br>
                    <input type="text" name="mail" value="" size="40px"/> <br>
                    โทรศัพท์ (phone) <br>
                    <input type="text" name="phone" value="" maxlength = "10" size="40px"/> <br>
                    ที่อยู่ (address) <br>
                    <textarea name="add" rows="4" cols="40"></textarea><br>
                    </font>

                    <input type="submit" name="register" value="Register" />
                    <!--<input type="submit" name="back" value="Back" />-->
                </form>
                <a href="login.jsp"><button type="submit" style="padding: 6px;">กลับสู่หน้าล็อกอิน</button></a>
            </div>
        </div>

        <c:if test="${flag == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("ชื่อผู้ใช้งานหรืออีเมลได้ถูกใช้งานไปแล้ว");</script>  

        </c:if>
        <c:if test="${flag == 2}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("กรุณากรอกข้อมูลให้ครบทุกช่อง");</script> 
            


        </c:if>


    </body>
</html>
