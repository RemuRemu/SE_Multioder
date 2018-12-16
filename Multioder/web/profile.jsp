<%-- 
    Document   : profile
    Created on : Nov 14, 2018, 12:47:58 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <div id="mainbody" onclick="closeNav()"></div>

        <div class="con_area">
            <div class="profile" style="width: 90%; margin: auto; padding-top: 1.5em; padding-bottom: 1.5em;">
                <font class="head_name" size='6' color='black'>Profile</font><br>
                <font size='4'>
                Email: ${pro.email}<br>
                First name: ${pro.firstname}<br>
                Last name: ${pro.lastname}<br>
                Phone: ${pro.phone}<br><br>
                <a href="showEditProfileServlet"><button>Edit Profile</button></a>
                <a href="menuServlet"><button>Back</button></a>
                </font>
                <br><br><hr style="border-top: 2px solid #000;"><br>
                <font class="head_name" size='6' color='black'>Order</font>
                <font size='4'>
                <table id="profile" border="1" class="table table-striped table-border checkout-table">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Buy Date</th>
                            <th>Total price</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ord" items="${ordlist}">
                            <tr>
                                <td>${ord.order_id} </td>
                                <td>${ord.buy_date} </td>
                                <td>${ord.total}</td>
                                <td>${ord.address}</td>
                                <td><a href="viewOrderServlet?ord_id=${ord.order_id}" > View </a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                </font>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#profile').dataTable();
            });
        </script>
    </body>
</html>
