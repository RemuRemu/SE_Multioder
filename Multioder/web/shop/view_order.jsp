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
        <title>JSP Page</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
    <table id="s_item" border="1" class="table table-striped table-border checkout-table">
        <thead>
            <tr>
                <th>Item number</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
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
</body>
<script>
    $(document).ready(function () {
        $('#s_item').dataTable();
    });
</script>
</html>
