<%@page import="org.apache.el.lang.ELSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/1.jpg">
	<link rel="icon" type="image/png" href="assets/img/1.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>LogIn</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-kit.css" rel="stylesheet"/>
    <style>
    	th,td{
    		text-align:center;
    	}
    </style>
</head>
<body>
<%@page import="java.sql.*" %>

<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll" style="background: none;">
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
						<i class="material-icons" >person</i> LogIn
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
<%
String a1 = request.getParameter("source");
String a2 = request.getParameter("destination");
String s4 = request.getParameter("depart");
session.setAttribute("dep", s4);
String s6 = request.getParameter("return");
session.setAttribute("ret", s6);
String s9 = request.getParameter("optionsRadios");

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
ResultSet r = s.executeQuery("SELECT * FROM flights WHERE (source='"+a1+"' AND destination='"+a2+"') ");

%>
	<div class="wrapper">
			<div class="section section-full-screen section-signup" style="background-image: url('assets/img/bg2.jpeg'); background-size: cover; background-position: top center;min-height: 1230px;">
				<div class="container">
					<div class="row">
						<div style="margin-left:550px;">
						<h3><b>FLIGHTS</b>  </h3>
						</div>
					</div>
					<% if(s9.equals("oneway")){%>
					<div class="row" style="font-size:18px;margin-top:50px;">
						<div style="margin-left:80px; color:white;">
						<h4> Depart</h4>
						</div>
						<table   border="2px solid black" style="background-color: white; margin-left:70px; height:400px;width:1050px;">
							<th>Flight Name</th>
							<th>Source</th>
							<th >Destination</th>
							<th colspan=2>Depart</th>
							<th>Charge</th>
							<th></th>
							
							
							<% while(r.next()){
							String i1 = r.getString("id");%>
							<tr>
							<% String s1 = r.getString("flight_name");	%>
							<td><%out.print(s1); %></td>
								<% String s2 = r.getString("source");%>
							<td><%out.print(s2); %></td>
								<% String s3 = r.getString("destination");%>
							<td><%out.print(s3); %></td>
								  
							<td><%out.print(s4); %></td>
								<% String s5 = r.getString("dtime");%>
							<td><%out.print(s5); %></td>
								
					<!--  	<td><%out.print(s6); %></td>
								<% String s7 = r.getString("rtime");%> 
							<td><%out.print(s7); %></td> -->
								<% String s8 = r.getString("charge");%>
							<td><%out.print(s8); %></td>
							<td> <span class="input-group-addon" style="background-color:white; border:0px;size:15px;">
											
											<a href="login1.jsp?id=<%= i1 %>"><i class="material-icons fa-rotate-90">local_airport</i></a>
								</span></td>
							</tr>
							<%} %>
						</table>
					</div>
					<%} 
					
				else if(s9.equals("return")){%>
					<div class="row" style="font-size:18px;margin-top:50px;">
						<h4> Depart</h4>
						<table   border="2px solid black" style="background-color: white; margin-left:70px; height:400px;width:1050px;">
							<th>Flight Name</th>
							<th>Source</th>
							<th >Destination</th>
							<th colspan=2>Depart</th>
							<th>Charge</th>
							<th></th>
							
							
							<% while(r.next()){
							String i1 = r.getString("id");%>
							<tr>
							<% String s1 = r.getString("flight_name");	%>
							<td><%out.print(s1); %></td>
								<% String s2 = r.getString("source");%>
							<td><%out.print(s2); %></td>
								<% String s3 = r.getString("destination");%>
							<td><%out.print(s3); %></td>
								  
							<td><%out.print(s4); %></td>
								<% String s5 = r.getString("dtime");%>
							<td><%out.print(s5); %></td>
								
					<!--  	<td><%out.print(s6); %></td>
								<% String s7 = r.getString("rtime");%> 
							<td><%out.print(s7); %></td> -->
								<% String s8 = r.getString("charge");%>
							<td><%out.print(s8); %></td>
							<td> <span class="input-group-addon" style="background-color:white; border:0px;size:15px;">
											
								<a href="login1.jsp?id=<%= i1 %>"><i class="material-icons fa-rotate-90">local_airport</i></a>
								</span></td>
							</tr>
							<%} %>
						</table>
					</div>
					
					
					<%
					Statement st = c.createStatement();
					ResultSet r1 = st.executeQuery("SELECT * FROM flights WHERE (source='"+a2+"' AND destination='"+a1+"') ");
					%>
					<div class="row" style="font-size:18px;margin-top:50px;">
						<h4> Return</h4>
						<table   border="2px solid black" style="background-color: white; margin-left:70px; height:400px;width:1050px;">
							<th>Flight Name</th>
							<th>Source</th>
							<th >Destination</th>
							<th colspan=2>Depart</th>
							<th>Charge</th>
							<th></th>
							
							
							<% while(r1.next()){
							String i1 = r1.getString("id");%>
							<tr>
							<% String s1 = r1.getString("flight_name");	%>
							<td><%out.print(s1); %></td>
								<% String s2 = r1.getString("source");%>
							<td><%out.print(s2); %></td>
								<% String s3 = r1.getString("destination");%>
							<td><%out.print(s3); %></td>
								  
						<!--  	<td><%out.print(s4); %></td>
								<% String s5 = r1.getString("dtime");%>
							<td><%out.print(s5); %></td>-->
								
						 	<td><%out.print(s6); %></td>
								<% String s7 = r1.getString("rtime");%> 
							<td><%out.print(s7); %></td> 
								<% String s8 = r1.getString("charge");%>
							<td><%out.print(s8); %></td>
							<td> <span class="input-group-addon" style="background-color:white; border:0px;size:15px;">
											
											<a href="login1.jsp?id=<%= i1 %>"><i class="material-icons fa-rotate-90">local_airport</i></a>
								</span></td>
							</tr>
							<%} %>
						</table>
					</div>
					<%} %>
				
					
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