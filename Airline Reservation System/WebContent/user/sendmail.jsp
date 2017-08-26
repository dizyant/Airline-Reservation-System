<%@ page import="mail.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String q1 =(String)session.getAttribute("name");
String q2 =(String)session.getAttribute("ph");
String q3 =(String)session.getAttribute("add");
String q4 =(String)session.getAttribute("fname");
String q5 =(String)session.getAttribute("source");
String q6 =(String)session.getAttribute("destination");
String q7 =(String)session.getAttribute("dep");
String q8 =(String)session.getAttribute("ret");
String q9 =(String)session.getAttribute("charge");

String s1=(String)session.getAttribute("add");
SendMail s = new SendMail();
s.sendEmail(s1,q1,q2,q3,q4,q5,q6,q7,q8,q9);
response.sendRedirect("index.jsp");%>
</body>
</html>