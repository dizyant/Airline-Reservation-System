<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="images/favicon_1.ico">

    <title>Ubold - Responsive Admin Dashboard Template</title>

    <!-- DataTables -->
    <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>


    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/core.css" rel="stylesheet" type="text/css"/>
    <link href="css/components.css" rel="stylesheet" type="text/css"/>
    <link href="css/icons.css" rel="stylesheet" type="text/css"/>
    <link href="css/pages.css" rel="stylesheet" type="text/css"/>
    <link href="css/responsive.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <script src="js/modernizr.min.js"></script>
<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-69506598-1', 'auto');
          ga('send', 'pageview');
          
          
          var table= document.getElementById("datatable-buttons");
          var row = table.insertRow
        </script>


</head>

<body class="fixed-left">
<%@page import="java.sql.*" %>
<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    <jsp:include page="Header.jsp"></jsp:include>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <jsp:include page="Sidebar.jsp"></jsp:include>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-group pull-right m-t-15">
                            <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Settings <span class="m-l-5"><i class="fa fa-cog"></i></span></button>
                            <ul class="dropdown-menu drop-menu-right" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>

                        <h4 class="page-title">Search_Customer</h4>
                       
                    </div>
                </div>


                


                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
                           
							<%
							Class.forName("com.mysql.jdbc.Driver");
							Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
							Statement s = c.createStatement();
							ResultSet r = s.executeQuery("SELECT * from customerdetails");
							
							%>
							
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Customer_Id</th>
                                    <th>Customer_Name</th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th>Phone_Number</th>
                                    <th>Address</th>
                                    <th>Action</th>
                                </tr>
                                
                                <%
                                String flag = "flag";
                                %>
								<%
									while(r.next()){
								%>
								<tr>
									<td><% int i1=r.getInt("cust_id");
										out.print(i1);%></th>
									<td><% String s1=r.getString("cust_name");
										out.print(s1);%></td>
									<td><% String s2=r.getString("gender");
										out.print(s2);%></td>
									<td><% String s3=r.getString("dob");
										out.print(s3);%></td>
									<td><% String i2 = r.getString("phone_no");
										out.print(i2);%></td>
									<td><% String s4 = r.getString("address");
										out.print(s4);%></td>	
									<td><a href="editCustomer.jsp?id=<%=i1%>">EDIT</a></td>
									<td><a href="insertCustomer.jsp?id=<%=i1%>&flag=<%=flag%>">DELETE</a></td>										
								<% 	}%>
								</tr>
								
							</thead>
                                
                            </table>
                        </div>
                    </div>
                </div>


                


                


                


                


                


                
                <!-- end row -->


            </div> <!-- container -->

        </div> <!-- content -->

       <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <!-- ============================================================== -->
    <!-- End Right content here -->
    <!-- ============================================================== -->


    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <h4 class="text-center">Chat</h4>
        <div class="contact-list nicescroll">
            <ul class="list-group contacts-list">
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-1.jpg" alt="">
                        </div>
                        <span class="name">Chadengle</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-2.jpg" alt="">
                        </div>
                        <span class="name">Tomaslau</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-3.jpg" alt="">
                        </div>
                        <span class="name">Stillnotdavid</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-4.jpg" alt="">
                        </div>
                        <span class="name">Kurafire</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-5.jpg" alt="">
                        </div>
                        <span class="name">Shahedk</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-6.jpg" alt="">
                        </div>
                        <span class="name">Adhamdannaway</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-7.jpg" alt="">
                        </div>
                        <span class="name">Ok</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-8.jpg" alt="">
                        </div>
                        <span class="name">Arashasghari</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-9.jpg" alt="">
                        </div>
                        <span class="name">Joshaustin</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="images/avatar-10.jpg" alt="">
                        </div>
                        <span class="name">Sortino</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
            </ul>
        </div>
    </div>
    <!-- /Right-bar -->


</div>
<!-- END wrapper -->

<script>
    var resizefunc = [];
</script>

<!-- jQuery  -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/detect.js"></script>
<script src="js/fastclick.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.blockUI.js"></script>
<script src="js/waves.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>

<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.js"></script>

<script src="js/dataTables.buttons.min.js"></script>
<script src="js/buttons.bootstrap.min.js"></script>
<script src="js/jszip.min.js"></script>
<script src="js/pdfmake.min.js"></script>
<script src="js/vfs_fonts.js"></script>
<script src="js/buttons.html5.min.js"></script>
<script src="js/buttons.print.min.js"></script>
<script src="js/dataTables.fixedHeader.min.js"></script>
<script src="js/dataTables.keyTable.min.js"></script>
<script src="js/dataTables.responsive.min.js"></script>
<script src="js/responsive.bootstrap.min.js"></script>
<script src="js/dataTables.scroller.min.js"></script>
<script src="js/dataTables.colVis.js"></script>
<script src="js/dataTables.fixedColumns.min.js"></script>

<script src="js/datatables.init.js"></script>


<script src="js/jquery.core.js"></script>
<script src="js/jquery.app.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        $('#datatable').dataTable();
        $('#datatable-keytable').DataTable({keys: true});
        $('#datatable-responsive').DataTable();
        $('#datatable-colvid').DataTable({
            "dom": 'C<"clear">lfrtip',
            "colVis": {
                "buttonText": "Change columns"
            }
        });
        $('#datatable-scroller').DataTable({
            ajax: "assets/plugins/datatables/json/scroller-demo.json",
            deferRender: true,
            scrollY: 380,
            scrollCollapse: true,
            scroller: true
        });
        var table = $('#datatable-fixed-header').DataTable({fixedHeader: true});
        var table = $('#datatable-fixed-col').DataTable({
            scrollY: "300px",
            scrollX: true,
            scrollCollapse: true,
            paging: false,
            fixedColumns: {
                leftColumns: 1,
                rightColumns: 1
            }
        });
    });
    TableManageButtons.init();

</script>

</body>
</html>