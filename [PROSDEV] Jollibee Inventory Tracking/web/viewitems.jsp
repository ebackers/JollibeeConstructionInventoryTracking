<%@page import="Models.Item"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="scratch/header.html" %>
<%@ include file="topnav.jsp" %>
<%
    ArrayList<Item> itemList = (ArrayList<Item>) request.getSession().getAttribute("items");
    Item item;
    int userType = (int)request.getSession().getAttribute("type");
    if(userType<0 || userType>2){
        response.sendRedirect("notfound.jsp");
    } else {
%>
<%@ include file="leftnav.jsp" %>

<script type ="text/javascript">
    function redirect(id) {
        if (id === -1)
            location.href = "HandleItem?action=redirect&type=add";
        else
            location.href = "Item?id=" + id;
    }
    
    function edit(id){
        location.href = "HandleItem?action=redirect&type=edit&id=" + id;
    }
</script>
<script type = "text/javascript" src = "js/jquery.js"></script>
<script type = "text/javascript" src = "js/Item.js"></script>
<div id="page-wrapper">

            <div class="container-fluid">
<!-- Page Heading -->
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            View Item List
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="blank-page.jsp">Items</a>
            </li>
            <li class="active">
                <i class="fa fa-edit"></i> View Item List
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->

<!-- Page Content -->
<div class="row viewitemcontent">

    <% 
        if (userType==1){
    %>
    <div class="row">
        <div style="text-align: right; margin-right: 15px; margin-bottom: 30px;">
            <button id="add-item" class="btn btn-primary" onclick="redirect(-1)">Add Item</button>
        </div>
    </div>
    <% 
        }
    %>

    <div class="col-lg-12">

        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th style="width: 100%;">Item Name</th>
                        <th style="text-align: right;">Unit Measure</th>
                        <th style="text-align: right;"></th>
                    </tr>
                </thead>
                <tbody id="itemTableBody">
                    <%
                        for (int i = 0; i < itemList.size(); i++) {
                            item = itemList.get(i);
                    %>
                    <tr id = "i<%=item.getItemID()%>">
                        <td id ="item-count"><%=(i + 1)%></td>

                        <td><button type="button" class="btn btn-link name" onclick = "redirect(<%=item.getItemID()%>)"><%=item.getName()%></button></td>
                        <td style="text-align: right;"><%=item.getUnit()%></td>
                        <% 
                            if (userType==1){
                        %>
                        <td id = "item-actions" style="white-space: nowrap">
                            <a class="edit-button" onclick="edit(<%=item.getItemID()%>)">
                                <i class="fa fa-edit"></i>
                            </a>
                            <a id = "d<%=item.getItemID()%>-<%=(i + 1)%>" class="delete-item delete-button" data-toggle="modal" 
                               data-target="#itemsmodal" data-verdict="delete">
                                <i class="fa fa-trash-o"></i>
                            </a>
                        </td>
                        <% 
                            }
                        %>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div><!-- end of .table-responsive -->

    </div><!-- end of .col-lg-12 -->

</div><!-- end of .row -->

<div class="modal fade" id="itemsmodal" tabindex="-1" role="dialog" aria-labelledby="messageModal">
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
    }
%>
