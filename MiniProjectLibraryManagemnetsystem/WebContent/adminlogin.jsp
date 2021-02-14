<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
String Username = request.getParameter("Username");
String Pass_word = request.getParameter("Pass_word");

try
{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleDB", "root", "12345Pooj@");
	 Statement st = conn.createStatement();

	 ResultSet rs = st.executeQuery("select * from registrationad where  Username='" +Username+ "' and Pass_word='"+Pass_word+"'");

	 if(rs.next())

	 {

	 response.sendRedirect("books.html"); 

	

	 }

	 else
	 response.sendRedirect("error.jsp");

	 rs.close();

	 st.close(); 

	 }

	 catch(SQLException sqe)

	 {

	 out.println(sqe);

	 } 

	 %>


</body>
</html>