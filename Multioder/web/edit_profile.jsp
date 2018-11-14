<%-- 
    Document   : edit_profile
    Created on : Nov 14, 2018, 2:28:09 PM
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
        <form action="editProfileServlet" method="POST">
            Old Password: <input type="password" name="old_pass" value=""/>
            New Password: <input type="password" name="new_pass" value=""/>
            Email: <input type="text" name="email" value="${pro.email}"/>
            First name: <input type="text" name="firstname" value="${pro.firstname}"/>
            Last name: <input type="text" name="lastname" value="${pro.lastname}"/>
            Phone: <input type="text" name="phone" value="${pro.phone}"/>

            <input type="submit" value="Save" />
        </form>



        <table border="1" class="table table-striped table-border checkout-table">
            <thead>
                <tr>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
            <form action="deleteAddressServlet" method="POST">
                <c:forEach var="add" items="${addlist}">

                    <tr>
                        <td>${add.address_des} </td>              
                    
                    <form action="deleteAddressServlet" method="POST">
                        <input type="hidden" name="add_id" value="${add.address_id}" />
                        <td><input type="submit" value="delete" /></td>
                    </form>
                    
                    </tr>

                </c:forEach>
            </form>

        </tbody>
    </table>
    <a href="newAddress.jsp">Add new address</a>
    <c:if test="${password == 1}">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>swal("Password incorrect");</script>  
    </c:if>
</body>
</html>
