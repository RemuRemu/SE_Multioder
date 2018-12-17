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
        <title>JSP Page</title>
         <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <a href="addnewshop.jsp"><input type="submit" value="Add new Shop" /></a>
        
        <table id="shop_admin" border="1">
               <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Shop status</th>
                    <th>Logo</th>
                    <th></th>
                </tr>
            </thead>
        <c:forEach var="shop" items="${shop_list}">
            <tbody>
                <tr>
                    <td>${shop.shopid}</td>
                    <td>c</td>
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
                    <td>${shop.shoplogo}</td>
                    <td><a href="viewDetailShopServlet?shopid=${shop.shopid}">View</a></td>
                </tr>
                
            </tbody>
        </c:forEach>
            
             </table>
        
    </body>
    <script>
    $(document).ready(function () {
        $('#shop_admin').dataTable();
    });
</script>
</html>
