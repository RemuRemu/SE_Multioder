<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : cart
    Created on : Oct 23, 2018, 5:48:12 PM
    Author     : Amp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Your Cart</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
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
            <div class="title">
                <font class="head_name" size="6" color="black">ตะกร้าอาหารของคุณ</font>
                <a href="menuServlet"><button type="submit" class="go_back">กลับสู่หน้าหลัก</button></a>
            </div>
            <div class="cart_area">
                <% int count = 0; %>
                <% model.Cart ord = (model.Cart) session.getAttribute("cart"); %>
                <% if (ord != null) { %>

                <% for (int i = 0; i < ord.getMenus().size(); i++) { %>
                <div class="food_cart">
                    <form action="amountControl" method="POST">
                        <div>
                            <img src="pic/menu_dish/<%= ord.getMenus().get(i).getImage()%>.jpg" align="left" style="max-width: 300px; max-height: 125px;">
                        </div>
                        <div>
                            <font size="4"><b>
                               
                                (<%= ord.getMenus().get(i).getName() %>)
                            </b></font><br>
                            
                            ราคาจานละ &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getMenus().get(i).getPrice() %> &nbsp;บาท
                            <br>
                            จำนวนที่ต้องการ &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getMenus().get(i).getQuentity() %> &nbsp;จาน <br>
                            <b>ราคารวม &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getMenus().get(i).getQuentity() * ord.getMenus().get(i).getPrice() %> บาท </b><br>
                            <input type="hidden" name="menuid" value="<%= ord.getMenus().get(i).getMenu_id() %>" />
                            <button type="submit" name="amount" value="increase">เพิ่ม</button>
                            <button type="submit" name="amount" value="decrease">ลด</button>
                            <button type="submit" name="amount" value="remove">เอาออก</button><br>
                            
                        </div>
                       
                    </form> 
                </div> 
                <% } %>
                 <% if (ord.getTotal() > 0) { %>
                <div class="total" style="width: 94%; margin-left: auto; margin-right: auto; text-align: right">
                    <font size="4"><b>ราคารวมทั้งหมด &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getTotal() %> บาท </b></font>
                </div>
                
                <div class="next_area">
                    <form action="addressServlet">
                        <input type="submit" value="ถัดไป" class="next"/>
                    </form>
                     <form action="cleareServlet">
                        <input type="submit" value="ลบสินค้าทั้งหมด" class="next"/>
                    </form>
                    
                </div>
                    <%}else{%>
                    ไม่มีสินค้าในตะกร้า
                    
                    <%}%>
                <% } %>
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
