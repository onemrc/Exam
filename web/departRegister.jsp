<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/20/2017
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>组织部门人员注册</title>
</head>
<body>
<form action="departmentRegister.action" method="post">
    <label>
        姓名：
        <input type="text" name="departmentEntity.departStaffName">
    </label><br>

    <label>
        所属单位：
        <input type="text" name="departmentEntity.departUnit">
    </label><br>

    <label>
        工号：
        <input type="text" name="departmentEntity.departJobNum">
    </label><br>

    <label>
        邮箱：
        <input type="text" name="departmentEntity.departEmail">
    </label><br>
    <input type="submit" value="提交">

</form>
</body>
</html>
