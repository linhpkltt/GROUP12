<%-- 
    Document   : User
    Created on : Oct 14, 2020, 5:44:57 PM
    Author     : duchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>User Management</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/AdminLTE.css">
        <link rel="stylesheet" href="../css/_all-skins.min.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" href="../css/style.css" />
        <script src="../js/angular.min.js"></script>
        <script src="../js/app.js"></script>
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <jsp:include page="header.jsp"/>

            <jsp:include page="slider.jsp"/>
            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="images/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Linhpk.ltt</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">

                        <li>
                            <a href="#">
                                <i class="fa fa-th"></i> <span>Functional Management </span>
                                <a href="${contexPath}/AdminLIPDUBB/hotelController/getAllHotel.htm" >Hotel Management</a>
                                <a href="${contexPath}/AdminLIPDUBB/userController/getAllUser.htm" >User Management</a>
                                <a href="${contexPath}/AdminLIPDUBB/bannerController/getAllBanner.htm" >Banner Management </a>
                                <a href="${contexPath}/AdminLIPDUBB/blogController/getAllBlog.htm" >Blog Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/settingController/getAllSetting.htm">Setting Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/commentController/getAllComment.htm">Comment Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/serviceController/getAllService.htm">Service Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/hotelserviceController/getAllHotelservice.htm">HotelService Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/orderController/getAllOrder.htm">Order Management</a>
                                <a href="${contextPath}/AdminLIPDUBB/orderhotelController/getAllOrderHotel.htm">OrderHotel Management</a>
                               
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href=""><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
                                <li><a href=""><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="">
                                <i class="fa fa-th"></i> <span>Widgets</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">Hot</small>
                                </span>
                            </a>
                        </li>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>User Management </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Examples</a></li>
                        <li class="active">Blank page</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <!-- Default box -->
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <a  class="btn btn-success" href="initInsertUser.htm"> Add User</a>

                                <div class="box-tools">
                                    <div class="input-group input-group-sm" style="width: 150px;">
                                        <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                                        <div class="input-group-btn">
                                            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover" boder="2">
                                    <thead>

                                    <th>UserId</th>
                                    <th>UserName</th>
                                    <th>PassUser</th>
                                    <th>SexAdmin</th>
                                    <th>Mail</th>
                                    <th>Addresss</th>
                                    <th>UserStatus</th>
                                    <th colspan="3">Action</th>

                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listUser}" var="pro">
                                            <tr>
                                                <td>${pro.userId}</td>
                                                <td>${pro.userName}</td>
                                                <td>${pro.userPassword}</td>
                                                <td>${pro.userSex}</td>
                                                <td>${pro.userEmail}</td>
                                                <td>${pro.userAddress}</td>
                                                <td>${pro.userStatus}</td>

                                                <td> 

                                                    <a class="btn btn-success" href="<%=request.getContextPath()%>/userController/initUpdateUser.htm?userId=${pro.userId}">Update </a>
                                                    <a class="btn btn-success" href="<%=request.getContextPath()%>/userController/deleteUser.htm?userId=${pro.userId}">Delete</a>
                                                </td>

                                            </tr>


                                        </c:forEach>



                                    </tbody>
                                </table>

                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.box -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <jsp:include page="footer.jsp"/>

        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->

        <script src="../js/jquery.min.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/adminlte.min.js"></script>
        <script src="../js/dashboard.js"></script>
        <script src="../tinymce/tinymce.min.js"></script>
        <script src="../tinymce/config.js"></script>
        <script src="../js/function.js"></script>
    </body>
</html>
