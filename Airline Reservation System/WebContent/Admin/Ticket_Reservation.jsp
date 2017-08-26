<html>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="images/favicon_1.ico">

        <title>Ubold - Responsive Admin Dashboard Template</title>
        

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/core.css" rel="stylesheet" type="text/css" />
        <link href="css/components.css" rel="stylesheet" type="text/css" />
        <link href="css/icons.css" rel="stylesheet" type="text/css" />
        <link href="css/pages.css" rel="stylesheet" type="text/css" />
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />

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
        </script>

        
    </head>


    <body class="fixed-left">

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

                                <h4 class="page-title">Ticket_Reservation</h4>
                               
                            </div>
                        </div>
                        
                        <div class="row">
							
							
							<div class="col-lg-6">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Ticket_Reservation</b></h4>
									<p class="text-muted font-13 m-b-30">
	                                    Your awesome text goes here.
	                                </p>
	                                
									<form class="form-horizontal" action="makeReservation.jsp" method="post" role="form"  data-parsley-validate novalidate>
										
										
										<input type="hidden" name="flag" value="insert"/>
										
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Source</label>
											<div class="col-sm-7">
												<select name="source" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true" value="Type or Select from List"/>
												<option value="" selected="">Source</option>
												<option value="AMD">Ahmedabad,India(AMD)</option>
												<option value="MAA">Chennai,India(MAA)</option>
												<option value="GOI">Goa,India(GOA)</option>
												<option value="HYD">Hyderabad,India(HYD)</option>
												<option value="CCU">Kolkata,India(CCU)</option>
												<option value="BOM">Mumbai,India(BOM)</option>
												<option value="DEL">New Delhi,India(DEL)</option>
												<option value="PNQ">Pune,India(PNQ)</option>
												</select>
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Destination</label>
											<div class="col-sm-7">
												<select name="destination" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
													<option value="" selected="">Destination</option>
													<option value="AMD">Ahmedabad,India(AMD)</option>
													<option value="MAA">Chennai,India(MAA)</option>
													<option value="GOI">Goa,India(GOA)</option>
													<option value="HYD">Hyderabad,India(HYD)</option>
													<option value="CCU">Kolkata,India(CCU)</option>
													<option value="BOM">Mumbai,India(BOM)</option>
													<option value="DEL">New Delhi,India(DEL)</option>
													<option value="PNQ">Pune,India(PNQ)</option>
												</select>
											</div>
										</div>
															
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Ticket_Number</label>
											<div class="col-sm-7">
												<input type="number" name="tktno" min="0" class="form-control" id="inputEmail3" >
											</div>
										</div>
										
										<div class="form-group">
											<label for="inputEmail3" class="col-sm-4 control-label">Customer_Name</label>
											<div class="col-sm-7">
												<input type="text" name="custname" class="form-control" id="inputEmail3" >
											</div>
										</div>
										<div class="form-group">
											<label for="hori-pass1" class="col-sm-4 control-label">Gender</label>
											<div class="col-sm-7">
												 <table>
												 <tr>
												 <td> <input id="hori-pass1" type="radio" name="gen" required class="form-control" /></td> <td> Male</td>
												 </tr>
												 <tr>
												 <td> <input id="hori-pass1" type="radio" name="gen" required class="form-control"></td> <td> Female</td>
												 </tr>
												 </table>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label">DOB</label>
											<div class="col-sm-7">
												<input type="date" required name="dob" class="form-control" id="hori-pass2" placeholder="dd-mm-yyyy"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Phone_Number</label>
											<!-- <input type="numeric" name="phno" id="" pattern="[789][0-9]{9}" required  placeholder="Mob.No."/> -->
  											<div class="col-sm-7">
												<input type="numeric" name="phno"  required class="form-control" pattern="[789][0-9]{9}" placeholder="Mob.No." id=""/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Address</label>
											<textarea required name="address"  required class="form-control"/> </textarea>
										</div>
	
										<div class="form-group">
											<label class="col-sm-4 control-label">Depart</label>
											<div class="col-sm-7">
												<input type="date" required name="depart" class="form-control" id="hori-pass2" placeholder="dd-mm-yyyy"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Return</label>
											<div class="col-sm-7">
												<input type="date" required name="return" class="form-control" id="hori-pass2" placeholder="dd-mm-yyyy"/>
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Seat_No</label>
											<div class="col-sm-7">
												<input type="numeric" name="seatno" class="form-control"  >
											</div>
										</div>
			
			
			
										<div class="form-group">
											<div class="col-sm-offset-4 col-sm-8">
												<button type="submit" class="btn btn-primary waves-effect waves-light">
													Book
												</button>
												
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
                        
                        
                        

                       
    
    
     

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


        <script src="js/jquery.core.js"></script>
        <script src="js/jquery.app.js"></script>
        
        <script type="text/javascript" src="js/parsley.min.js"></script>
        
        
        <script type="text/javascript">
			$(document).ready(function() {
				$('form').parsley();
			});
		</script>


	</body>
</html>