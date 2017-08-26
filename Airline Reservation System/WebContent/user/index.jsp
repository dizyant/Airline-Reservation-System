<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<script src="jquery.js">
	</script>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/1.jpg">
	<link rel="icon" type="image/png" href="assets/img/1.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Air-Life</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-kit.css" rel="stylesheet"/>
    <link href="material-design-iconic-font/css/material-design-iconic-font.css" rel="stylesheet" />
    <link href="material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" />
</head>

<body class="index-page">
<!-- Navbar -->
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

<div class="wrapper">
	<div class="header " style="background-image: url('assets/img/Download-Airplane-Sunset-Background.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="brand" style="color: black;">
						<h2> Airline Reservation System</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="main main-raised">	
		<div class="section section-basic" style="height: 360px;">
	    	<div class="container" style="font-size: 16px;">
	    		<div id="checkRadios">
	    			<form action="displayFlight.jsp">
				    <div class="row">
	        			<div class="col-sm-3" style="margin-top: 90px;color: #7a0099;">
     						<input style="height: 15px;width: 15px;color: #7a0099;" type="radio" value="oneway" name="optionsRadios" id="r1"/>
								
									One Way
								
							<br>
							<br>
							<input style="height: 15px;width: 15px; margin-top: 25px;" type="radio" value="return" name="optionsRadios" id="r2"/>
								
									Return
								

	        			</div>
	        			
	        			<div class="col-sm-3">
		                    <div class="title">
		                        <h3>Where <i class="material-icons">place</i></h3>
							</div>
							
							<br>
							
							<div class="row" style="width: 90%; margin-left: 5%;">
								<select style="color: #7a0099" name="source">
									<option value="" >Source</option>
									<option value="AMD" style="color:black;">Ahmedabad,India(AMD)</option>
									<option value="MAA" style="color:black;">Chennai,India(MAA)</option>
									<option value="GOI" style="color:black;">Goa,India(GOA)</option>
									<option value="HYD" style="color:black;">Hyderabad,India(HYD)</option>
									<option value="CCU" style="color:black;">Kolkata,India(CCU)</option>
									<option value="BOM" style="color:black;">Mumbai,India(BOM)</option>
									<option value="DEL" style="color:black;">New Delhi,India(DEL)</option>
									<option value="PNQ" style="color:black;">Pune,India(PNQ)</option>
                        		</select>
                        	</div>

                        	<br>
                        	

                        	<div class="row" style="clear: left; width: 90%; margin-left: 5%; margin-top: 25px;">
	                           	<select style="color: #7a0099" name="destination">
	                               	<option value="" >Destination</option>
									<option value="AMD" style="color:black;">Ahmedabad,India(AMD)</option>
									<option value="MAA" style="color:black;">Chennai,India(MAA)</option>
									<option value="GOI" style="color:black;">Goa,India(GOA)</option>
									<option value="HYD" style="color:black;">Hyderabad,India(HYD)</option>
									<option value="CCU" style="color:black;">Kolkata,India(CCU)</option>
									<option value="BOM" style="color:black;">Mumbai,India(BOM)</option>
									<option value="DEL" style="color:black;">New Delhi,India(DEL)</option>
									<option value="PNQ" style="color:black;">Pune,India(PNQ)</option>
		                        </select>
                             	</li>
                          	</ul>
                        	</div>
	                    </div> 
	                  

	                    <div class="col-sm-3"> 
	                    	<div class="title">
	                    		<h3>When <i class="material-icons">today</i></h3>
	                    	</div>
	                    	<div class="row"  >
	                    		<div style="float: left; color:#7a0099; font-size: 11.5px;margin-left: 9%; margin-top: 5px;">
	                    			<h5> Depart :</h5>
	                    		</div>
	                    		<div class="row" style="width: 46.5%;margin-left: 28%; margin-top: 4px;">
	                    			<input type="date" name="depart" class="form-control" placeholder="Depart" />
	                    		</div>
	                    	</div>
	                    	<br>
	                    	<div class="row" id="d1">
	                    		<div id="" style="float: left; color:#7a0099; font-size: 11.5px;margin-left: 9%; margin-top: 5px;">
	                    			<h5> Return :</h5>
	                    		</div>
	                    		<div id="re" class="row" style="width: 46.5%;margin-left: 28%; margin-top: 4px;">
	                    			<input type="date" id="re1" name="return" id="" class="form-control" placeholder="Return" />
	                    		</div>
	                    	</div>
	                    </div> 

	                    <div class="col-sm-3">
	                    	<div class="title">
	                    		<h3>Who <i class="material-icons">person</i></h3>
	                    	</div>

	                    	<br>

	                    	<div class="row" style="margin-left: 5%; width: 80%">
	                    		<select style="color: #7a0099 ">
									<option value="" > 	Adult</option>
									<option value="1Adult" style="color:black;">1 Adult</option>
									<option value="2Adult" style="color:black;">2 Adult</option>
									<option value="3Adult" style="color:black;">3 Adult</option>
									<option value="4Adult" style="color:black;">4 Adult</option>
									<option value="5Adult" style="color:black;">5 Adult</option>
                        		</select>
                        	</div>

                        	<br>

                        	<div class="row" style="margin-left: 5%;">
                        		<select style="color: #7a0099">
									<option value="" >	Children</option>
									<option value="1Children" style="color:black;">1 Children</option>
									<option value="2Children" style="color:black;">2 Children</option>
									<option value="3Children" style="color:black;">3 Children</option>
									<option value="4Children" style="color:black;">4 Children</option>
									<option value="5Children" style="color:black;">5 Children</option>
                        		</select>
                        	</div>

                        	<br>

                        	<div class="row" style="margin-left: 5%;">
                        		<select style="color: #7a0099">
									<option value="">	Infant</option>
									<option value="1Infant" style="color:black;">1 Infant</option>
									<option value="2Infant" style="color:black;">2 Infant</option>
									<option value="3Infant" style="color:black;">3 Infant</option>
                        		</select>
                        	</div>
	                    </div>
	                     <div class="col-sm-4" style="margin-left: 450px; margin-top: 20px;">
	                    		<input type="submit" value="Search Flights" class="btn btn-primary btn-round"/>
	                    </div>	
	                                                        
	    			</div>
	    			</form>     
				</div>
			</div>
		</div>
</div>

<script >
			$("#r1").click(
				function(){
				
						$("#d1").css("opacity","0.3");
						$("#re1").attr("disabled","disabled");
						//$("#d2").children().attr('disabled',true);
				
				}
				);

			$("#r2").click(
				function(){
				
						$("#d1").css("opacity","1");
						$("#re1").removeAttr("disabled");
						//$("#d2").children().attr('disabled',false);
				
				}
				);

	
</script>

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
