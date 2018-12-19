<%-- 
    Document   : menu
    Created on : Dec 18, 2018, 9:17:07 PM
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
        <a href="../manageMenuServlet?shopid=${shopid}"><button>จัดการเมนู</button></a>
        <a href="../showOrderServlet?shopid=${shopid}"><button>จัดการใบสั่งซื้อ</button></a>
        <a href="../shopLogoutServlet"><button>ออกจากระบบ</button></a>
    </body>
</html>
