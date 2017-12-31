<%--
  Created by IntelliJ IDEA.
  User: NoOne
  Date: 11/25/2017
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <title>$Title$</title>
</head>

<link rel="stylesheet" type="text/css" href="css/common.css">
<body>

<form action="showAllNoRegStu.action" method="post">
    <input type="submit" value="查询待审核学生信息">
</form><br>

<form action="showAllNoRegDepart.action" method="post">
    <input type="submit" value="查询待审核组织部门人员信息">
</form><br>

<form action="showAllRegStu.action" method="post">
    <input type="submit" value="显示所有已注册学生信息">
</form><br>

<form action="showAllRegDepart.action" method="post">
    <input type="submit" value="显示所有已注册组织人员信息">
</form><br>


<a href="login.jsp">登陆</a><br>

<a href="stuRegister.jsp">学生注册</a><br>

<a href="page_DepartRegister.jsp">组织部门人员注册</a><br>

<a href="page_addExamCategory.jsp">添加考试类别</a>

<form action="showAllCategory.action" method="post">
    <input type="submit" value="添加考试信息">
</form>

<form action="showAllExam.action" method="post">
    <input type="submit" value="发布报名信息">
</form>


</body>
</html>


<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

