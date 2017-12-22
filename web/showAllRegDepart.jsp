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
    <title>显示所有已注册组织人员信息</title>
</head>
<body>
<table>
    <tr>
        <td>姓名</td>
        <td>工号</td>
        <td>所属单位</td>
        <td>电子邮箱</td>
        <td>操作</td>
    </tr>
    <s:iterator id="allRegDepart" value="#request['AllRegDepart']">
        <tr>
            <td><s:property value="#allRegDepart.departStaffName"/> </td>
            <td><s:property value="#allRegDepart.departJobNum"/> </td>
            <td><s:property value="#allRegDepart.departUnit"/> </td>
            <td><s:property value="#allRegDepart.departEmail"/> </td>
            <td>
            <td>
                <form action="deleteDepart.action" method="post">
                    <input type="hidden" name="departmentEntity.departId" value="<s:property value="#allRegDepart.departId"/> ">
                    <input type="submit" value="删除">
                </form>
            </td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
