<%-- 
    Document   : profile
    Created on : Nov 14, 2018, 12:47:58 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h4 class="font-alt">Order</h4>
                                <hr class="divider-w mb-10">



                                <table border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Buy Date</th>
                    <th>Status</th>
                    <th>Total price</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <c:forEach var="ord" items="${ordlist}">
                    <tr>
                        <td>${ord.order_id} </td>
                        <td>${ord.buy_date} </td>
                        <td> <c:set var = "status" scope = "session" value = "${ord.status}"/>
                            <c:choose>

                                <c:when test = "${ord.status == 'prepare'}">
                                    กำลังจัดเตรียมสินค้า
                                </c:when>

                                <c:when test = "${ord.status == 'sending'}">
                                    กำลังจัดส่ง
                                </c:when>
                                <c:when test = "${ord.status == 'done'}">
                                    จัดส่งแล้ว
                                </c:when>

                                <c:otherwise>
                                    No comment sir...
                                </c:otherwise>
                            </c:choose></td>
                        <td>${ord.total}</td>
                        <td>${ord.address}</td>
                        <td><a href="viewOrderServlet?ord_id=${ord.order_id}" > View </a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
         <a href="showEditProfileServlet">Edit Profile</a>                       <a href="menuServlet">Back</button></a>
    </body>
</html>
