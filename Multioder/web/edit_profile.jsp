<%-- 
    Document   : edit_profile
    Created on : Nov 14, 2018, 2:28:09 PM
    Author     : Chronical
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="editProfileServlet" method="POST">
            Old Password: <input type="password" name="old_pass" value=""/>
            New Password: <input type="password" name="new_pass" value=""/>
            Email: <input type="text" name="email" value="${pro.email}"/>
            First name: <input type="text" name="firstname" value="${pro.firstname}"/>
            Last name: <input type="text" name="lastname" value="${pro.lastname}"/>
            Phone: <input type="text" name="phone" value="${pro.phone}"/>

            <input type="submit" value="Save" />
        </form>



        <table border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
            <form action="deleteAddressServlet" method="POST">
                <c:forEach var="add" items="${addlist}">

                    <tr>
                        <td>${add.address_des} </td>              
                    
                    <form action="deleteAddressServlet" method="POST">
                        <input type="hidden" name="add_id" value="${add.address_id}" />
                        <td><input type="submit" value="delete" /></td>
                    </form>
                    
                    </tr>

                </c:forEach>
            </form>

        </tbody>
    </table>
    <a href="newAddress.jsp">Add new address</a>
    <c:if test="${password == 1}">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>swal("Password incorrect");</script>  
    </c:if>
        </div>
</body>
</html>
