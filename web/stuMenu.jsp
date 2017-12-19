<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/14/2017
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>待审核学生信息</title>
</head>
<body>

<table>
    <tr>
        <td>学生id</td>
        <td>学生姓名</td>
        <td>身份证号</td>
        <td>电话</td>
        <td>邮箱</td>
        <td>操作</td>
    </tr>
    <s:iterator id="stu" value="#request['stuList']">
        <tr>
            <td><s:property value="#stu.stuId"/></td>
            <td><s:property value="#stu.stuName"/></td>
            <td><s:property value="#stu.stuIdNum"/></td>
            <td><s:property value="#stu.stuPhone"/></td>
            <td><s:property value="#stu.stuEmail"/></td>

            <form action="setExStatus" method="post">
                <input type="hidden" name="userName" value="<s:property value="#stu.stuName"/>">
                <input type="hidden" name="userEmail" value="<s:property value="#stu.stuEmail"/>">
                <input type="hidden" name="stuId" value="<s:property value="#stu.stuId"/>">
                <input type="hidden" name="ex_status" value="1">
                <td><input type="submit" value="通过" ></td>
            </form>
            <form action="setExStatus" method="post">
                <input type="hidden" name="stuId" value="<s:property value="#stu.stuId"/>">
                <input type="hidden" name="ex_status" value="2">
                <td><input type="submit" value="不通过"></td>
            </form>
        </tr>
    </s:iterator>
</table>
</body>
</html>
