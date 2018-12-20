<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : admin_showshop
    Created on : Dec 16, 2018, 10:23:15 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Admin</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="admin_css.css">
</head>
<body>
    <div class="content">
        <div class="title" style="display: flex; justify-content: space-between;">
            <font size="7" style="text-shadow: 1px 1px 2px gray;">รายการร้านค้า</font><br>
            <div class="menu">
                <a href="addnewshop.jsp"><input type="submit" value="เพิ่มร้านค้า" /></a>
                <a href="logoutAdminServlet"><button>ออกจากระบบ</button></a>
            </div>
        </div>
        <br>
        <table id="shop_admin" border="1">
            <thead>
                <tr>
                    <th>เลขที่</th>
                    <th>รายการร้านค้า</th>
                    <th>สถานะร้านค้า</th>
                    <th>โลโก้</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var="shop" items="${shop_list}">
                <tbody>
                    <tr>
                        <td>${shop.shopid}</td>
                        <td>${shop.shopname}</td>
                        <td>

                            <c:set var = "status" scope = "session" value = "${shop.shop_status}"/>
                            <c:choose> 
                                <c:when test = "${shop.shop_status == true}">
                                    active

                                </c:when>
                                <c:when test = "${shop.shop_status == false}">
                                    inactive

                                </c:when>
                                <c:otherwise>
                                    No comment sir...
                                </c:otherwise>
                            </c:choose>     

                        </td>
                        <td>
                            <img src="${shop.shoplogo}" style="width: 5em; height: 5em;"/>

                        </td>
                        <td><a href="viewDetailShopServlet?shopid=${shop.shopid}">รายละเอียด</a></td>
                        <td><a href="removeShopServlet?shopid=${shop.shopid}">เอาออก</a></td>
                    </tr>

                </tbody>
            </c:forEach>

        </table>
    </div>
</body>
<script>
    $(document).ready(function () {
        $('#shop_admin').dataTable();
    });
</script>
</html>
