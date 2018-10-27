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
        <link rel="stylesheet" type="text/css" href="menu_style.css">
        <!-- <style>.slide {display: block;} </style> -->
    </head>
    <body>
       
        <div class="menu_area">
            <div class="menu">
                <a href="menuServlet"><img id="home" src="pic/logo.png"></a>
                <img id="choose" src="pic/menu.png">
                <a href="cart.jsp"><img id="shop" src="pic/sb.png"></a>
            </div>
        </div>
        
        <div class="con_area">
            <div class="rec">
                <img src="pic/slogan1.png" class="slide anime" style="width: 100%;">
                <img src="pic/slogan2.png" class="slide anime" style="width: 100%;">
                <img src="pic/slogan3.png" class="slide anime" style="width: 100%;">
            </div>
            <div class="title">
                <font class="head_name" size="6" color="black">รายการอาหาร</font>
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="ค้นหาชื่ออาหาร.." title="Type in a name" size="40px">
            </div>
            <div class="food_area">
                <ul id="myUL">
                <c:forEach var="menu"  items="${menu_list}">  
                    <div class="food">
                        <form action="/Multioder/shopServlet">
                            <li><a>${menu.name}<input type="submit" value="Go to shop" /></a></li>
                            <input type="hidden" name="name" value="${menu.name}" />
                        </form>
                    </div>
                </c:forEach>
                </ul>
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
            if (myIndex > x.length) {myIndex = 1}
            x[myIndex-1].style.display = "block";
            setTimeout(carousel, 3000);
        }
        </script>

    </body>
</html>
