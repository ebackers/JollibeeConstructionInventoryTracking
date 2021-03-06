<%@page import="Models.User"%>
<%    
    User ucheck = null;
    try{
        ucheck = (User)request.getSession().getAttribute("loggedUser");
    } catch (Exception e){
        response.sendRedirect("index.jsp");
    }
    if(ucheck!=null){
        int type = (int) request.getSession().getAttribute("type");
%>
<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->

                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <%
                            if(type==0){
                        %>
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
                        <%
                            }
                            if(type==1){
                        %>
                        <li>
                            <a data-target="#suppliersNav" data-toggle="collapse" href="javascript:;"> 
                                Suppliers
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="suppliersNav" class="collapse">
                                <li>
                                    <a href="Supplier"><i class="fa fa-fw fa-file"></i> View Suppliers</a>
                                    <a href="addsupplier.jsp"><i class="fa fa-fw fa-file"></i> Add Supplier</a>
                                </li>
                            </ul>
                        </li>
                        <% 
                            } 
                            if (type!=3){
                        %>
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
                        <% 
                            }
                            if(type==0){
                        %>
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
                        <% 
                            }
                            if(type==1){
                        %>
                        <li>
                            <a data-target="#itemsNav" data-toggle="collapse" href="javascript:;"> 
                                Items
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="itemsNav" class="collapse">
                                <li>
                                    <a href="Item"><i class="fa fa-fw fa-file"></i> View Items</a>
                                    <a href="additem.jsp"><i class="fa fa-fw fa-file"></i> Add Item</a>
                                </li>
                            </ul>
                        </li>
                        <% 
                            }
                            if(type==2){
                        %>
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
                        <% 
                            }
                            if (type!=3){
                        %>
                        <li>
                            <a data-target="#deliveriesNav" data-toggle="collapse" href="javascript:;"> 
                                Deliveries
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="deliveriesNav" class="collapse">
                                <li>
                                    <a href="Delivery"><i class="fa fa-fw fa-file"></i> View Deliveries</a>
                                </li>
                            </ul>
                        </li>
                        <% 
                            }
                            if(type != 3){
                        %>
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
                        <% 
                            }
                            if (type==0){
                        %>
                        <li>
                            <a data-target="#usersNav" data-toggle="collapse" href="javascript:;"> 
                                Users
                                <b class="caret" style="float: right; margin-top: 10px;"></b>
                            </a>
                            <ul id="usersNav" class="collapse">
                                <li>
                                    <a href="User"><i class="fa fa-fw fa-file"></i> View Users</a>
                                    <a href="adduser.jsp"><i class="fa fa-fw fa-file"></i> Add Users</a>
                                </li>
                            </ul>
                        </li>
                        <% 
                            }
                        %>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
<%
    } else response.sendRedirect("index.jsp");
%>