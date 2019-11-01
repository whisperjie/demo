<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.whisper.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: whisp
  Date: 2019/8/30
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/popper.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <%--  <%
        String info = (String) request.getAttribute("info");
            if(info!=null){

    %>
    <h1 class="text-danger"><%= info%></h1>
    <%}%>
    <%User user=(User)session.getAttribute("user");
    Object Num=(Integer)application.getAttribute("userNum");%>
    <%if (user!=null){
        int userNum=(Integer)Num;%>

    <h1 class="text-info">当前登录用户：<%= user.name%>,当前在线用户数为<%=userNum%></h1>
    <%}%>--%>
<form action="login-do" method="post">
    名称：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <button type="submit">go</button>
</form>
    <c:choose>
        <c:when test="${not empty info}">
            <h1 class="text-danger">${info}</h1>
        </c:when>
    </c:choose>
      <c:if test="${not empty user}">
          <h1 class="text-info">当前登录用户：${user.name},当前在线用户数为${userNum}</h1>
      </c:if>
</div>
</body>
</html>
