<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>


<!-- 模态框（Modal） -->
<%--修改密码--%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="updatePassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    修改密码
                </h4>
            </div>
            <div class="modal-body">
                <div class="">
                    <div class="block-flat">
                        <div class="content">
                            <form class="form-horizontal" role="form" action="updatePassword.action" method="post">
                                <input type="hidden" name="userEntity.userId" value="${sessionScope.user.userId}">
                                <label  class=" control-label">旧密码</label>
                                <div class="form-group">

                                    <div class="col-sm-10">
                                        <input type="password" class="form-control"  placeholder="旧密码" name="userEntity.userPassword">
                                    </div>
                                </div>
                                <label  class=" control-label">新密码</label>
                                <div class="form-group">

                                    <div class="col-sm-10">
                                        <input type="password" class="form-control"  placeholder="新密码" name="newPassword">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">提交</button>
                                        <button class="btn btn-default">取消</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar" src="images/avatar2.jpg">${sessionScope.user.userName}<b class="caret"></b></a>
                    <ul class="dropdown-menu">

                        <li><a href="#">账号信息</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#updatePassword">修改密码</a></li>

                        <li class="divider"></li>
                        <li><a href="loginOut.action">退出登陆</a></li>
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
                            <a href="#">

                                ${sessionScope.user.userName}
                            </a>

                            <img src="images/state_online.png" alt="Status"> <span>在线</span>
                        </div>
                    </div>
                    <ul class="cl-vnavigation">
                        <li class="parent open"><a href="#"><i class="fa fa-home"></i><span>用户管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="showAllNoRegStu.action">学生注册审核</a></li>
                                <li><a href="showAllNoRegDepart.action">用户注册审核</a></li>
                                <li><a href="showAllRegStu.action">学生用户管理</a></li>
                                <li><a href="showAllRegDepart.action">组织部门用户管理</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-smile-o"></i><span>考试管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="page_addExamCategory.jsp">添加考试类别</a></li>
                                <li><a href="showAllCategory.action">添加考试信息</a></li>







                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-list-alt"></i><span>报名管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="showAllExam.action">发布报名信息</a></li>
                                <li><a href="showAllSignUpInfo.action">查看所有报名信息</a></li>





                            </ul>
                        </li>
                        <li class="parent"><a href="#"><i class="fa fa-table"></i><span>公告管理</span></a>
                            <ul class="sub-menu" style="display: none;">
                                <li><a href="page_addNotice.jsp">发布公告</a></li>
                                <li><a href="showAllNotice.action">历史公告管理</a></li>
                            </ul>
                        </li>





                    </ul>
                </div>
            </div>
            <div class="text-right collapse-button" style="padding:7px 9px;">

                <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-left"></i></button>
            </div>
        </div>
    </div>