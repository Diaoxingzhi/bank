<%--
  Created by IntelliJ IDEA.
  User: hwt
  Date: 2018/12/24
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销户界面</title>
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
        <span class="operate">请输入你要操作的用户:</span>
        <form action="text.jsp" method="post" id="form">
        <ul class="operate-list">
            <li>卡号:<input type="number" name="IDcard"></li>
            <li>密码:<input type="password" name="pwd"></li>
            <li><input id="sumb" type="submit" value="确定"></li>
        </ul>
        </form>
        <a id="fanhui" href="index.jsp">返回</a>
    </div>
</div>

</body>
</html>
