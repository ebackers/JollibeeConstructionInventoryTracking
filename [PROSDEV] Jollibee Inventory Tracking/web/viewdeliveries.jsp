<%@include file="header.html"%>
    <%@include file="topnav.html"%>
    <%@include file="leftnav.html"%>
    
<!--<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>JCI Inventory Tracking - Deliveries</title>

        Custom CSS
        <link href="css/custom-css.css" rel="stylesheet">

         Bootstrap Core CSS 
        <link href="css/bootstrap.min.css" rel="stylesheet">

         Custom CSS 
        <link href="css/sb-admin.css" rel="stylesheet">

         Custom Fonts 
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

         HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries 
         WARNING: Respond.js doesn't work if you view the page via file:// 
        [if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]

    </head>

    <body>-->
<!--        <div id="wrapper">

             Navigation 
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                 Brand and toggle get grouped for better mobile display 
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Jollibee Construction Inc. - Inventory Tracking</a>
                </div>
                 Top Menu Items 
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                             <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                            </li> 
                            <li>
                                <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                </ul>-->
<!--                 Sidebar Menu Items - These collapse to the responsive navigation menu on small screens 
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a data-target="#suppliersNav" data-toggle="collapse" href="javascript:;"> 
                                Suppliers
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="suppliersNav" class="collapse">
                                <li>
                                    <a href="Supplier"><i class="fa fa-fw fa-file"></i> View Suppliers</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a data-target="#warehousesNav" data-toggle="collapse" href="javascript:;"> 
                                Warehouses
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="warehousesNav" class="collapse">
                                <li>
                                    <a href="Warehouse"><i class="fa fa-fw fa-file"></i> View Warehouses</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a data-target="#itemsNav" data-toggle="collapse" href="javascript:;"> 
                                Items
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="itemsNav" class="collapse">
                                <li>
                                    <a href="Item"><i class="fa fa-fw fa-file"></i> View Items</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a data-target="#deliveriesNav" data-toggle="collapse" href="javascript:;"> 
                                Deliveries
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="deliveriesNav" class="collapse">
                                <li>
                                    <a href="viewdeliveries.html"><i class="fa fa-fw fa-file"></i> View Deliveries</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a data-target="#requestsNav" data-toggle="collapse" href="javascript:;"> 
                                Requests
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="requestsNav" class="collapse">
                                <li>
                                    <a href="Request"><i class="fa fa-fw fa-file"></i> View Requests</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                 /.navbar-collapse 
            </nav>-->

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                View Deliveries
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="blank-page.html">Deliveries</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-sign-in"></i> View Deliveries
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- Pagination Options (top) -->
                    <!-- <div class="row pagination-options">
                        <ul class="pager" style="margin: 0 0 15px;">
                            <li><a class="previous prevPage"><i class="fa fa-arrow-left"></i></a></li>
                            <li class="pageIndicator">Page 1 of 10</li>
                            <li><a class="next nextPage"><i class="fa fa-arrow-right"></i></a></li>
                        </ul>
                    </div> -->

                    <!-- Page Content -->
                    <div class="row">
                        <div style="text-align: right; margin-right: 15px; margin-bottom: 30px;">
                            <button id="add-item" class="btn btn-primary">Add Item</button>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th style="width: 100%;">Delivery Name</th>
                                            <th style="text-align: right;">Type</th>
                                            <th style="text-align: right;">Date Requested</th>
                                            <th style="text-align: right;">Date Received</th>
                                            <th style="text-align: right;">Status</th>
                                            <th style="text-align: right;"></th>
                                        </tr>
                                    </thead>
                                    <tbody id="deliveryTableBody">
                                        <tr>
                                            <td>1</td>
                                            <td><button type="button" class="btn btn-link name">JolliHammer Time!</button></td>
                                            <td style="text-align: right;">incoming</td>
                                            <td style="text-align: right;">06/26/2016</td>
                                            <td style="text-align: right;">-</td>
                                            <td style="text-align: right;">Waiting for Approval</td>
                                            <td style="white-space: nowrap">
                                                <a class="edit-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="cancel">
                                                    <i class="fa fa-times-circle"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><button type="button" class="btn btn-link name">JolliNails Time!</button></td>
                                            <td style="text-align: right;">outcoming</td>
                                            <td style="text-align: right;">06/12/2016</td>
                                            <td style="text-align: right;">06/24/2016</td>
                                            <td style="text-align: right;">Finished</td>
                                            <td style="white-space: nowrap">
                                                <a class="edit-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="cancel">
                                                    <i class="fa fa-times-circle"></i>
                                                </a>
                                                <a class="delete-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="delete">
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><button type="button" class="btn btn-link name">JolliWatdawat</button></td>
                                            <td style="text-align: right;">outgoing</td>
                                            <td style="text-align: right;">06/24/2016</td>
                                            <td style="text-align: right;">-</td>
                                            <td style="text-align: right;">Ongoing</td>
                                            <td style="white-space: nowrap">
                                                <a class="edit-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="cancel">
                                                    <i class="fa fa-times-circle"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><button type="button" class="btn btn-link name">JolliHammer Time!</button></td>
                                            <td style="text-align: right;">incoming</td>
                                            <td style="text-align: right;">06/27/2016</td>
                                            <td style="text-align: right;">-</td>
                                            <td style="text-align: right;">Waiting for Approval</td>
                                            <td style="white-space: nowrap">
                                                <a class="edit-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="cancel">
                                                    <i class="fa fa-times-circle"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><button type="button" class="btn btn-link name">JolliNails Time!</button></td>
                                            <td style="text-align: right;">incoming</td>
                                            <td style="text-align: right;">06/27/2016</td>
                                            <td style="text-align: right;">-</td>
                                            <td style="text-align: right;">Waiting for Approval</td>
                                            <td style="white-space: nowrap">
                                                <a class="edit-button" data-toggle="modal"
                                                   data-target="#deliveriesmodal" data-verdict="cancel">
                                                    <i class="fa fa-times-circle"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!-- end of .table-responsive -->

                        </div><!-- end of .col-lg-12 -->

                    </div><!-- end of .row -->

                    <!-- Pagination Options (bottom) -->
                    <!-- <div class="row pagination-options">
                        <div class="col-lg-3" style="text-align: left; margin-bottom: 15px;">
                            <select id="choosePageNumber" class="form-control">
                            </select>
                        </div>
                        
                        <div class="col-lg-6">
                            <ul class="pager" style="margin: 0 0 15px;">
                                <li><a class="previous prevPage"><i class="fa fa-arrow-left"></i></a></li>
                                <li class="pageIndicator">Page 1 of 10</li>
                                <li><a class="next nextPage"><i class="fa fa-arrow-right"></i></a></li>
                            </ul>
                        </div>
                        
                        <div class="col-lg-3" style="text-align: right; margin-bottom: 15px;">
                            <div style="width: 30%; float: left;">
                                <input id="itemsPerPage" class="form-control" type="number" min="1"/> 
                            </div>
                            <div style="width: 70%; float: right;">
                                <button type="button" class="btn btn-default" id="chooseItemsPerPage" style="width: 95%;">Set Items Per Page</button>
                            </div>
                            <div class="clear: both;"></div>
                        </div>
                    </div> -->

                </div>
                <!-- /.container-fluid -->
                
                <div class="modal fade" id="deliveriesmodal" tabindex="-1" role="dialog" aria-labelledby="messageModal">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <h4 class="modal-title" id="modal-message"></h4>
                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <%@ include file="footer.html"%>
