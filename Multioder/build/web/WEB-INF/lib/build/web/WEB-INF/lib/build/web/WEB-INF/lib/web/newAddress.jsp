<%-- 
    Document   : newAddress
    Created on : Oct 28, 2018, 8:48:14 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>insert new address</h1>
        address:<form action="addaddressServlet" method="POST">
            <textarea name="newAddress" rows="4" cols="20">
            </textarea>
            <input type="submit" value="เพิ่มที่อยู่" />
        </form>
    </body>
</html>
