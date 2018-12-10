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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Order</h1>


<table border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>Order Number</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Buy Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ord" items="${s_ordlist}" >

                    <tr> 

                        <td>${ord.order_id} </td>
                        <td>${ord.foodname} </td>
                        <td>${ord.quentity}</td>
                        <td>${ord.price} </td>
                        <td>${ord.buy_date} </td>
                    </tr>

                </c:forEach>
                    
            </tbody>
        </table>

    
    </table>
    <a href="shop/shop_login.jsp">Back</button></a>
</body>
</html>
