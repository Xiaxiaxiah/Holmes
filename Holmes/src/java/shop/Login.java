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
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
@WebServlet(value = "/Login")
@MultipartConfig
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String sql="select * from user where uid='"+request.getParameter("name")+"'and password='"+request.getParameter("password")+"'";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?user=root&password=xhy000229&useUnicode=true&characterEncoding=UTF8&useSSL=false");
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            if(rs.next())
            {
                out.println("登录成功！");
                String userid=request.getParameter("name");
                session.setAttribute("userid", userid);
                System.out.println("set userid " + userid);
                response.setHeader("Refresh", "1;URL=product.jsp");
            }
            else
            {
                out.println("用户名不存在或密码错误！");
                response.setHeader("Refresh", "1;URL=login.jsp");
            }
            conn.close();
            stmt.close();
            rs.close();
        } catch(HeadlessException | ClassNotFoundException | SQLException e)
        {
            out.println(e.getMessage());
        }
    }

}
