<%-- 
    Document   : ProductList
    Created on : 2018-6-28, 20:22:16
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Mall</title>
    </head>
    <jsp:useBean id="db" class="bean.dbBean" scope="session" />
    <body>
        <% String name=(String)session.getAttribute("userid");
        System.out.println("get userid " + session.getAttribute("userid"));
        %>
        <h1>
            <em>
                <strong>
                    <%=session.getAttribute("userid")%>,welcome
                </strong>
            </em>
        </h1>
        <p align="right"><a href="car.jsp?name=<%=name%>">查看购物车</a></p>
    <center>
        <table border="0" cellspacing="15" cellpadding="15">
            <tbody>
                <tr>
                    <td>
                        <img src="image/1.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=1&username=<%=name%>">黑/牛奶巧克力</a></em></strong></p>
                        <p>￥79.9</p>
                    </td>
  
                    <td>
                        <img src="image/2.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=2&username=<%=name%>">综合蔬菜干</a></em></strong></p>
                        <p>￥34</p>
                    </td>
                    
                    <td>
                        <img src="image/3.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=3&username=<%=name%>">肉松饼早餐</a></em></strong></p>
                        <p>￥59.9</p>
                    </td>
  
                    <td>
                        <img src="image/4.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=4&username=<%=name%>">零食大礼包</a></em></strong></p>
                        <p>￥46</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="image/5.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=5&username=<%=name%>">甜点小蛋糕</a></em></strong></p>
                        <p>￥36</p>
                    </td>
                    
                    <td>
                        <img src="image/6.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=6&username=<%=name%>">芒果干</a></em></strong></p>
                        <p>￥14.5</p>
                    </td>
                    
                    <td>
                        <img src="image/7.jpg" width="277" height="234" alt=""/>
                        <p><strong><em><a href="goods.jsp?no=7&username=<%=name%>">手工海绵蛋糕</a></em></strong></p>
                        <p>￥39.9</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
