<%-- 
    Document   : NewComment
    Created on : Oct 16, 2020, 4:46:49 PM
    Author     : duchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Comment</title>
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
        
            <style type="text/css">
        table, th, td{
            border:1px solid black;
        }
        .index{
            width: auto;
            
        }
        table{
            width:100%;
            height:400px;
            border-collapse:collapse;
        }
    </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <jsp:include page="header.jsp"/>
            
  <jsp:include page="slider.jsp"/>
            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            

            <!-- =============================================== -->

            

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
     <div class="col-md-8">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title" style ="font-weight: bold" >New Comment</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
       <f:form action="insertComment.htm" commandName="commentNew">
<!--            <table border="1">
                <tr>
                    <td>Comment Id</td>
                    <td><f:input path="commentId"/></td>
                </tr>
                <tr>
                    <td>Blog Id</td>
                    <td><f:input path="blog.blogId"/></td>
                </tr>
                <tr>
                    <td>UserId</td>
                    <td><f:input path="userr.userId"/></td>
                </tr>
                <tr>
                    <td>Comment Content</td>
                    <td><f:input path="commentContent"/></td>
                </tr>
                <tr>
                    <td>Date Created</td>
                    <td><f:input path="dateCreated"/></td>
                </tr>
                <tr>
                    <td>Parent ID</td>
                    <td><f:input path="parentId"/></td>
                </tr>
                
                <tr>
                    <td colspan="4"><input type="submit" value="Add"/></td>
                </tr>
            </table>-->
                
        <table border="1">
                <tr>
                    <td><label for="Comment Id">Comment Id</label></td>
                    <!--<td><f:input path="commentId"/></td>-->
                    <td class="index"><f:input path="commentId" type="text" id="Comment Id" placeholder="Enter ID"/></td>                    
                </tr>
                <tr>
                    <td><label for="Blog ID">Blog Id</label></td>
                    <!--<td><f:input path="blog.blogId"/></td>-->
                    <td class="index"><f:input path="blog.blogId" type="text" id="Blog Id" placeholder="Enter Blog Id"/></td>
                </tr>
                <tr>
                    <td><label for="User Id">User Id</label></td>
                    <!--<td>Blog Content</td>-->
                    <!--<td><f:input path="userr.userId"/></td>-->
                    <td class="index"><f:input path="userr.userId" type="text" id="User Id" placeholder="Enter User Id"/></td>
                </tr>
                <tr>
                    <td><label for="Comment Content">Comment Content</label></td>
                    <!--<td>Date Created</td>-->
                    <!--<td><f:input path="commentContent"/></td>-->
                    <td class="index"><f:input path="commentContent" type="text" id="Comment Content" placeholder="Enter Comment Content"/></td>
                </tr>
                <tr>
                    <td><label for="Date Created">Date Created</label></td>
                    <!--<td>Blog Status</td>-->
                    <!--<td><f:input path="dateCreated"/></td>-->
                    <td class="index"><f:input path="dateCreated" type="text" id="Date Created" placeholder="Date Created"/></td>
                </tr>
                <tr>
                    <td><label for="Parent Id">Parent Id</label></td>
                    <!--<td>Blog Status</td>-->
                    <!--<td><f:input path="parentId"/></td>-->
                    <td class="index"><f:input path="parentId" type="text" id="Parent Id" placeholder="Parent Id"/></td>
                </tr>                
                
                <tr>
                    <td colspan="4"><input type="submit" style="font-weight: bold" value="Add"/></td>
                </tr>
            </table>                
                
        </f:form>
          </div>
       
          <!-- /.box -->

        </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
            
            
            
            <!-- Content Wrapper. Contains page content -->
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