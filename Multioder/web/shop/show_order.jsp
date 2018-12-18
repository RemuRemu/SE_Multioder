<%-- 
    Document   : show_order
    Created on : Dec 9, 2018, 2:13:28 PM
    Author     : Chronical
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Show Order</title>
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
        <div class="title" style="text-align: center;">
            <font size="6" style="text-shadow: 1px 1px 2px gray;">รายการสั่งซื้อ</font><br>
        </div>
        <table  id="s_order" border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>เลขที่ใบสั่งซื้อ</th>
                    <th>วันที่ซื้อ</th>
                    <th>ราคาสุทธิ</th>
                    <th>ที่อยู่จัดส่ง</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ord" items="${s_ordlist}">
                    <tr>
                        <td>${ord.order_id} </td>
                        <td>${ord.buy_date} </td>
                        <td>${ord.total}</td>
                        <td>${ord.address}</td>
                        <td><a href="viewShopOrderServlet?ord_id=${ord.order_id}" > View </a></td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
        <a href="shop/shop_login.jsp"><button>ออกจากระบบ</button></a>
    </div>
</body>
<script>
    $(document).ready(function () {
        $('#s_order').dataTable();
    });
</script>
</html>
