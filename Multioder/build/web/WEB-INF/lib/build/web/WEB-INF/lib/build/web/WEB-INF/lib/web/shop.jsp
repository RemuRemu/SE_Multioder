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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Food</title>
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
                <font class="head_name" size="6" color="black">เลือกร้านค้าที่ต้องการ</font>
                <a href="menuServlet"><button type="submit" class="go_back">กลับสู่หน้าหลัก</button></a>
            </div>
            
            <div class="subtitle">
                <font class="head_name" size="5" color="black">ร้านค้าแนะนำ</font>
            </div>
            <div class="food_area">
                <c:forEach var="rec"  items="${rec_menu_list}">  
                <div>
                    <form action="xxx"> 
                        ${rec.name} 
                        ${rec.description} 
                        ${rec.price}   
                        ${rec.recommend}   
                    </form>
                </div>
                </c:forEach>
            </div>
            
            <div class="subtitle">
                <font class="head_name" size="5" color="black">ร้านค้าทั้งหมด</font>
            </div>
            <div class="food_area">
                <c:forEach var="menu"  items="${menu_list}">  
                <div>
                        <form action="/Multioder/ProcessSelection">
                        ${menu.name} 
                        ${menu.description} 
                        ${menu.price}   
                        ${menu.menu_id}   

                        <button type="submit" name="add" value="${menu.menu_id}" > add Cart</button>
                    </form>
                </div>
                </c:forEach>
            </div>
            
        </div>
        
    </body>
</html>
