<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : manage_menu
    Created on : Dec 18, 2018, 12:11:13 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>จัดการเมนู</title>
                <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body>
        <h1>จัดการเมนู</h1>
        <table id="mml_table" border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>image</th>
                    <th>Recommend</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="mml" items="${manage_menu_list}">
                <tr>
                    <td>${mml.menu_id}</td>
                    <td>${mml.name}</td>
                    <td>${mml.description}</td>
                    <td>${mml.price}</td>
                    <td>${mml.image}</td>
                    <td>${mml.recommend}</td>
                    <td>
                        <a href="showDetailMenuServlet?food_id=${mml.menu_id}">Edit</a>
                        <a href="removeFoodServlet?food_id=${mml.menu_id}">Remove</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </body>
    <script>
    $(document).ready(function () {
        $('#mml_table').dataTable();
    });
</script>
</html>
