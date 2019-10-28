<%@ page import="java.util.List" %>
<%@ page import="com.whisper.entity.Goods" %><%--
  Created by IntelliJ IDEA.
  User: whisper
  Date: 2019/10/21
  Time: 下午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
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
    <%
        List<Goods> list= (List<Goods>) request.getAttribute("list");
        for (Goods goods:list){
    %>
    <tr>
        <td><%= goods.name%></td>
        <td><%= goods.content%></td>
        <td><%= goods.price%></td>
        <td><%= goods.capacity%></td>
        <td>删除/修改</td>
    </tr>
    <%}%>
</table>
</body>
</html>
