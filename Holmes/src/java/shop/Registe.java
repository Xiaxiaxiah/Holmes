/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop;

import java.awt.HeadlessException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "Registe", urlPatterns = {"/Registe"})
public class Registe extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String sql="insert into user set uid='"+request.getParameter("name")+"',password='"+request.getParameter("password")+"'";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?user=root&password=xhy000229&useUnicode=true&characterEncoding=UTF8&useSSL=false");
            PreparedStatement stmt = conn.prepareStatement(sql);
            if(stmt.executeUpdate()==1){
                out.println("注册成功！即将自动登录并回到首页。");
                String userid=request.getParameter("name");
                session.setAttribute("userid", userid); 
                response.setHeader("Refresh", "1;URL=product.jsp");
            }
            else{
                out.println("注册失败,请重新注册！1秒后自动跳转...");
                response.setHeader("Refresh", "1;URL=registe.jsp");
            }
            conn.close();
            stmt.close();
        } catch(HeadlessException | ClassNotFoundException | SQLException e)
        {
            out.println(e.getMessage().replaceAll("Duplicate entry '(.*?)' for key 'PRIMARY'", "注册失败，用户名已存在！请重新注册！1秒后自动跳转..."));
            response.setHeader("Refresh", "1;URL=registe.jsp");
        }
    }

}
