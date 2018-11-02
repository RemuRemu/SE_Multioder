<%-- 
    Document   : newAddress
    Created on : Oct 28, 2018, 8:48:14 AM
    Author     : USER
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Address</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
        <!-- <style>.slide {display: block;} </style> -->
    </head>
    <body style="background-image: url('pic/food_menu.jpg'); background-size: auto; background-attachment: fixed;">
        <div class="back"></div>
        <div class="menu_area">
            <div class="menu">
                <a href="menuServlet"><div id="home_area"><img src="pic/logo.png" id="home"></div></a>
                <div id="choose"></div>
                <a href="cart.jsp"><div id="shop"></div></a>
            </div>
        </div>
        
        <div class="con_area">
            <div class="title">
                <font class="head_name" size="6" color="black">กรอกที่อยู่ใหม่ของคุณ</font>
                <a href="addressServlet"><button type="submit" class="go_back">ย้อนกลับ</button></a>
            </div>
            <div class="addr" style="width: 94%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
                <form action="addaddressServlet" method="POST">
                    <textarea name="newAddress" rows="3" cols="60"></textarea><br>
                    <input type="submit" value="เพิ่มที่อยู่" />
                </form>
            </div>
                
        </div>
        <c:if test="${addressflag == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("ที่อยู่ไม่สามารถเว้นว่างได้");</script>  

        </c:if>
    </body>
</html>
