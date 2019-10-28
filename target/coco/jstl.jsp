<%--
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
</head>
<body>
<c:set var="aaaa" value="dd" scope="request"></c:set>
<c:out value="${aaaa}"></c:out>
<c:remove var="aaaa"></c:remove>

${aaaa}
</body>
</html>
