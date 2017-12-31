<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/29/2017
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<!-- Mirrored from condorthemes.com/cleanzone/pages-blank-header.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Clean Zone</title>

    <!-- Bootstrap core CSS -->
    <link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="js/jquery.gritter/css/jquery.gritter.css">

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <![endif]-->
    <link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css">
    <link rel="stylesheet" type="text/css" href="js/jquery.easypiechart/jquery.easy-pie-chart.css">
    <link rel="stylesheet" type="text/css" href="js/bootstrap.switch/bootstrap-switch.css">
    <link rel="stylesheet" type="text/css" href="js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="js/jquery.select2/select2.css">
    <link rel="stylesheet" type="text/css" href="js/bootstrap.slider/css/slider.css">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <style type="text/css">.jqstooltip {
        position: absolute;
        left: 0px;
        top: 0px;
        visibility: hidden;
        background: rgb(0, 0, 0) transparent;
        background-color: rgba(0, 0, 0, 0.6);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
        color: white;
        font: 10px arial, san serif;
        text-align: left;
        white-space: nowrap;
        padding: 5px;
        border: 1px solid white;
        z-index: 10000;
    }

    .jqsfield {
        color: white;
        font: 10px arial, san serif;
        text-align: left;
    }</style>
    <style type="text/css">.jqstooltip {
        position: absolute;
        left: 0px;
        top: 0px;
        visibility: hidden;
        background: rgb(0, 0, 0) transparent;
        background-color: rgba(0, 0, 0, 0.6);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
        color: white;
        font: 10px arial, san serif;
        text-align: left;
        white-space: nowrap;
        padding: 5px;
        border: 1px solid white;
        z-index: 10000;
    }

    .jqsfield {
        color: white;
        font: 10px arial, san serif;
        text-align: left;
    }</style>
    <style type="text/css">.jqstooltip {
        position: absolute;
        left: 0px;
        top: 0px;
        visibility: hidden;
        background: rgb(0, 0, 0) transparent;
        background-color: rgba(0, 0, 0, 0.6);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
        color: white;
        font: 10px arial, san serif;
        text-align: left;
        white-space: nowrap;
        padding: 5px;
        border: 1px solid white;
        z-index: 10000;
    }

    .jqsfield {
        color: white;
        font: 10px arial, san serif;
        text-align: left;
    }</style>
</head>

<body style="opacity: 1; margin-left: 0px;">

<!-- Fixed navbar -->
<div id="head-nav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="fa fa-gear"></span>
            </button>
            <a class="navbar-brand" href="#"><span>考试报名管理系统</span></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">主页</a></li>
                <li><a href="#about">About</a></li>


            </ul>
            <ul class="nav navbar-nav navbar-right user-nav">
                <li class="dropdown profile_menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar"
                                                                                    src="images/avatar2.jpg">用户名<b
                            class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">账号信息</a></li>
                        <li><a href="#">修改密码</a></li>

                        <li class="divider"></li>
                        <li><a href="#">退出登陆</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right not-nav">


            </ul>

        </div><!--/.nav-collapse -->
    </div>
</div>


