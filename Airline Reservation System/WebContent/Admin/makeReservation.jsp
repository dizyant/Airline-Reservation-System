<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>

<% 
String s1 = request.getParameter("source");
String s2 = request.getParameter("destination");
String s3 = request.getParameter("tktno");
String s4 = request.getParameter("custname");
String s5 = request.getParameter("gen");
String s6 = request.getParameter("dob");
String s7 = request.getParameter("phno");
String s8 = request.getParameter("address");
String s9 = request.getParameter("depart");
String s10 = request.getParameter("return");
String s11 = request.getParameter("seatno");
String s12 = request.getParameter("flag");



Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();

if(s12.equals("insert")){
	s.executeUpdate("INSERT INTO reservation(source,destination,ticket_no,cust_name,gender,dob,phone_no,address,dep,ret,seat_no) VALUES('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"')");
	response.sendRedirect("Ticket_Reservation.jsp");
}

else if(s12.equals("edit")){
	String s13 =request.getParameter("id");
	s.executeUpdate("UPDATE reservation SET source='"+s1+"',destination='"+s2+"',ticket_no='"+s3+"',cust_name='"+s4+"',gender='"+s5+"',dob='"+s6+"',phone_no='"+s7+"',address='"+s8+"',dep='"+s9+"',ret='"+s10+"',seat_no='"+s11+"' WHERE id='"+s13+"'");
	response.sendRedirect("searchTicket.jsp");
}
else{
	String s13 =request.getParameter("id");
	s.executeUpdate("DELETE from reservation where id='"+s13+"' ");
	response.sendRedirect("searchTicket.jsp");
}

s.close();
c.close();


%>
</body>
</html>