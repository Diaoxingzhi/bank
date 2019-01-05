<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>

<%--
  Created by IntelliJ IDEA.
  User: hwt
  Date: 2018/12/23
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用于销户的中转站</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String IDcard1=request.getParameter("IDcard");
String pwd1=request.getParameter("pwd");

        try{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/bank";
        String username = "root";
        String password = "2016013924";
        Connection conn = DriverManager.getConnection(url,username,password);
        Statement sql= conn.createStatement();
        ResultSet rs=sql.executeQuery("select *from user ");
        while(rs.next()){
            String IDcard=rs.getString("IDcard");
            String pwd=rs.getString("pwd");

           if(IDcard1.equals(IDcard)&&pwd1.equals(pwd)){
                session.setAttribute("IDcard",IDcard);
                rs.close();
                conn.close();
               response.sendRedirect("deleteServlet");
           }

        }
        rs.close();
        conn.close();

        } catch (ClassNotFoundException e) {
        e.printStackTrace();

        } catch (SQLException e) {
        e.printStackTrace();
        }
        response.setHeader("refresh","0;URL=closeShow.jsp");

%>








</body>
</html>
