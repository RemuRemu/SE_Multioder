<%-- 
    Document   : menu
    Created on : Oct 21, 2018, 4:29:45 PM
    Author     : Amp
--%>

<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix='sql' uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Home</title>
        <!--<link rel="stylesheet" type="text/css" href="ani.css">-->
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
        <!-- <style>.slide {display: block;} </style> -->
        <style>
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
            <a href="showProfileServlet">Profile</a>
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
                <div class="rec">
                    <img src="pic/rec1.jpg" class="slide anime" style="width: 100%;">
                    <img src="pic/rec2.jpg" class="slide anime" style="width: 100%;">
                    <img src="pic/rec3.jpg" class="slide anime" style="width: 100%;">
                </div>


                <div class="title">
                    <font class="head_name" size="6" color="black">รายการอาหาร</font>
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="ค้นหาชื่ออาหาร.." title="Type in a name" size="40px">
                </div>
                <div class="food_area">
                    <ul id="myUL" style="list-style-type: none;">
                        <c:forEach var="menu"  items="${menu_list}">  
                            <div class="food">
                                <form action="/Multioder/shopServlet">
                                    <img src="pic/menu_dish/${menu.image}.jpg" align="middle" style="max-width: 300px; max-height: 125px;">
                                    <li class="food_name"><a>${menu.name}<br>
                                            <input type="submit" value="เลือกอาหาร" /></a></li>
                                    <input type="hidden" name="name" value="${menu.name}" />
                                </form>
                            </div>
                        </c:forEach>
                    </ul>
                </div>

            </div>
        </div>  

        <script>
            function myFunction() {
                var input, filter, ul, li, a, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                ul = document.getElementById("myUL");
                box = ul.getElementsByClassName("food");
                li = ul.getElementsByTagName("li");
                for (i = 0; i < li.length; i++) {
                    a = li[i].getElementsByTagName("a")[0];
                    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        li[i].style.display = "";
                        box[i].style.display = "";
                    } else {
                        li[i].style.display = "none";
                        box[i].style.display = "none";
                    }
                }
            }
        </script>

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
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 3000);
            }
        </script>
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
