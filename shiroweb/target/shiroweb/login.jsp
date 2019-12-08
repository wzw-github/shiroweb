<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/8
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <font color="red">${errorInfo }</font>
</div>
<form action="login" method="post">
    userName:<input type="text" name="userName"/><br/>
    password:<input type="password" name="password"/><br/>
    <input type="submit" value="登录"/>
</form>
</body>
</html>
