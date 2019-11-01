<%@ page import="java.util.List" %>
<%@ page import="com.whisper.entity.Goods" %><%--
  Created by IntelliJ IDEA.
  User: whisper
  Date: 2019/10/21
  Time: 下午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../static/css/bootstrap.min.css">
</head>
<body>
<h1>商品管理</h1>
<hr>
<table class="table table-striped">
    <tr>
        <td>名称</td>
        <td>描述</td>
        <td>价格</td>
        <td>库存</td>
        <td>操作</td>
    </tr>
   <%-- <c:out value="${list}"></c:out>--%>
    <c:forEach items="${list }" var="g">
        <tr>
            <td>${g.name}</td>
            <td>${g.content}</td>
            <td>${g.price}</td>
            <td>${g.capacity}</td>
            <td><a href="#">修改</a>|<a href="#">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
