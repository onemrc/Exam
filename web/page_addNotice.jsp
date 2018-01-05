<%--
  Created by IntelliJ IDEA.
  User: one
  Date: 1/4/2018
  Time: 2:12 PM
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

    <link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="js/bootstrap.switch/bootstrap-switch.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" type="text/css" href="js/jquery.select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap.slider/css/slider.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap.wysihtml5/dist/bootstrap3-wysihtml5.min.css"></link>
    <link rel="stylesheet" type="text/css" href="js/bootstrap.summernote/dist/summernote.css" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/pygments.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />

</head>

<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/pygments.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />
<link rel="stylesheet" type="text/css" href="js/bootstrap.switch/bootstrap-switch.css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />

</head>

<body style="opacity: 1; margin-left: 0px;">

<!-- Fixed navbar -->
<%@include file="page_index_iframe.jsp"%>

    <div class="container-fluid" id="pcont">
        <div class="page-head">
            <h2>发布公告</h2>

        </div>
        <div class="cl-mcont">
            <div class="row">
                <div class="col-md-12">

                    <div class="block-flat">
                        <div class="header">
                            <h3>CKEditor</h3>
                        </div>
                        <div class="content">
                            <form class="form-horizontal group-border-dashed" action="addNotice.action"  novalidate method="post">
                                <div class="form-group">
                                    <textarea class="ckeditor form-control" name="noticeEntity.noticeAbout"></textarea>
                                </div>
                                <div class="form-group" >
                                    <label class="col-sm-1 control-label">公告标题</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" name="noticeEntity.noticeTitle"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button class="btn btn-default">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>







        </div>
    </div>


</div>



<script src="js/jquery.min.js"></script>
<script src="js/jquery.select2/select2.min.js" type="text/javascript"></script>
<script src="js/jquery.parsley/dist/parsley.js" type="text/javascript"></script>
<script src="js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/ckeditor/4.7.0/ckeditor.js"></script>
<script src="js/ckeditor/adapters/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.summernote/dist/summernote.min.js"></script>
<script type="text/javascript" src="js/bootstrap.wysihtml5/dist/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="js/bootstrap.wysihtml5/dist/bootstrap3-wysihtml5.all.min.js"></script>
<script type="text/javascript" src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
<script type="text/javascript" src="js/jquery.nestable/jquery.nestable.js"></script>
<script type="text/javascript" src="js/behaviour/general.js"></script>
<script src="js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap.switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        //initialize the javascript
        App.init();
        App.textEditor();

        $('#some-textarea').wysihtml5();
        $('#summernote').summernote();
    });
</script>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/behaviour/voice-commands.js"></script>
<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
</body></html>