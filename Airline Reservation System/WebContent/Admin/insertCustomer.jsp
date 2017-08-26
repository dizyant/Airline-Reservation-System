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
String s1 = request.getParameter("custname");
String s2 = request.getParameter("title");
String s3 = request.getParameter("dob");
String s4 = request.getParameter("phno");
String s5 = request.getParameter("address");
String s6 = request.getParameter("pass");
String s7 = request.getParameter("flag");

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
Statement s = c.createStatement();

if(s6.equals("insert")){
s.executeUpdate("INSERT INTO customerdetails(cust_name,gender,dob,phone_no,address,password) VALUES('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
s.close();
response.sendRedirect("Customer_Details.jsp");
}

else if(s6.equals("edit")){
String s8=request.getParameter("id");
s.executeUpdate("UPDATE customerdetails SET cust_name='"+s1+"',gender='"+s2+"',dob='"+s3+"',phone_no='"+s4+"',address='"+s5+"',password='"+s6+"' WHERE cust_id='"+s8+"'");
response.sendRedirect("search_customer.jsp");
}

else{
String s8=request.getParameter("id");
s.executeUpdate("DELETE from customerdetails WHERE cust_id='"+s8+"'");	
response.sendRedirect("Customer_Details.jsp");
}
	

c.close();
//response.sendRedirect("Customer_Details.jsp");

/*out.print(s1);
out.print(s2);
out.print(s3);
out.print(s4);
out.print(s5);*/

%>

</body>
</html>