<%--
  Created by IntelliJ IDEA.
  User: whisp
  Date: 2019/11/4
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/popper.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</head>
<body>

<form action="login-do" method="post">
    名称：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <button type="submit">go</button>
    <div id="msg"></div>
</form>

<script>
    setInterval("callAjax()",2000);
    function callAjax() {
        setInterval(()=>{
           $.ajax({
               url:"ajax",
               type:"get",
               cache:false,
               success:function (msg) {
                   if (msg=="可以使用"){
                       $("#msg").css("text-success")
                   }else{
                       $("#msg").css("text-danger")
                   }
                   $("#msg").append(msg)
               }
           })
        },5000)
    }
</script>

</body>
</html>
