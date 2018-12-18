<%-- 
    Document   : view_order
    Created on : Dec 14, 2018, 8:17:05 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - View Order</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="shop/shop_css.css">
</head>
<body style="background: #FDF2E9">
    <div class="content">
        <div class="title" style="display: flex; justify-content: space-between;">
            <font size="7" style="text-shadow: 1px 1px 2px gray;">รายละเอียดการสั่งซื้อ</font>
            <a href="showOrderServlet"><button>ย้อนกลับ</button></a>
        </div>
        <br>
        <table id="s_item" border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>ลำดับ</th>
                    <th>รายการ</th>
                    <th>จำนวน</th>
                    <th>ราคา</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ord" items="${s_itemlist}">
                    <tr> 

                        <td>${ord.item_num} </td>
                        <td>${ord.menu.name} </td>
                        <td>${ord.quentity}</td>
                        <td>${ord.price} </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script>
    $(document).ready(function () {
        $('#s_item').dataTable();
    });
</script>
</html>
