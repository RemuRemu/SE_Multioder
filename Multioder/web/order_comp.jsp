<%-- 
    Document   : order_comp
    Created on : Nov 2, 2018, 10:36:49 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - COMPLETE!!!</title>
        <!--<link rel="stylesheet" type="text/css" href="ani.css">-->
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
        <!-- <style>.slide {display: block;} </style> -->
        <style>
            .spinner {
                display: table-cell;
                text-align: center;
                width: 1024px;
                margin-left: auto;
                margin-right: auto;
                -webkit-animation: sk-rotateplane 1.2s;
            }
            
            @-webkit-keyframes sk-rotateplane {
                0% { -webkit-transform: perspective(0px) rotateY(180deg)  rotateX(180deg) }
                50% { -webkit-transform: perspective(0px) rotateY(180deg) }
                100% { -webkit-transform: perspective(0px) }
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
    </head>
    <body style="background-image: url('pic/food_menu.jpg'); background-size: auto; background-attachment: fixed;">
        <div id="mySidenav" class="sidenav">
            <a href="showProfileServlet">ข้อมูลส่วนตัว</a>
            <a href="logoutServlet">ออกจากระบบ</a>
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
            <div class="image spinner">
                <img src="pic/complete.png" align="middle" style="margin: 30px;">
            </div>
            <div class="title_comp" style="text-align: center; margin-top: -20px;">
                <font class="head_name" size="6" color="black">สั่งซื้ออาหารสำเร็จ</font>
            </div>
            <div style="text-align: center; margin-bottom: 20px;">
                <a href="menuServlet"><button type="submit"><font size="4"><b>กลับสู่หน้าหลัก</b></font></button></a>
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
</html>
