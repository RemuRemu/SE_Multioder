
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Detail Menu</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="shop/shop_css.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="content">
            <div class="title" style="display: flex; justify-content: space-between;">
                <font size="7" style="text-shadow: 1px 1px 2px gray;">แก้ไขรายการอาหาร</font><br>
            </div>
            <form action="editInfoMenuServlet" method="POST">
                ชื่อเมนู : <input type="text" name="foodname" value="${detail_menu.name}"/> <br>
                รายละเอียด : <input type="text" name="description" value="${detail_menu.description}" /> <br>
                ราคา : <input type="text" name="price" value="${detail_menu.price}" /> <br>
                รูปภาพ : <input accept="image/*" type="file" id="pic" name="pic" style="background: none;">

                <input type="hidden" name="image" id="image">
                <input type="submit" value="Submit" />
                <input type="hidden" name="foodid" value="${detail_menu.menu_id}"/>
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
                var storageRef = firebase.storage().ref("menu_dish/"+timestamp.toString());
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
        <c:if test="${error == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("กรุณากรอกข้อมูลให้ครบทุกช่อง");</script> 

        </c:if>
    </body>

</html>