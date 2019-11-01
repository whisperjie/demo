<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.whisper.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: whisp
  Date: 2019/8/30
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/popper.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <!-- 开发环境版本，包含了有帮助的命令行警告 -->
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<div class="container">

    <%--<%User user=(User)session.getAttribute("user");
        Object Num=application.getAttribute("userNum");%>
    <%if (user!=null){
        int userNum=(Integer)Num;
    %>


    <h1 class="text-info">当前登录用户：<%= user.name%>,当前在线用户数为<%=userNum%></h1>
    <%}%>--%>

 <%--   <c:if test="${not empty user}">
        <h1 class="text-info">当前登录用户：${user.name},当前在线用户数为${userNum}</h1>
    </c:if>--%>
<script type="text/javascript">
    /*setInterval(()=>{
        $.ajax({
            url:"ajax",
            type:"get",
            success:function (msg) {

            }
        })
    },2000)*/
</script>
        <div id="app">
    <form action="register-do" method="post">
        名称：<input type="text" name="username" v-model="name" placeholder="请输入昵称"><span id="ifo"></span><br>
        密码：<input type="password" name="password"><br>
        年龄：<input type="text" name="age"><br>
       性别：男 <input type="radio" name="sex" value="男" checked>
        女：<input type="radio" name="sex" value="女"><br>
        <button type="submit">go</button>
    </form>
        </div>
    

</div>
<script type="text/javascript">
    var app=new Vue({
        el:"#app",
        data:{
            name:'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
        },
        watch:{
            name: function (old) {
                //console.log(old)
                $.ajax({
                    url:"ajax",
                    type:"get",
                    data:{
                        key:old
                    },
                    success:function (msg) {
                        console.log(msg)
                    }
                })
            }
        }
    })
</script>

</body>
</html>
