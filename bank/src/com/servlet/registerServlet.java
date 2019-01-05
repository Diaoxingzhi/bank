package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "registerServlet")//注册功能
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        String IDcard=request.getParameter("IDcard");
        String name=request.getParameter("name");
        String pwd=request.getParameter("pwd");
        String sex=request.getParameter("sex");
        String ID=request.getParameter("ID");
        String address=request.getParameter("address");
        String Tel=request.getParameter("Tel");
        String nowOpen=request.getParameter("nowOpen");
        session.setAttribute("IDcard",IDcard);
        session.setAttribute("nowOpen",nowOpen);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bank";
            String username = "root";
            String password = "2016013924";
            Connection conn = DriverManager.getConnection(url, username, password);
            String sql = "insert into user(IDcard,name,pwd,ID,sex,address,Tel,nowOpen) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,IDcard);
            ps.setString(2,name);
            ps.setString(3,pwd);
            ps.setString(4,ID);
            ps.setString(5,sex);
            ps.setString(6,address);
            ps.setString(7,Tel);
            ps.setString(8,nowOpen);
            int row=ps.executeUpdate();

            ps.close();
            // 关闭Connection，释放资源
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
          request.getRequestDispatcher("/showRegister.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }
}
