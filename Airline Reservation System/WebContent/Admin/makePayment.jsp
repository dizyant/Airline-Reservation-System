<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*"%>

<% 
String s1 = request.getParameter("tktno");
String s2 = request.getParameter("amount");
String s3 = request.getParameter("mode");



Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
s.executeUpdate("INSERT INTO payment(ticket_no,amount,mode) VALUES('"+s1+"','"+s2+"','"+s3+"')");
s.close();
c.close();

if(s3.equals("cheque")){
	response.sendRedirect("Cheque_Details.jsp");
}
else if(s3.equals("creditcard")){
	response.sendRedirect("CreditCard_Details.jsp");
}
else{
	response.sendRedirect("Payment_Details.jsp");
}
%>

</body>
</html>