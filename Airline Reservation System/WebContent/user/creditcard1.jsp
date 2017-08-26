<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/1.jpg">
	<link rel="icon" type="image/png" href="assets/img/1.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>CreditCardDetails</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-kit.css" rel="stylesheet"/>
</head>
<body>
	<% String q1 =(String)session.getAttribute("name");%>

<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll ">
	<div class="container" style="opacity: 0.82;width: 90%">
        <div class="navbar-header">
	    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	    	</button>

	    	<a href="index.jsp">
	        	<div class="logo-container">
	                <div style="opacity:1; background: none;">
	                    <img src="assets/img/ICONCRAZE-COM-Airplane-Icon-PNG-1-512x512.png" height="70px" width="70px" alt="Airlife" rel="tooltip" title="Airline Reservation System" data-placement="bottom" data-html="true">
	                		<div style="margin-top: -57px; margin-left:50px; font-size: 18px; color: #00BFFF; class="title">
	                			<h3 style="font-family:Arial Rounded MT Bold";><i>Air-Life</i></h3>
	                   		</div>
	                </div>
	                
				</div>
	      	</a>

	    </div>

	    <div class="collapse navbar-collapse " id="navigation-index"  style="color: black; margin-top: 15px; ">
	    	<ul class="nav navbar-nav navbar-right ">
				<li>
					<a href="login1.jsp" style="font-size: 13px;">
						<i class="material-icons" >person</i> Welcome<br><%=q1 %>
					</a>
				</li>
				<li>
					<a href="#" style="font-size: 13px;">
						<i class="material-icons">call</i> Contact
					</a>
				</li>
				<!--<li>
					<a rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com/CreativeTim" target="_blank" class="btn btn-white btn-simple btn-just-icon">
						<i class="fa fa-twitter"></i>
					</a>
				</li>
				<li>
					<a rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/CreativeTim" target="_blank" class="btn btn-white btn-simple btn-just-icon">
						<i class="fa fa-facebook-square"></i>
					</a>
				</li>
				<li>
					<a rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com/CreativeTimOfficial" target="_blank" class="btn btn-white btn-simple btn-just-icon">
						<i class="fa fa-instagram"></i>
					</a>
				</li>-->

	    	</ul>
	    </div>

	</div>
</nav>


	<div class="wrapper">
			<div class="section section-full-screen section-signup" style="background-image: url('assets/img/article-0-19A65FB300000578-639_964x656.jpg'); background-size: cover; background-position: top center; min-height: 890px;">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="card card-signup" style="margin-top: 120px;">
								<form class="form" action="creditcard2.jsp" >
									<div class="header header-primary text-center" style="text-align: center;">
										<div class="social-line" style="float: left; margin-left: 55px;">
											
										</div>
										<h4 style="width: 70%; margin-left:30%; padding-right: 80px;" >Credit_Card Details</h4>
									</div>

									<div class="content">
										<div class="input-group">
											<span class="input-group-addon">
												<i class=" fa fa-ticket"></i>
											</span>
											<%String s1 = (String)session.getAttribute("tick"); %>
											<input type="text" value=<%=s1 %> name="tkt" class="form-control" >
										</div>

										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">credit_card</i>
											</span>
											<input type="text" name="ct" placeholder="Card type..." class="form-control" />
										</div>
										

										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">credit_card</i>
											</span>
											<input type="numeric" name="cn" placeholder="Card number..." class="form-control" />
										</div>
										
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">person</i>
											</span>
											<input type="text" name="hn" placeholder="Holder name..." class="form-control" />
										</div>
										
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">date_range</i>
											</span>
											<input type="date" name="exp" placeholder="Expiry Date..." class="form-control" />
										</div>
										
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">business</i>
											</span>
											<input type="text" name="bname" placeholder="Bank name..." class="form-control" />
										</div>
										
									</div>
									
									<div class="text-right">
										<input type="submit" value="Pay" class="btn btn-simple btn-primary btn-lg"/>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
</body>
	<script src="assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/js/material.min.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

	<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
	<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="assets/js/material-kit.js" type="text/javascript"></script>
</html>

