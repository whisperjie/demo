<%@ page import="com.whisper.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: whisper
  Date: 2019/10/21
  Time: 下午10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%
request.setAttribute("age",20);
session.setAttribute("name","whisper");
application.setAttribute("count",2);
%>
<p>年龄为：${requestScope.age}</p>
<p>名称为： ${sessionScope.name}</p>
<p>在线人数为： ${count}</p>--%>

<% User user=new User("whisper","aa","男",22,false);
request.setAttribute("user",user);
%>
<p>${user.name}</p>

</body>
</html>
