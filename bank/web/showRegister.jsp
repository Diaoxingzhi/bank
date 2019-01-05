<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: hwt
  Date: 2018/12/24
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功界面</title>
</head>
<link rel="stylesheet" href="jm.css">
<body>

<div class="wrapper-top">
    <div class="content-top">
        <a href="#">logo</a>
        <ul>
            <li class="top-1"></li>
            <li class="top-2">融e购</li>
            <li class="top-3">登录|注册</li>
        </ul>
        <form action="#" method="post">
            <input class="shuru" type="text" name="name">
            <input class="search"  type="submit">

        </form>

    </div>
</div>




<div class="wrapper-box" style="margin-top: 60px">
    <div class="content-box">

    <span class="bank">工商银行欢迎您</span>
        <p id="line"></p>
    <span class="success">恭喜您注册成功:</span>
    <span id="return">3秒后返回登录界面...</span>
     <%response.setHeader("refresh","3;URL=index1.jsp");%>
    </div>
</div>

<%
    request.setCharacterEncoding("utf-8");
     String IDcard=(String) session.getAttribute("IDcard");
     String nowOpen= (String) session.getAttribute("nowOpen");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/bank";
        String username = "root";
        String password = "2016013924";
        Connection conn = DriverManager.getConnection(url, username, password);
        String sql = "insert into balance(IDcard,startCash,endCash) values(?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,IDcard);
        ps.setString(2,nowOpen);
        ps.setString(3,nowOpen);
        int row=ps.executeUpdate();
        ps.close();
        // 关闭Connection，释放资源
        conn.close();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
        out.print(e);
    }
%>




</body>
</html>
