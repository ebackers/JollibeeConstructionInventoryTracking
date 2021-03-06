<%@page import="Database.Database"%>
<%@page import="Models.Warehouse"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="scratch/header.html" %>
<%@ include file="topnav.jsp" %>
<%
    if(user!=null){
%>
<%@ include file="leftnav.jsp" %>

<script type="text/javascript">
    function redirect(id){
        location.href = "Warehouse?id=" + id;
    }
</script>
<%
    ArrayList<Warehouse> warehouseList = (ArrayList<Warehouse>) request.getSession().getAttribute("warehouses");
    Warehouse warehouse;
%>

<div id="page-wrapper">

            <div class="container-fluid">
                
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                View Warehouse List
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="blank-page.jsp">Warehouses</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-edit"></i> View Warehouse List
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- Page Content -->

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th style="width: 100%;">Warehouse Name</th>
                                            <th style="text-align: right;">Location</th>
                                        </tr>
                                    </thead>
                                    <tbody id="warehouseTableBody">

                                        <%
                                            for (int i = 0; i < warehouseList.size(); i++) {
                                                warehouse = warehouseList.get(i);
                                        %>
                                        <tr>
                                            <td><%=(i + 1)%></td>
                                            <td><button type="button" class="btn btn-link name" onclick = "redirect(<%= warehouse.getWarehouseID()%>)"><%=warehouse.getName()%></button></td>
                                            <td style="text-align: right;"><%=warehouse.getLocation()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div><!-- end of .table-responsive -->

                        </div><!-- end of .col-lg-12 -->

                    </div><!-- end of .row -->

                    <div class="modal fade" id="warehousesmodal" tabindex="-1" role="dialog" aria-labelledby="messageModal">
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

        <%@ include file="scratch/footer.html"%>
<%
        } //else response.sendRedirect("index.jsp");
%>