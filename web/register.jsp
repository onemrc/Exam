<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/9/2017
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>注册</title>
</head>
<body>

<form action="register.action" method="post">
    <label>
        学生姓名:
        <input type="text" name="studentEntity.stuName">
    </label><br>
    身份证号:<label>
    <input type="text" name="studentEntity.stuIdNum">
</label><br>
    手机号码:<label>
    <input type="text" name="studentEntity.stuPhone">
</label><br>
    邮箱:<label>
    <input type="email" name="studentEntity.stuEmail">
</label><br>

    <input type="submit" value="提交">
</form>


</body>
</html>
