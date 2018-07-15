<%-- 
    Document   : login
    Created on : 2018-7-14, 23:13:47
    Author     : Lenovo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="db" class="bean.dbBean" scope="session" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Login" method="post">
        <h1>用户登陆</h1>
        <hr/>
        <table align="center">
        <tr>
            <td>账号：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="1"></td>
            <td>
                <input type="submit" name="submit" value="登陆">
                <a href="registe.jsp" target="_blank">注册</a>
            </td>
        </tr>
        </table>
        </form>
    </body>
</html>
