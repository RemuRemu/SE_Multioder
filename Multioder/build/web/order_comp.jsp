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
        </style>
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
            <div class="image spinner">
                <img src="pic/complete.png" align="middle" style="margin: 30px;">
            </div>
            <div class="title" style="text-align: center; margin-top: -20px;">
                <font class="head_name" size="6" color="black">สั่งซื้ออาหารสำเร็จ</font>
            </div>
            <div style="text-align: center; margin-bottom: 20px;">
                <a href="menuServlet"><button type="submit"><font size="4"><b>กลับสู่หน้าหลัก</b></font></button></a>
            </div>
        </div>
</html>
