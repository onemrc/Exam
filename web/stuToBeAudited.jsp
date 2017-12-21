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
        <td width="200px">操作</td>
    </tr>
    <s:iterator id="NoRegStu" value="#request['AllStuToBeAuditedList']">
        <tr>
            <td><s:property value="#NoRegStu.stuId"/></td>
            <td><s:property value="#NoRegStu.stuName"/></td>
            <td><s:property value="#NoRegStu.stuIdNum"/></td>
            <td><s:property value="#NoRegStu.stuPhone"/></td>
            <td><s:property value="#NoRegStu.stuEmail"/></td>
            <td>
            <form action="setExStatus.action" method="post">
                <input type="hidden" name="userEntity.userName" value="<s:property value="#stu.stuName"/>">
                <input type="hidden" name="userEntity.userEmail" value="<s:property value="#stu.stuEmail"/>">
                <input type="hidden" name="stuId" value="<s:property value="#stu.stuId"/>">
                <input type="hidden" name="ex_status" value="1">
                <input type="submit" value="通过" >
            </form>
            </td>
                &nbsp;&nbsp;&nbsp;
                <td>
            <form action="setExStatus.action" method="post">
                <input type="hidden" name="stuId" value="<s:property value="#stu.stuId"/>">
                <input type="hidden" name="ex_status" value="2">
                <input type="submit" value="不通过">
            </form>
            </td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
