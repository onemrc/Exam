<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 1/2/2018
  Time: 4:02 PM
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
    <link rel="stylesheet" type="text/css" href="js/bootstrap.switch/bootstrap-switch.min.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />

    <!-- Select2 -->
    <link rel="stylesheet" type="text/css" href="js/jquery.select2/select2.css" />


    <!-- Slider -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap.slider/css/slider.css" />

    <!-- DateRange -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap.daterangepicker/daterangepicker-bs3.css" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/pygments.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />
    <link href="js/jquery.icheck/skins/square/blue.css" rel="stylesheet">

</head>

<body style="opacity: 1; margin-left: 0px;">

<!-- Fixed navbar -->
<%@include file="stu_page_index_iframe.jsp"%>

<div class="container-fluid" id="pcont">
    <div class="page-head">
        <h2>报名信息管理</h2>

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
                        <h3>已报名考试</h3>
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
                                            style="width: 100px;">考试名称
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0"
                                            aria-controls="datatable-icons" rowspan="1" colspan="1"
                                            aria-label="Platform(s): activate to sort column ascending"
                                            style="width: 150px;">报名时间
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0"
                                            aria-controls="datatable-icons" rowspan="1" colspan="1"
                                            aria-label="Platform(s): activate to sort column ascending"
                                            style="width: 150px;">考试地点
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0"
                                            aria-controls="datatable-icons" rowspan="1" colspan="1"
                                            aria-label="Platform(s): activate to sort column ascending"
                                            style="width: 150px;">考试时间
                                        </th>

                                    </tr>
                                    </thead>
                                    <s:iterator id="AllSignUpExam" value="#request['signExam']">
                                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        <tr class="gradeA even">
                                            <td class="  sorting_1"> </td>
                                            <td class=" "><s:property value="#AllSignUpExam.examName"/></td>
                                            <td class=" "><s:property value="#AllSignUpExam.signUpTime"/></td>
                                            <td class=" "><s:property value="#AllSignUpExam.examPlace"/></td>
                                            <td class=" "><s:property value="#AllSignUpExam.examTime"/></td>
                                        </tr>
                                        </tbody>
                                    </s:iterator>
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
        class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#"
                                                                                                            class="back-to-top"><i
        class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#"
                                                                                                            class="back-to-top"><i
        class="fa fa-angle-up"></i></a></body>
</html>
