<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String s1 = request.getParameter("fliname");
String s2 = request.getParameter("source");
String s3 = request.getParameter("destination");
String s4 = request.getParameter("departdate");
String s5 = request.getParameter("returndate");
String s6 = request.getParameter("flicharge");
String s7 = request.getParameter("seat");
String s8 = request.getParameter("flag");
String a1= "09:00:00";
String a2="11:00:00";

System.out.println(s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8);
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();

if(s8.equals("insert")){
s.executeUpdate("INSERT INTO flights (flight_name,source,destination,dep,dtime,ret,rtime,charge) VALUES('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+a1+"','"+s5+"','"+a2+"','"+s6+"')");
response.sendRedirect("Flight_Details.jsp");
}

else if(s8.equals("edit")){
	String s9=request.getParameter("id");
	s.executeUpdate("UPDATE flights SET flight_name='"+s1+"',source='"+s2+"',destination='"+s3+"',dep='"+s4+"',ret='"+s5+"',charge='"+s6+"' WHERE id='"+s9+"'");
	response.sendRedirect("search_flight.jsp");
}
else{
String s0=request.getParameter("id");
s.executeUpdate("DELETE from flights WHERE id='"+s0+"'");
response.sendRedirect("search_flight.jsp");

}


s.close();
c.close();
//response.sendRedirect("search_flight.jsp");



%>
</body>
</html>