<%-- 
    Document   : show_detail_shop
    Created on : Dec 19, 2018, 3:43:11 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="shop/shop_css.css">
    </head>
    <body style="background: #FDF2E9">
        <div class="content">
            <div class="title" style="display: flex; justify-content: space-between;">
                <font size="7" style="text-shadow: 1px 1px 2px gray;">แก้ไขข้อมูลร้านค้า</font><br>
                <a href="shop/menu.jsp"><button>ย้อนกลับ</button></a>
            </div>
            <form action="editShopServlet" method="POST">
                ชื่อร้าน : <input type="text" name="shopname" value="${detail_shop.shopname}"/> <br>
                Username : <input type="text" name="username" value="${detail_shop.shopusername}" /> <br>
                Password : <input type="password" name="password" value="${detail_shop.shoppassword}" /> <br>
                สถานะ : <c:set var = "status" scope = "session" value = "${detail_shop.shop_status}"/>
                <c:choose> 
                    <c:when test = "${detail_shop.shop_status == true}">
                        active

                    </c:when>
                    <c:when test = "${detail_shop.shop_status == false}">
                        inactive

                    </c:when>
                    <c:otherwise>
                        No comment sir...
                    </c:otherwise>
                </c:choose>       <br>
                รูปภาพ : <input accept="image/*" type="file" id="pic" name="pic" style="background: none;">
                <input type="hidden" name="image" id="image">
                <input type="submit" value="ยืนยัน" />
                <input type="hidden" name="shopid" value="${detail_shop.shopid}"/>
            </form>
        </div>


        <script src="https://www.gstatic.com/firebasejs/5.7.0/firebase.js"></script>
        <script>
            // Initialize Firebase
            var config = {
                apiKey: "AIzaSyCvrRQyr77X1i-ANfnXTu0-8fPqO1fSf6k",
                authDomain: "multioder-24b7f.firebaseapp.com",
                databaseURL: "https://multioder-24b7f.firebaseio.com",
                projectId: "multioder-24b7f",
                storageBucket: "multioder-24b7f.appspot.com",
                messagingSenderId: "367445321698"
            };

            firebase.initializeApp(config);
        </script>
        <script>
            var form = document.querySelector("form");
            form.addEventListener("submit", function (event) {
                event.preventDefault();
                var timestamp = Number(new Date());
                var storageRef = firebase.storage().ref("logo/" + timestamp.toString());
                var $ = jQuery;
                var file_data = $('#pic').prop('files')[0];

                storageRef.put(file_data).then(function (snapshot) {
                    snapshot.ref.getDownloadURL().then(function (url) {
                        document.getElementById('image').value = url;
                        document.getElementById('pic').remove();

                        form.submit();
                    })
                });
            })
        </script>
        <c:if test="${edit_shop == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("กรุณากรอกข้อมูลให้ครบทุกช่อง");</script> 

        </c:if>

    </body>
</html>
