<%--
  Created by IntelliJ IDEA.
  User: hwt
  Date: 2018/12/24
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息</title>
</head>
<link rel="stylesheet" href="jm.css">
<body>
<script type="text/javascript">
    function check(form){

        with(form){
            if(IDcard.value == ""){
                alert("卡号不能为空");
                return false;
            }
            if(name.value == ""){
                alert("姓名不能为空");
                return false;
            }
            if(pwd.value == ""){
                alert("密码不能为空");
                return false;
            }
            if(sex.value == ""){
                alert("性别不能为空");
                return false;
            }
            if(ID.value == ""){
                alert("身份证不能为空");
                return false;
            }
            if(address.value == ""){
                alert("地址不能为空");
                return false;
            }
            if(Tel.value == ""){
                alert("电话不能为空");
                return false;
            }
            if(nowOpen.value == ""){
                alert("开现不能为空");
                return false;
            }
            var password=document.getElementById("pp");
            if(password.value.length!=6){
                alert("密码长度必须为六位！");
                return false;
            }
            var id=document.getElementById("id");
            if(id.value.length!=18){
                alert("密码长度必须为18位！");
                return false;
            }

            return true;
        }
    }
</script>
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




<div class="wrapper-box" style="margin-top: 60px;">
    <div class="content-box">
        <div class="register-box">
          <span id="wel">欢迎您进入工商银行</span>
          <p class="line"></p>
          <span id="mess">输入您的信息:</span>
          <form   action="registerServlet" method="post" onsubmit="return check(this);">
              <ul class="left">
                  <li>卡号:<input type="number" name="IDcard"></li>
                  <li>姓名:<input type="text" name="name"></li>
                  <li>密码:<input id="pp"  type="password" name="pwd"></li>
                  <li>性别:<input type="text" name="sex"></li>
              </ul>
              <ul class="right">
                  <li>身份证:<input id="id" type="number" name="ID"></li>
                  <li>地&nbsp;&nbsp;  址:<input type="text" name="address"></li>
                  <li>电&nbsp;&nbsp;  话:<input type="number" name="Tel"></li>
                  <li>现&nbsp;&nbsp;  开:<input type="number" name="nowOpen"></li>
              </ul>
              <input class="submit" type="submit" value="提交" style="cursor: pointer;font-size: 15px">
              <a class="submit" href="index1.jsp" style="font-size: 15px;margin-top: 15px">返回</a>
          </form>

        </div>
    </div>
</div>
</body>
</html>
