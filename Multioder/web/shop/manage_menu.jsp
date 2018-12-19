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
        <title>Multioder - Manage Menu-list</title>
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
        <div class="title" style="display: flex; justify-content: space-between;">
            <font size="7" style="text-shadow: 1px 1px 2px gray;">จัดการรายการอาหาร</font><br>
            <div class="menu">
                <a href="add_menu.jsp"><button>เพิ่มเมนู</button></a>
                <a href="shop/menu.jsp"><button>ย้อนกลับ</button></a>
            </div>
        </div>
        <table id="mml_table" border="1">
            <thead>
                <tr>
                    <th>เลขที่</th>
                    <th>รายการ</th>
                    <th>รายละเอียด</th>
                    <th>ราคา</th>
                    <th>รูปภาพประกอบ</th>
                    <th>แนะนำ</th>
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
                        <td><img src="${mml.image}"></td>
                        <td>${mml.recommend}</td>
                        <td>
                            <a href="showDetailMenuServlet?food_id=${mml.menu_id}&shopid=${shopid}">แก้ไข</a>
                            <a href="removeFoodServlet?food_id=${mml.menu_id}&shopid=${shopid}">เอาออก</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script>
    $(document).ready(function () {
        $('#mml_table').dataTable();
    });
</script>
</html>