<div id="cl-wrapper">
    <div class="cl-sidebar">
        <div class="cl-toggle"><i class="fa fa-bars"></i></div>
        <div class="cl-navblock">
            <div class="menu-space">
                <div class="content">
                    <div class="side-user">
                        <div class="avatar"><img src="images/avatar1_50.jpg" alt="Avatar"></div>
                        <div class="info">
                            <a href="#">用户名</a>
                            <img src="images/state_online.png" alt="Status"> <span>在线</span>
                        </div>
                    </div>
                    <ul class="cl-vnavigation">
                        <li class="parent"><a href="#"><i class="fa fa-home"></i><span>用户管理</span></a>
                            <ul class="sub-menu" style="display: block;">
                                <li><a href="">学生注册审核</a></li>
                                <li><a href="">用户注册审核</a></li>
                                <li><a href="">学生用户管理</a></li>
                                <li><a href="">组织部门用户管理</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-smile-o"></i><span>考试管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="">添加考试类别</a></li>
                                <li><a href="">添加考试信息</a></li>


                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-list-alt"></i><span>报名管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="">发布报名信息</a></li>
                                <li><a href="">查看所有报名信息</a></li>


                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-table"></i><span>公告管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="">发布公告</a></li>
                                <li><a href="">查看历史公告</a></li>
                            </ul>
                        </li>


                    </ul>
                </div>
            </div>
            <div class="text-right collapse-button" style="padding:7px 9px;">

                <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;"
                                                                                  class="fa fa-angle-left"></i></button>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="pcont">
        <div class="page-head">
            <h2>学生注册审核</h2>

        </div>

        <div class="cl-mcont">

            <div class="row">
                <div class="col-md-12">

                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="block-flat">
                        <div class="header">
                            <h3>Horizontal Icons</h3>
                        </div>
                        <div class="content">
                            <div class="table-responsive">
                                <div id="datatable-icons_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="pull-right">
                                                <div class="dataTables_filter" id="datatable-icons_filter"><label><input
                                                        type="text" aria-controls="datatable-icons"></label></div>
                                            </div>
                                            <div class="pull-left">
                                                <div id="datatable-icons_length" class="dataTables_length"><label>Show
                                                    <select size="1" name="datatable-icons_length"
                                                            aria-controls="datatable-icons">
                                                        <option value="10" selected="selected">10</option>
                                                        <option value="25">25</option>
                                                        <option value="50">50</option>
                                                        <option value="100">100</option>
                                                    </select> Rows</label></div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <table class="table table-bordered dataTable" id="datatable-icons"
                                           aria-describedby="datatable-icons_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-sort="ascending"
                                                aria-label="Rendering engine: activate to sort column descending"
                                                style="width: 70px;">id
                                            </th>
                                            <th class="sorting" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-label="Browser: activate to sort column ascending"
                                                style="width: 100px;">学生姓名
                                            </th>
                                            <th class="sorting" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-label="Platform(s): activate to sort column ascending"
                                                style="width: 150px;">身份证号
                                            </th>
                                            <th class="sorting" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-label="Platform(s): activate to sort column ascending"
                                                style="width: 150px;">邮箱
                                            </th>
                                            <th class="sorting" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-label="Engine version: activate to sort column ascending"
                                                style="width: 156px;">联系电话
                                            </th>
                                            <th class="sorting" role="columnheader" tabindex="0"
                                                aria-controls="datatable-icons" rowspan="1" colspan="1"
                                                aria-label="CSS grade: activate to sort column ascending"
                                                style="width: 176px;">审核操作
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        <s:iterator id="NoRegStu" value="#request['AllStuToBeAuditedList']">
                                            <tr class="gradeA even">
                                                <td class="  sorting_1"><s:property value="#NoRegStu.stuId"/></td>
                                                <td class=" "><s:property value="#NoRegStu.stuName"/></td>
                                                <td class=" "><s:property value="#NoRegStu.stuIdNum"/></td>
                                                <td class="center "><s:property value="#NoRegStu.stuEmail"/></td>
                                                <td class="center "><s:property value="#NoRegStu.stuPhone"/></td>
                                                <td class="center ">
                                                    <form action="setExStatus.action" method="post" id="set1">
                                                        <input type="hidden" name="userEntity.userName"
                                                               value="<s:property value="#NoRegStu.stuName"/>">
                                                        <input type="hidden" name="userEntity.userEmail"
                                                               value="<s:property value="#NoRegStu.stuEmail"/>">
                                                        <input type="hidden" name="stuId"
                                                               value="<s:property value="#NoRegStu.stuId"/>">
                                                        <input type="hidden" name="ex_status" value="1">
                                                    </form>
                                                    <form action="setExStatus.action" method="post" id="set2">
                                                        <input type="hidden" name="stuId"
                                                               value="<s:property value="#NoRegStu.stuId"/>">
                                                        <input type="hidden" name="ex_status" value="2">
                                                    </form>
                                                    <a class="btn btn-primary btn-xs" href="#"
                                                       data-original-title="通过" data-toggle="tooltip"
                                                       onclick="document.getElementById('set1').submit();"><i
                                                            class="fa fa-check"></i></a>
                                                    <a class="btn btn-danger btn-xs"
                                                       href="#"
                                                       data-original-title="不通过"
                                                       data-toggle="tooltip"
                                                       onclick="document.getElementById('set2').submit();"><i
                                                            class="fa fa-times"></i></a>


                                                </td>
                                            </tr>
                                        </s:iterator>
                                        </tbody>
                                    </table>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="pull-left">
                                                <div class="dataTables_info" id="datatable-icons_info">Showing 1 to 10
                                                    of 57 entries
                                                </div>
                                            </div>
                                            <div class="pull-right">
                                                <div class="dataTables_paginate paging_bs_normal">
                                                    <ul class="pagination">
                                                        <li class="prev disabled"><a href="#"><span
                                                                class="fa fa-angle-left"></span>&nbsp;Previous</a></li>
                                                        <li class="active"><a href="#">1</a></li>
                                                        <li><a href="#">2</a></li>
                                                        <li><a href="#">3</a></li>
                                                        <li><a href="#">4</a></li>
                                                        <li><a href="#">5</a></li>
                                                        <li class="next"><a href="#">Next&nbsp;<span
                                                                class="fa fa-angle-right"></span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

            </div>

        </div>

    </div>

</div>

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
<script type="text/javascript" src="js/jquery.sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="js/jquery.easypiechart/jquery.easy-pie-chart.js"></script>
<script type="text/javascript" src="js/behaviour/general.js"></script>
<script src="js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.nestable/jquery.nestable.js"></script>
<script type="text/javascript" src="js/bootstrap.switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="js/jquery.select2/select2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.gritter/js/jquery.gritter.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        //initialize the javascript
        App.init();
    });
</script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/behaviour/voice-commands.js"></script>
<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>


<!-- Mirrored from condorthemes.com/cleanzone/pages-blank-header.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->

<a href="#" class="back-to-top" style="display: none;"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"
                                                                                            style="display: none;"><i
        class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a></body>
</html>
