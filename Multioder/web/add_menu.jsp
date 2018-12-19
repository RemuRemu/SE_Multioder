--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    </head>
    <body>
        <form action="addFoodServlet" method="POST">
            ชื่อเมนู : <input type="text" name="foodname" value="" /> <br>
            รายละเอียด : <input type="text" name="description" value="" /> <br>
            ราคา : <input type="text" name="price" value="" /> <br>
            รูปภาพ : <input accept="image/*" type="file" id="pic" name="pic">
            
            <input type="hidden" name="image" id="image">
            <input type="submit" value="Submit" />
            <input type="hidden" value="${shopid}" />
        </form>

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
                var storageRef = firebase.storage().ref(timestamp.toString());
                var $ = jQuery;
                var file_data = $('#pic').prop('files')[0];

                storageRef.put(file_data).then(function(snapshot){
                    snapshot.ref.getDownloadURL().then(function(url){
                        document.getElementById('image').value=url;
                        document.getElementById('pic').remove();
                        
                        form.submit();
                    })
                });
            })
        </script>
         <c:if test="${add_menu == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal("กรุณากรอกข้อมูลให้ครบทุกช่อง");</script> 
           
        </c:if>
    </body>

</html>