<%-- 
    Document   : UpdateHotelService
    Created on : Oct 17, 2020, 11:46:06 PM
    Author     : duchan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Update HotelService</title>
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
              <h3 class="box-title" style="font-weight: bold">Update HotelService </h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
       <f:form action="updateHotelservice.htm" commandName="hotelserviceUp" method ="POST">
            <table border="1">
                <tr>
                    <td><label for="HotelService Id">HotelService Id</label></td>
                    <td class="index"><f:input path="hotelServiceId" placeholder="Enter HotelService ID"/></td>
                <tr>
                    <td><label for="Hotel Id">Hotel Id</label></td>
                    <td class="index"><f:input path="hotel.hotelId" placeholder="Enter Hotel ID"/></td>
                </tr>
                <tr>
                    <td><label for="Service Id">Service Id</label></td>
                    <td><f:input path="servicee.serviceId" placeholder="Enter Service ID"/></td>
                </tr>
                <tr>
                    <td><label for="Hotel Price">Price</label></td>
                    <td class="index"><f:input path="price" placeholder="Enter Price"/></td>
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