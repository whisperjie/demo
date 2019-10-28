<%@ page import="com.whisper.entity.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<html>
<title>index</title>
<link rel="stylesheet" href="./static/css/bootstrap.min.css">
<script src="static/js/jquery.min.js"></script>
<script src="static/js/popper.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<body>
<div class="container">
    <jsp:include page="head.jsp"></jsp:include>
    <c:if test="${empty user}">
        <a href="register.jsp">注册</a>
        <a href="login.jsp">登录</a>
    </c:if>

    <c:if test="${not empty user}">
        <h1 class="text-info">当前登录用户：${user.name},当前在线用户数为${userNum}</h1>
        <p class="text-danger"><a href="login-out">退出</a></p>
        <hr>
    </c:if>
<%
    /*Map<String,String> map=new HashMap<String, String>();
    map.put("name","whisper");
    map.put("age","22");
    request.setAttribute("map",map);*/
    List<User> users=new ArrayList<User>();
    users.add(new User("whisper","aa","nan",22,false));
    users.add(new User("coconnike","aa","nan",22,false));
    users.add(new User("fafa","aa","lv",22,false));
    request.setAttribute("users",users);
%>
${users[2].name}
${1+1}
    ${1>5}



    <%--<%
    out.print(session);
    %>--%>

    <jsp:include page="foot.jsp"></jsp:include>
</div>
</body>
</html>
