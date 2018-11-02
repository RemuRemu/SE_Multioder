<%-- 
    Document   : pick_address
    Created on : Oct 27, 2018, 11:30:16 AM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
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
                <font class="head_name" size="6" color="black">เลือกที่อยู่ที่ต้องการจัดส่ง</font>
                <a href="cart.jsp"><button type="submit" class="go_back">ย้อนกลับ</button></a>
            </div>
            <div class="addr" style="width: 94%; margin-left: auto; margin-right: auto; margin-bottom: 20px;">
                <form action="addOrderServlet" method="POST">
                    <font size="4">My address is </font>
                    <select name="address_id" class="form-control" placeholder="เลือกที่อยู่ของคุณ" style=" font-family: 'Kanit', sans-serif; 
                            width: 400px; border-radius: 15px; background-color: #DFDFDF; padding: 7px; margin-top: 5px;">
                        <c:forEach var="add" items="${add_list}">
                            <option value=${add.address_id}>${add.address_des}</option>
                        </c:forEach>
                    </select>
                    <script type="text/javascript" src="https://cdn.omise.co/omise.js"
                            data-key="pkey_test_5br77ofbj0xi13v5xqz"
                            data-image="http://bit.ly/customer_image"
                            data-frame-label="Multiorder"
                            data-button-label="จ่ายเงิน"
                            data-submit-label="ยืนยัน"
                            data-location="no"
                            data-amount="${cart.total*100}"
                            data-currency="thb">
                    </script>
                </form>
                <a href="newAddress.jsp"><button type="submit">เพิ่มที่อยู่ใหม่</button></a>
            </div>
        </div>
    </body>
</html>
