<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("tkt");
String s2=request.getParameter("cn");
String s3=request.getParameter("cdate");
String s4=request.getParameter("bn");

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
s.executeUpdate("INSERT INTO chequedetails(ticket_no,cheque_no,cheque_date,bank_name) VALUES ('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
response.sendRedirect("sendmail.jsp");


%>

</body>
</html>