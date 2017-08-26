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
session.setAttribute("tick", s1);
String s2=request.getParameter("chr");
String s3=request.getParameter("r1");
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
s.executeUpdate("INSERT INTO payment(ticket_no,amount,mode) VALUES ('"+s1+"','"+s2+"','"+s3+"')");
if(s3.equals("cc")){
	response.sendRedirect("creditcard1.jsp");
}
else{
	response.sendRedirect("cheque1.jsp");
}
%>

</body>
</html>