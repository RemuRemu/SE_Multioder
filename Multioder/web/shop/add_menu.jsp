<%-- 
    Document   : add_menu.jsp
    Created on : Dec 18, 2018, 7:44:31 PM
    Author     : Chronical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        รูปภาพ : <input accept="image/*" type="file" id="pic" name="pic"> <button type=”submit”>อัพโหลด</button> 
        <form action="addFoodServlet">
            ชื่อเมนู : <input type="text" name="foodname" value="" /> <br>
            รายละเอียด : <input type="text" name="description" value="" /> <br>
            ราคา : <input type="text" name="price" value="" /> <br>
            
            
            <input type="submit" value="Submit" />
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
    </body>

</html>
