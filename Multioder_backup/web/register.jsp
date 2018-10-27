<%-- 
    Document   : register
    Created on : Oct 20, 2018, 9:17:45 PM
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
    <body style="background-image: url('pic/food.jpg'); background-size: cover;">
        <div class="back"></div>
        <div class="area1" style="background-image: url('pic/back.png');">
            <div class="form_signup">
                <form action="registerServlet" method="POST">
                    <font size="7" color="white" style="text-shadow: 2px 2px #333"><b>สมัครสมาชิก</b></font> <br><br>
                    <font size="3" color="white">
                    ชื่อผู้ใช้ (username) <br>
                    <input type="text" name="user" value="" size="40px"/> <br>
                    รหัสผ่าน (password) <br>
                    <input type="password" name="pass" value="" size="40px"/> <br>
                    ชื่อจริง (first name) <br>
                    <input type="text" name="first" value="" size="40px"/> <br>
                    นามสกุล (last name) <br>
                    <input type="text" name="last" value="" size="40px"/> <br>
                    อีเมล์ (email) <br>
                    <input type="text" name="mail" value="" size="40px"/> <br>
                    โทรศัพท์ (phone) <br>
                    <input type="text" name="phone" value="" maxlength = "10" size="40px"/> <br>
                    ที่อยู่ (address) <br>
                    <textarea name="add" rows="4" cols="40"></textarea><br>
                    </font>

                    <input type="submit" name="register" value="Register" />
                    <!--<input type="submit" name="back" value="Back" />-->
                </form>
            </div>
        </div>

        <form action="registerServlet" method="POST">
            register <br>
            username <input type="text" name="user" value="" /> <br>
            password <input type="password" name="pass" value="" /> <br>
            first name <input type="text" name="first" value="" /> <br>
            last name <input type="text" name="last" value="" /> <br>
            email <input type="text" name="mail" value="" /> <br>
            phone <input type="text" name="phone" value="" maxlength = "10"/> <br>
            <textarea name="add" rows="4" cols="20"></textarea>
            <input type="submit" value="regis" />
        </form>
        <c:if test="${flag == 1}">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <script>swal({"Username or Email has already used"});</script>  

        </c:if>
        <c:if test="${flag == 2}">
            <script src="https://unpkg.com/sweetalert2@7.8.2/dist/sweetalert2.all.js"></script>

            <script>swal({
                    title: 'Are you sure?',
                    text: 'Please enter all fields',
                    imageUrl: '',
                    type: 'info',
                    showCancelButton: true,
                    confirmButtonColor: '#DD6B55',
                    confirmButtonText: 'Cancle',
                    cancelButtonText: 'Yes'
                }).then(() => {
                    if (result.value) {
                        // handle Confirm button click
                    } else {
                        // result.dismiss can be 'cancel', 'overlay', 'esc' or 'timer'
                    }
                });</script>  
            </c:if>


    </body>
</html>
