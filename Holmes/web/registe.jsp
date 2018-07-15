<%-- 
    Document   : registe
    Created on : 2018-7-15, 0:19:01
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册</title>
    </head>
    <body>
        <form action="Registe" method="post">
            <h1>用户注册</h1>
            <hr/>
            <table align="center">
                <tr>
                    <td>账号：</td>
                    <td><input type="text" name="name"</td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td colspan="1"></td>
                    <td>
                        <input type="submit" value="注册"/>
                        <a href="login.jsp" target="_blank">登录</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
