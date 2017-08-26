<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/1.jpg">
<link rel="icon" type="image/png" href="assets/img/1.jpg">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>My Account</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/material-kit.css" rel="stylesheet" />
</head>
<body>
	<%@page import="java.sql.*"%>

		<%
	String q1 =(String)session.getAttribute("name");
	String q2 =(String)session.getAttribute("ph");
	String q3 =(String)session.getAttribute("add");
	String q4 =(String)session.getAttribute("fname");
	String q5 =(String)session.getAttribute("source");
	String q6 =(String)session.getAttribute("destination");
	String q7 =(String)session.getAttribute("dep");
	String q8 =(String)session.getAttribute("ret");
	String q9 =(String)session.getAttribute("charge");
	%>
	<nav
		class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll" style="background:none;">
	<div class="container" style="opacity: 0.82; width: 90%">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navigation-index">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a href="index.jsp">
				<div class="logo-container">
					<div style="opacity: 1; background: none;">
						<img
							src="assets/img/ICONCRAZE-COM-Airplane-Icon-PNG-1-512x512.png"
							height="70px" width="70px" alt="Airlife" rel="tooltip"
							title="Airline Reservation System" data-placement="bottom"
							data-html="true">
						<div
							style="margin-top: -57px; margin-left: 50px; font-size: 18px; color: #00BFFF;"title">
							<h3 style="font-family: Arial Rounded MT Bold";>
								<i>Air-Life</i>
							</h3>
						</div>
					</div>

				</div>
			</a>

		</div>

		<div class="collapse navbar-collapse " id="navigation-index"
			style="color: black; margin-top: 15px;">
			<ul class="nav navbar-nav navbar-right ">
				<%-- 			<i class="material-icons">person</i> Welcome<%
					String name = u.getString("cust_name");
					out.print(name);
				%>
	 --%>
				</a>
				</li>
				<li style="font-size: 15px;">
						<i class="material-icons" >person</i> Welcome<br><%=q1 %>
				</li>
				<li><a href="#" style="font-size: 13px;"> <i
						class="material-icons">call</i> Contact
				</a></li>
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

		<div class="section section-full-screen section-signup"
			style="background-image: url('assets/img/article-0-19A65FB300000578-639_964x656.jpg'); background-size: cover; background-position: top center; min-height: 1000px;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="card card-signup">

							<form class="form" action="payment1.jsp">
								<input type="hidden" name="flag" value="insert" />
								<div class="header header-primary text-center"
									style="text-align: center;">
									<h4>Ticket</h4>
									<!--  			<div class="social-line">
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-facebook-square"></i>
										</a>
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-instagram"></i>
										</a>
										<a href="#pablo" class="btn btn-simple btn-just-icon">
											<i class="fa fa-google-plus"></i>
										</a>
										</div> -->
								</div>


								<div class="content">


									<%-- <%
										while (u.next()) {
									%> --%>
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">person_outline</i>
										</span>
										 <input type="text" name="fn"
											value=<%=q1%> class="form-control">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">phone_iphone</i>
										</span> <input type="numeric" value=<%=q2 %>
											name="phno" class="form-control">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">email</i>
										</span> <input type="email" name="email"
											value=<%=q3 %> class="form-control"
											placeholder="Email...">
									</div>
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons fa-rotate-90">local_airport</i>
										</span>
											<input type="text" value=<%=q4 %> name="flight" class="form-control">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">flight_takeoff</i>
										</span>
										<input type="text" name="source" value=<%=q5 %> class="form-control">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">flight_land</i>
										</span>
											<input type="text" name="destination" value=<%=q6 %> class="form-control">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">person_outline</i>
										</span>
											<input type="text" name="dept" value=<%=q7 %> class="form-control">
									</div>

									<%-- <div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">person_outline</i>
										</span>
											<input type="text" name="ret" value=<%=q8 %> class="form-control">
									</div>
 --%>
									<div class="input-group">
										<span class="input-group-addon"> <i
											style="font-size: 18px;" class="fa fa-inr"></i>
										</span>
											<input type="text" name="charge" value=<%=q9 %> class="form-control">
									</div>


								</div>
								<div class="footer text-center">
									<input type="submit" value="Payment"
										class="btn btn-simple btn-primary btn-lg" />
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

