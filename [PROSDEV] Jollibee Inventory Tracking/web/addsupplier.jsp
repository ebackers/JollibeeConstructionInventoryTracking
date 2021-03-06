<%@ page import="Models.Supplier"%>
<%@ include file="scratch/header.html"%>
<%@ include file="topnav.jsp"%>
<%
    if(user!=null){
%>
<%@ include file="leftnav.jsp"%>

<script type ="text/javascript" src="js/jquery.js"></script>
<script type ="text/javascript" src="js/customjs.js"></script>
<script type = "text/javascript" src = "js/Supplier.js"></script>

<%
    String action;
    try {
        action = request.getSession().getAttribute("action").toString();
    } catch (NullPointerException ex){
        action = "add";
    }
    Supplier supplier = new Supplier();
    String label = null;
    if (action.equals("edit")){
        supplier = (Supplier)request.getSession().getAttribute("supplier");
        label = "Edit Supplier";
    } else if (action.equals("add")){
        label = "Add Supplier";
    }
%>
<div id="page-wrapper">

            <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <%=label%>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="blank-page.jsp">Suppliers</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-sign-in"></i>
                                    <%=label%>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- Page Content -->
                    <div id="error" class="alert alert-warning">
                    </div>
                    
                    <div id = "add-suppliers-div" class="row">
                        <div class="col-lg-12">
                            <% 
                                if (action.equals("add")){
                            %>
                            <!--<form class = "add-supplier-form" id="add-suppliers-form" name="add-supplier" method = "POST" onsubmit="return checkInput(-1)">-->
                            <form class = "add-supplier-form" id="add-suppliers-form" name="add-supplier" method = "POST" onsubmit="return addSupplier()">
                                  <div class="form-group">
                                    <label>Name</label>
                                    <input type = "text" id="name" class="form-control" name="name" required>
                                </div><!-- end of .form-group -->

                                <div class="form-group">
                                    <label>Location</label>
                                    <input type = "text" id="location" class="form-control" name="location" required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Number</label>
                                    <input type = "text" id="contactno" class="form-control" name="contactno" required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type = "email" id="emailadd" class="form-control" name="emailadd" required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Contact Person</label>
                                    <input type = "text" id="contactperson" class="form-control" name="contactperson" required>
                                </div><!-- end of .form-group -->
                            <%
                            } else if (action.equals("edit")) {
                            %>
                            <!--<form class = "add-supplier-form" id="add-suppliers-form" name="edit-supplier" method = "POST" onsubmit="return checkInput(-1)">-->
                            <form class = "add-supplier-form" id="add-suppliers-form" name="edit-supplier" method = "POST" onsubmit="return editSupplier(<%=supplier.getSupplierID()%>)">
                                  <div class="form-group">
                                    <label>Name</label>
                                    <input type = "text" id="name" class="form-control" name="name" value = "<%= supplier.getName()%>" required>
                                </div><!-- end of .form-group -->

                                <div class="form-group">
                                    <label>Location</label>
                                    <input type = "text" id="location" class="form-control" name="location"  value = "<%=supplier.getLocation()%>"required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Number</label>
                                    <input type = "tel" id="contactno" class="form-control" name="contactno" value = "<%= supplier.getContactNumber()%>"required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type = "email" id="emailadd" class="form-control" name="emailadd" value = "<%=supplier.getEmailAddress()%>" required>
                                </div><!-- end of .form-group -->
                                
                                <div class="form-group">
                                    <label>Contact Person</label>
                                    <input type = "text" id="contactperson" class="form-control" name="contactperson" value = "<%=supplier.getContactPerson()%>"required>
                                </div><!-- end of .form-group -->
                            <%
                            }
                            %>
                                <input type="submit" class="btn btn-primary" value="<%=label%>">
                            </form>
                        </div>
                    </div>

        <%@ include file="scratch/footer.html"%>
<%
    } //else response.sendRedirect("index.jsp");
%>