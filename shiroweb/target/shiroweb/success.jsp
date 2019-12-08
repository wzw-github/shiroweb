<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/8
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    登录成功
    <hr>
    <%--游客登录--%>
    <shiro:guest>
        游客访问
    </shiro:guest>
    <hr>
    <%--user 标签：用户已经通过认证\记住我 登录后显示响应的内容--%>
    <shiro:user>
        欢迎[<shiro:principal/>]登录 <a href = "logout">退出</a>
    </shiro:user>
    <hr>
    <%--判断角色，这里是有admin的角色--%>
    <shiro:hasRole name="admin">
        欢迎有admin角色的用户！
    </shiro:hasRole>
    <hr>
    <%--判断权限，这里是有student:create权限--%>
    <shiro:hasPermission name="student:create">
        欢迎有student:create权限的用户！
    </shiro:hasPermission>
    <%--authenticated标签：用户身份验证通过，即 Subject.login() 登录成功 不包含记住我登录的--%>
    <br>
    <shiro:authenticated>
        用户[<shiro:principal/>] 已身份验证通过
    </shiro:authenticated>
    <%--notAuthenticated标签：用户未进行身份验证，即没有调用Subject.login进行登录,包括"记住我"也属于未进行身份验证--%>
    <br>
    <shiro:notAuthenticated>
        未身份验证(包括"记住我")
    </shiro:notAuthenticated>
</body>
</html>
