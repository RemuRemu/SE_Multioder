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
    </head>
    <body>
        <h1 class="module-title font-alt">Order#${ord_s.order_id}</h1>


        <table border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th> Item number</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ord" items="${ordlist}">
                    <tr> 

                        <td>${ord.item_num} </td>
                        <td>${ord.menu.name} </td>
                        <td>${ord.quentity}</td>
                        <td>${ord.price} </td>
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
</html>
