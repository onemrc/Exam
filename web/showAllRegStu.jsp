<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/21/2017
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>显示所有已注册学生信息</title>
</head>
<body>
<table>
    <tr>
        <td>学生姓名</td>
        <td>身份证号</td>
        <td>联系电话</td>
        <td>电子邮箱</td>
        <td>操作</td>
    </tr>
    <s:iterator id="allRegStu" value="#request['AllRegStu']">
        <tr>
            <td><s:property value="#allRegStu.stuName"/> </td>
            <td><s:property value="#allRegStu.stuIdNum"/> </td>
            <td><s:property value="#allRegStu.stuPhone"/> </td>
            <td><s:property value="#allRegStu.stuEmail"/> </td>
            <td>
            <td>
            <form action="deleteStu.action" method="post">
                <input type="hidden" name="studentEntity.stuId" value="<s:property value="#allRegStu.stuId"/> ">
                <input type="submit" value="删除">
            </form>
        </td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
