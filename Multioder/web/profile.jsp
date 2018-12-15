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
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Profile</h1>
        Email: ${pro.email}
        First name: ${pro.firstname}
        Last name: ${pro.lastname}
        Phone: ${pro.phone}
        <h1>Order</h1>
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

        <a href="showEditProfileServlet">Edit Profile</a>                       <a href="menuServlet">Back</button></a>
</body>
<script>
    $(document).ready(function () {
        $('#profile').dataTable();
    });
</script>
</html>
