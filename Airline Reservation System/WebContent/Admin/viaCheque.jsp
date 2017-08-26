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


String s1=request.getParameter("tktno");
String s2=request.getParameter("chqno");
String s3=request.getParameter("chqdate");
String s4=request.getParameter("bankname");

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
s.executeUpdate("INSERT INTO chequedetails(ticket_no,cheque_no,cheque_date,bank_name) VALUES ('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
s.close();
c.close();

%>
</body>
</html>