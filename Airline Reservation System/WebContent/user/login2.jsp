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
String s1 = request.getParameter("email");
String s2 = request.getParameter("pswd");
String check ="false";

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();
ResultSet r = s.executeQuery("SELECT * FROM customerdetails WHERE address='"+s1+"' AND password='"+s2+"'");
	while(r.next()){
			check="true";
			session.setAttribute("userRs", r);
			session.setAttribute("name", r.getString("cust_name"));
			session.setAttribute("ph", r.getString("phone_no"));
			session.setAttribute("add", r.getString("address"));
			response.sendRedirect("myaccount.jsp");
	}
	if(check.equals("false")){
		response.sendRedirect("login1.jsp");
	}%>
</body>
</html>