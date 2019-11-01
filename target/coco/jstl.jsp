<%@ page import="java.util.List" %>
<%@ page import="com.whisper.entity.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: whisper
  Date: 2019/10/26
  Time: 下午5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
</head>
<body>
<%
    List<User> list=new ArrayList<User>();
    list.add(new User("whisper","aa","男",23,false));
    list.add(new User("coco","aa","男",23,false));
    list.add(new User("fafa","aa","nv",23,false));
    request.setAttribute("list",list);
%>

<c:set var="aaaa" value="dd" scope="request"></c:set>
<c:out value="${aaaa}"></c:out>
<c:remove var="aaaa"></c:remove>
<c:set var="age" value="5" scope="request"></c:set>
<br>
<%--<c:if test="${age>=18}">
<p>你是成年人</p>
</c:if>--%>
<%--${aaaa}--%>
<%--<c:choose>
    <c:when test="${age>18}">
    <p>已成年</p>
    </c:when>
    <c:otherwise>
        <p class="text-danger">未成年</p>
    </c:otherwise>
</c:choose>--%>
<%--<c:forEach var="i" begin="1" end="10">
    ${i} <br>
</c:forEach>--%>
<c:forEach items="${list}" var="u">
${u.name}<br>
</c:forEach>
</body>
</html>
