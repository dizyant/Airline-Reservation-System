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
String s1 = request.getParameter("title");
String s2 = request.getParameter("fn");
String s3 = request.getParameter("phno");
String s4 = request.getParameter("dob");
String s5 = request.getParameter("email");
String s6 = request.getParameter("flag");
String s9 = request.getParameter("pswd");

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();

if(s6.equals("insert")){
s.executeUpdate("INSERT INTO customerdetails(cust_name,gender,dob,phone_no,address,password) VALUES('"+s2+"','"+s1+"','"+s4+"','"+s3+"','"+s5+"','"+s9+"')");
s.close();
response.sendRedirect("login1.jsp");
}

else if(s6.equals("edit")){
String s7=request.getParameter("id");
s.executeUpdate("UPDATE customerdetails SET cust_name='"+s1+"',gender='"+s2+"',dob='"+s3+"',phone_no='"+s4+"',address='"+s5+"' WHERE cust_id='"+s7+"'");
}

else{
String s8=request.getParameter("id");
s.executeUpdate("DELETE from customerdetails WHERE cust_id='"+s8+"'");	
}
	

c.close();
s.close();
%>

</body>
</html>