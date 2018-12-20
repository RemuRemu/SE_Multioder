<%-- 
    Document   : ordersetail
    Created on : Nov 14, 2018, 1:12:02 PM
    Author     : Chronical
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <title>Multioder - Profile</title>
    <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="menustyle.css">
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
            <div class="profile" style="width: 90%; margin: auto; padding-top: 1.5em; padding-bottom: 1.5em;">
                <font class="head_name" size='6' color='black'>ข้อมูลออเดอร์ของคุณ : Order#${ord_s.order_id}</font><br><br>


                <table id="item" border="1" class="table table-striped table-border checkout-table" style="font-size: 1.15em;">
                    <thead>
                        <tr>
                            <th>เลขที่</th>
                            <th>รายการ</th>
                            <th>จำนวน</th>
                            <th>ราคา</th>
                            <th>ร้าน</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ord" items="${ordlist}">
                            <tr> 

                                <td>${ord.item_num} </td>
                                <td>${ord.menu.name} </td>
                                <td>${ord.quentity}</td>
                                <td>${ord.price} </td>
                                <td>${ord.shopname} </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                </tbody>
                <h4 class="font-alt">Cart Totals</h4>
                <table class="table table-striped table-border checkout-table" style="font-size: 1.1em;">
                    <tbody>
                        <tr>
                            <th>ยอดสั่งซื้อสุทธิ :</th>
                            <td>${ord_s.total} Bath</td>
                        </tr>
                        <tr>
                            <th>วันที่สั่งซื้อ :</th>
                            <td>${ord_s.buy_date}</td>
                        </tr>
                    </tbody>
                </table>
                <a href="showProfileServlet"><font size="4"><button>ย้อนกลับ</button></font></a>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#item').dataTable();
            });
        </script>
    </body>
</html>
