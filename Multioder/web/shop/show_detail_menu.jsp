<%-- 
    Document   : show_detail_menu
    Created on : Dec 18, 2018, 2:00:48 PM
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
        <h1>Food NO. ${detail_menu.menu_id}</h1>
        
        <form action="editInfoMenuServlet">
            Food name :<input type="text" name="foodname" value="${detail_menu.name}" /><br>
            Food description :<input type="text" name="fooddesc" value="${detail_menu.description}" /><br>
            
                        Food price :<input type="text" name="foodprice" value="${detail_menu.price}" /><br>
                        Food Image :<input type="file" name="foodimg" value="" />
                        <input type="submit" value="Submit" />
                        <input type="hidden" value="${detail_menu.menu_id}" name="foodid" />
                        <input type="hidden" name="shopid" value="${shopid}" />
                        
        </form>
    </body>
</html>
