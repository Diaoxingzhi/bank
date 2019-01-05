<%--
  Created by IntelliJ IDEA.
  User: hwt
  Date: 2018/12/24
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销户结束</title>
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
        <span class="success">您销户成功:</span>
        <span id="return">3秒后返回登录界面...</span>
        <%response.setHeader("refresh","3;URL=index.jsp");%>

    </div>
</div>
</body>
</html>
