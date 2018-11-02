<%-- 
    Document   : shop
    Created on : Oct 21, 2018, 4:41:18 PM
    Author     : Amp
--%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix='sql' uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: "Lato", sans-serif;
                transition: background-color .5s;
            }

            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                right: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidenav a:hover {
                color: #f1f1f1;
            }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            #main {
                transition: margin-left .5s;
                padding: 16px;
            }

            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Food</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
        <!-- <style>.slide {display: block;} </style> -->
    </head>
    <body style="background-image: url('pic/food_menu.jpg'); background-size: auto; background-attachment: fixed;">
        <div id="mySidenav" class="sidenav">
            <a href="logoutServlet">Logout</a>
        </div>
        <div class="back"></div>
        <div class="menu_area">
            <div class="menu">
                <a href="menuServlet"><div id="home_area"><img src="pic/logo.png" id="home"></div></a>
                <div id="choose" onclick="openNav()"></div>
                <a href="cart.jsp"><div id="shop"></div></a>
            </div>
        </div>
        <div id="mainbody" onclick="closeNav()">
        <div class="con_area">
            <div class="title">
                <font class="head_name" size="6" color="black">เลือกร้านค้าที่ต้องการ</font>
                <a href="menuServlet"><button type="submit" class="go_back">กลับสู่หน้าหลัก</button></a>
            </div>
            
            <div class="subtitle">
                <font class="head_name" size="5" color="black">ร้านค้าแนะนำ</font>
            </div>
            <div class="shop_area" style="width: 94%; margin-left: auto; margin-right: auto;">
                <c:forEach var="rec"  items="${rec_menu_list}">  
                    <div class="shop" style="width: 97%; margin-left: auto; margin-right: auto; margin-bottom: 15px;
                         background-color: #F5CA99; border: 2px solid black; border-radius: 10px;padding: 10px;">
                        <form action="/Multioder/ProcessSelection">
                            <button type="submit" name="add" value="${rec.menu_id}" style="float: right;">เพิ่มลงตะกร้า</button>
                            <font size="5"><b>${rec.shopname}</b></font> <br>
                            รายละเอียด : ${rec.description} <br>
                            ราคาจานล่ะ : ${rec.price} บาท
                        </form>
                    </div>
                </c:forEach>
            </div>
            
            <div class="subtitle">
                <font class="head_name" size="5" color="black">ร้านค้าทั้งหมด</font>
            </div>
            <div class="shop_area" style="width: 94%; margin-left: auto; margin-right: auto;">
                <c:forEach var="menu"  items="${menu_list}">  
                    <div class="shop" style="width: 97%; margin-left: auto; margin-right: auto; margin-bottom: 15px;
                         background-color: #F5CA99; border: 2px solid black; border-radius: 10px;padding: 10px; font-size: 17px;">
                        <form action="/Multioder/ProcessSelection">
                            <button type="submit" name="add" value="${menu.menu_id}" style="float: right;">เพิ่มลงตะกร้า</button>
                            <font size="5"><b>${menu.shopname} </b></font> <br>
                            รายละเอียด : ${menu.description} <br>
                            ราคาจานล่ะ : ${menu.price} บาท <br>
                        </form>
                    </div>
                </c:forEach>
            </div>
            
        </div>
        </div>
         <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                document.getElementById("main").style.marginLeft = "-250px";
                document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
                document.body.style.backgroundColor = "white";
            }
        </script>
    </body>
</html>
