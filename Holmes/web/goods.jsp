<%-- 
    Document   : goods
    Created on : 2018-7-15, 15:22:39
    Author     : Lenovo
--%>
<%@page import="bean.dbBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品详情</title>
    </head>
    <jsp:useBean id="db" class="bean.dbBean" scope="session" />
    <body>
        <%
        String no=request.getParameter("no");
        String sql="select * from product where pid='"+no+"'";
        ResultSet rs=db.executeQ(sql);
        rs.next();
        String price=rs.getString(3);
        String picture=rs.getString(4);
        String name=rs.getString(2);
        String details=rs.getString(5);
        %>
        <form id="form1" name="form1" method="post" action="add.jsp">
            <center>
                <img src="image/<%=picture%>" width="277" height="234" alt=""/>
            </center>
                <p align="center"><strong><em><%=name%></a></em></strong></p>
                <p align="center"><strong><em><%=details%></a></em></strong></p>
                <p align="center">￥<%=price%></p>
                <p align="center"><a href="car.jsp">点击加入购物车</a>
                    <%
                        String quantity = "1";
                        int p =Integer.parseInt(price);
                        int q =Integer.parseInt(quantity);
                        int ttp = p*q;
                        String ttprice =Integer.toString(ttp);
                        String s="insert into caritems(ppicture,pname,price,quantity,totalprice) values('"+picture+"','"+name+"','"+price+"','"+quantity+"','"+ttprice+"')";
                        db.executeUpd(s); 
 
                     %>
                </p>
 
    </body>
</html>
