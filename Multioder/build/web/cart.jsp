<%-- 
    Document   : cart
    Created on : Oct 23, 2018, 5:48:12 PM
    Author     : Amp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multioder - Your Cart</title>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="menustyle.css">
    </head>
    <body style="background-image: url('pic/food_menu.jpg'); background-size: auto; background-attachment: fixed;">
        <div class="back"></div>
        <div class="menu_area">
            <div class="menu">
                <a href="menuServlet"><div id="home_area"><img src="pic/logo.png" id="home"></div></a>
                <div id="choose"></div>
                <a href="cart.jsp"><div id="shop"></div></a>
            </div>
        </div>
        
        <div class="con_area">
            <div class="title">
                <font class="head_name" size="6" color="black">ตะกร้าอาหารของคุณ</font>
                <a href="menuServlet"><button type="submit" class="go_back">กลับสู่หน้าหลัก</button></a>
            </div>
            <div class="cart_area">
                <% int count = 0; %>
                <% model.Cart ord = (model.Cart) session.getAttribute("cart"); %>
                <% if (ord != null) { %>

                <% for (int i = 0; i < ord.getAccs().size(); i++) { %>
                <div class="food_cart">
                    <form action="amountControl" method="POST">
                        <div>
                            <img src="pic/menu_dish/<%= ord.getAccs().get(i).getImage()%>.jpg" align="left" style="width: 200px; height: 125px;">
                        </div>
                        <div>
                            <font size="4"><b>
                                <%= ord.getAccs().get(i).getFoodname() %> 
                                (<%= ord.getAccs().get(i).getName() %>)
                            </b></font><br>
                            
                            ราคาจานละ &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getAccs().get(i).getPrice() %> &nbsp;บาท
                            <br>
                            จำนวนที่ต้องการ &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getAccs().get(i).getQuentity() %> &nbsp;จาน <br>
                            <input type="hidden" name="menuid" value="<%= ord.getAccs().get(i).getAcc_id() %>" />
                            <button type="submit" name="amount" value="increase">เพิ่ม</button>
                            <button type="submit" name="amount" value="decrease">ลด</button>
                            <button type="submit" name="amount" value="remove">เอาออก</button><br>
                            
                        </div>
                       
                    </form> 
                </div> 
                <% } %>
                <div class="total" style="width: 94%; margin-left: auto; margin-right: auto; text-align: right">
                    <font size="4"><b>ราคารวมทั้งหมด &nbsp;&nbsp;&nbsp;&nbsp; <%= ord.getTotal() %> บาท </b></font>
                </div>
                <% } %>
                <div class="next_area">
                    <form action="addressServlet">
                        <input type="submit" value="ถัดไป" class="next"/>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
