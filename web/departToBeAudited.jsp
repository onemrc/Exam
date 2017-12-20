<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/20/2017
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>待审核组织部门人员信息</title>
</head>
<body>
<table>
    <tr>
        <td>姓名</td>
        <td>所属单位</td>
        <td>工号</td>
        <td>操作</td>
    </tr>

    <s:iterator id="depart" value="#request['AllDepartToBeAudited']">
        <tr>
            <td><s:property value="#depart.departStaffName"/> </td>
            <td><s:property value="#depart.departUnit"/> </td>
            <td><s:property value="#depart.departJobNum"/> </td>
            <td>
                <form action="setDepartExStatus.action" method="post">
                    <input type="hidden" name="userEntity.userName" value="<s:property value="#depart.departStaffName"/>">
                    <input type="hidden" name="userEntity.userEmail" value="<s:property value="#depart.departEmail"/>">
                    <input type="hidden" name="departId" value="<s:property value="#depart.departId"/>">
                    <input type="hidden" name="ex_status" value="1">
                    <input type="submit" value="通过" >
                </form>
            </td>
                &nbsp;&nbsp;&nbsp;
            <td>
                <form action="setDepartExStatus.action" method="post">
                    <input type="hidden" name="departId" value="<s:property value="#depart.departId"/>">
                    <input type="hidden" name="ex_status" value="2">
                    <input type="submit" value="不通过">
                </form>
            </td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
