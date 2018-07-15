/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;
/**
 *
 * @author Lenovo
 */
public class dbBean {
    private Connection connection;
    private Statement statement;
    static final String JDBC_DRIVER="com.mysql.jdbc.Driver";
    
    public dbBean()
    {
        try{
             Class.forName(JDBC_DRIVER);
             connection=(com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","xhy000229");
             statement=(com.mysql.jdbc.Statement) connection.createStatement();
             }
         catch(ClassNotFoundException | SQLException e){
             System.out.println(e.getMessage());
             System.out.println("数据库连接失败！");}
     
     }
     
     public  int  executeUpd(String s) {
     int result=0;   
     try
     {
     result=statement.executeUpdate(s);
        } 
     catch(SQLException ex) {
            System.out.println("执行更新错误！");
        }
       return result; 
           
    }

    
    public ResultSet executeQ(String s) {
        ResultSet rs = null;
         
        try
        {
            rs = statement.executeQuery(s);
        } 
        catch(Exception ex) {
            System.out.println("ִ执行查询错误！");
        }
        return rs;
    }
    public void close()
    {
        try
        {
            statement.close();
            connection.close();
        } 
        catch(Exception e) 
        {
        }
    }
}
