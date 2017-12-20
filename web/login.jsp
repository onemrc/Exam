<%--
  Created by IntelliJ IDEA.
  User: NoOne
  Date: 2017-12-05
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<form action="login.action" method="post">
    邮箱账号： <input type="text" name="userEntity.userEmail" required>
    <br>
    密码：<input type="password" name="userEntity.userPassword" required>
    <br>
    <input type="radio" name="userEntity.userPermit" value="0">管理员
    <br>
    <input type="radio" name="userEntity.userPermit" value="1">用户
    <br>
    <input type="radio" name="userEntity.userPermit" value="2">组织部门
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
