package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "deleteServlet")//销户功能
public class deleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     HttpSession session = request.getSession();
     String IDcard = (String) session.getAttribute("IDcard");

        try {
            // 加载数据库驱动，注册到驱动管理器
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bank";
            String username = "root";
            String password = "2016013924";
            Connection conn = DriverManager.getConnection(url,username,password);
            // 删除图书信息的SQL语句
            String sql = "delete from user where IDcard=?";
            // 获取PreparedStatement
            PreparedStatement ps = conn.prepareStatement(sql);
            // 对SQL语句中的第一个占位符赋值
            ps.setString(1, IDcard);
            // 执行更新操作
            ps.executeUpdate();

            String newsql = "delete from operate where IDcard=?";
            ps = conn.prepareStatement(newsql);
            ps.setString(1, IDcard);
            ps.executeUpdate();

            String sql2 = "delete from balance where IDcard=?";
            ps = conn.prepareStatement(sql2);
            ps.setString(1, IDcard);
            ps.executeUpdate();
//             关闭PreparedStatement
            ps.close();
            // 关闭Connection
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
         request.getRequestDispatcher("end.jsp").forward(request,response);
//        response.sendRedirect("deleoperateServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
