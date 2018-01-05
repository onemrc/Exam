<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 1/2/2018
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><!-- Mirrored from condorthemes.com/cleanzone/pages-blank-header.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
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
<%@include file="page_index_iframe.jsp"%>


    <div class="container-fluid" id="pcont">
        <div class="page-head">
            <h2>发布考试信息</h2>

        </div>

        <div class="cl-mcont">
            <div class="row">
                <div class="col-sm-6 col-md-4 ">

                </div><div class="col-sm-6 col-md-6 ">
                <div class="block-flat ">
                    <div class="header">
                        <h3>From</h3>
                    </div>
                    <div class="content">

<s:iterator id="examInfo" value="#request['examInfo']">
                        <form role="form" action="addSignUp.action" method="post">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">考试名称</label>
                                <div class="form-group">
                                    <input type="text" placeholder="" class="form-control" value="<s:property value="#examInfo.examName"/>" readonly>
                                </div>

                                <%--考试id--%>
                                <input type="hidden" name="signupEntity.examId" value="<s:property value="#examInfo.examId"/>">


                                <div class="form-group">
                                    <label class="col-sm-3 control-label">考试时间</label>
                                    <input type="text" placeholder="" class="form-control" value="<s:property value="#examInfo.examTime"/>"  readonly>
                                </div>
                                </s:iterator>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">报名开始时间</label>
                                    <div class="input-group date datetime" data-date-format="yyyy-mm-dd - hh:ii" data-link-field="dtp_input1">
                                        <input class="form-control " type="text" name="signupEntity.signUpStartTime" readonly="">
                                        <span class="input-group-addon btn btn-primary"><span class="glyphicon glyphicon-th"></span></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">报名结束时间</label>
                                    <div class="input-group date datetime" data-date-format="yyyy-mm-dd - hh:ii" data-link-field="dtp_input1">
                                        <input class="form-control " type="text" name="signupEntity.signUpEndTime" readonly="">
                                        <span class="input-group-addon btn btn-primary"><span class="glyphicon glyphicon-th"></span></span>
                                    </div>
                                </div>


                            </div>


                            <button class="btn btn-primary" type="submit">Submit</button>
                            <button class="btn btn-default">Cancel</button>
                        </form></div>


                </div>
            </div>
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
    $(document).ready(function(){
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

<a href="#" class="back-to-top" style="display: none;"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top" style="display: none;"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a><div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 1549.98px; z-index: 1040;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2 January 2018</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">14:00</span><span class="minute">14:05</span><span class="minute">14:10</span><span class="minute">14:15</span><span class="minute active">14:20</span><span class="minute">14:25</span><span class="minute">14:30</span><span class="minute">14:35</span><span class="minute">14:40</span><span class="minute">14:45</span><span class="minute">14:50</span><span class="minute">14:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2 January 2018</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour active">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">January 2018</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">31</td><td class="day">1</td><td class="day active">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td></tr><tr><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td></tr><tr><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td></tr><tr><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td></tr><tr><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td></tr><tr><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td><td class="day new">8</td><td class="day new">9</td><td class="day new">10</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2018</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year ">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year active">2018</span><span class="year">2019</span><span class="year ">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div></div></body></html>