<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 12/29/2017
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><!-- Mirrored from condorthemes.com/cleanzone/pages-sign-up.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT --><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png">


    <title>学生注册</title>

    <!-- Bootstrap core CSS -->
    <link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">


    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="texture" style="opacity: 1; margin-left: 0px;">

<div id="cl-wrapper" class="sign-up-container">

    <div class="middle-sign-up">
        <div class="block-flat">
            <div class="header">
                <h3 class="text-center"><img class="logo-img" src="images/logo.png" alt="logo">考试报名系统</h3>
            </div>
            <div>
                <form style="margin-bottom: 0px !important;" class="form-horizontal" action="stuRegister.action" >
                    <div class="content">
                        <h5 class="title text-center"><strong>学生注册</strong></h5>
                        <hr>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-6">

                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">

                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <input type="text" name="studentEntity.stuName"  required="" placeholder="姓名" class="form-control">
                                </div>
                                <div id="nick-error"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="email" name="studentEntity.stuEmail" parsley-trigger="change" parsley-error-container="#email-error" required="" placeholder="E-mail" class="form-control">
                                </div>
                                <div id="email-error"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">

                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" name="studentEntity.stuIdNum" parsley-trigger="change" parsley-error-container="#email-error" required="" placeholder="身份证号" class="form-control">
                                </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" name="studentEntity.stuPhone"   placeholder="联系电话" class="form-control">
                                </div>

                            </div>
                        </div>


                        <button class="btn btn-block btn-success btn-rad btn-lg" type="submit">Sign Up</button>

                    </div>
                </form>
            </div>
        </div>
        <div class="text-center out-links"><a href="#">© 梧州学院 &nbsp; JavaEE课设</a></div>
    </div>

</div>


<script src="js/jquery.js"></script>
<script src="js/jquery.parsley/dist/parsley.js" type="text/javascript"></script>
<script src="js/behaviour/general.js" type="text/javascript"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/behaviour/voice-commands.js"></script>
<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>


<!-- Mirrored from condorthemes.com/cleanzone/pages-sign-up.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->

</body></html>