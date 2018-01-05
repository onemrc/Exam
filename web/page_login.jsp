
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en"><!-- Mirrored from condorthemes.com/cleanzone/pages-login.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT --><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Clean Zone</title>

    <!-- Bootstrap core CSS -->
    <link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="texture" style="opacity: 1; margin-left: 0px;">




<div id="cl-wrapper" class="login-container">

    <div class="middle-login">
        <div class="block-flat">
            <div class="header">
                <h3 class="text-center"><img class="logo-img" src="images/logo.png" alt="logo">考试报名管理系统</h3>
            </div>
            <div>
                <form style="margin-bottom: 0px !important;" class="form-horizontal" action="login.action" method="post">
                    <div class="content">
                        <h4 class="title">用户登陆</h4>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <input type="email" placeholder="Your email" name="userEntity.userEmail" class="form-control" required="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input type="password" placeholder="Password" name="userEntity.userPassword" class="form-control" required="">
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="foot">
                        <a href="#" class="pull-left" data-toggle="modal" data-target="#selectPermit">用户注册</a>
                        <button class="btn btn-default" data-dismiss="modal" type="button">Reset</button>
                        <button class="btn btn-primary" data-dismiss="modal" type="submit">Log me in</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="text-center out-links"><a href="#">© 梧州学院 &nbsp;&nbsp;JavaEE课设</a></div>
    </div>

</div>


<!-- 模态框（Modal） -->
<%--注册时选择身份--%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="selectPermit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
            </div>
            <div class="modal-body">
                <div class="">
                    <div class="block-flat">
                        <div class="content">
                           <button class="btn btn-lg"><a href="page_StuRegister.jsp">我是学生</a></button><br><br>
                            <button class="btn btn-lg"><a href="page_DepartRegister.jsp">我是组织部门人员</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/behaviour/general.js"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/behaviour/voice-commands.js"></script>
<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>


<!-- Mirrored from condorthemes.com/cleanzone/pages-login.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->

</body></html>