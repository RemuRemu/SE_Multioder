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
</head>
<body>
    <h1 class="module-title font-alt">Order#${ord_s.order_id}</h1>


    <table id="item" border="1" class="table table-striped table-border checkout-table">
        <thead>
            <tr>
                <th> Item number</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Shop</th>
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
<table class="table table-striped table-border checkout-table">
    <tbody>
        <tr>
            <th>Cart Subtotal :</th>
            <td>${ord_s.total} Bath</td>
        </tr>
        <tr>
            <th>Date :</th>
            <td>${ord_s.buy_date}</td>
        </tr>
    </tbody>
</table>
<a href="showProfileServlet">Back</button></a>
</body>
<script>
    $(document).ready(function () {
        $('#item').dataTable();
    });
</script>
</html>
