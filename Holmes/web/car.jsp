<%-- 
    Document   : car
    Created on : 2018-7-15, 0:24:30
    Author     : Lenovo
--%>
<%@page import="bean.dbBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="db" class="bean.dbBean" scope="session" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>购物车</title>
    </head>
    <body>
        <h1>这里是你的购物车</h1>
    </body>
    <table cellspacing="1" cellpadding="5" width="30%" >
    <tbody>
      <tr>
        <th >商品名称</th>
        <th >商品单价</th>
        <th >商品数量</th>
        <th >商品总价</th>
      </tr>
      <%String sql="select pname,price,quantity,totalprice from caritems";
      ResultSet rs=db.executeQ(sql);
      int account=0;
      while(rs.next()){
          String goodsname=rs.getString(1);
          String price=rs.getString(2);
          String quantity=rs.getString(3);
          String ttp=rs.getString(4);

          int ttpr = Integer.parseInt(ttp);
          account = account + ttpr;
          out.println("<tr bdcolor=#FFFFFF>");
          out.println("  <td>"+goodsname+"  </td>");
          out.println("  <td>"+price+"  </td>");
          out.println("  <td>"+quantity+"  </td>");
          out.println("  <td>"+ttp+"  </td>");
          out.println(" </td>");
          out.println(" </tr>");
        }
        out.println(" <td>"+account+"  </td>");%>
    </tbody>
  </table>
    <p><a href="submit.jsp">确认支付</a>
    </form>
</html>
