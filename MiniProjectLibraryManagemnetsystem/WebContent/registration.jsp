<%@ page import = "java.sql.*" %>
<%
String Office_Id = request.getParameter("Office_Id");
String Firstname = request.getParameter("Firstname");
String Lastname = request.getParameter("Lastname");
String Email = request.getParameter("Email");
String Username = request.getParameter("Username");
String Pass_word = request.getParameter("Pass_word");

try
{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleDB", "root", "12345Pooj@");
	 PreparedStatement ps = conn.prepareStatement("insert into registrationad (Office_Id, Firstname, Lastname, Email, Username, Pass_word) values(?,?,?,?,?,?)" );
	 ps.setString(1, Office_Id);
	 ps.setString(2, Firstname);
	 ps.setString(3, Lastname);
	 ps.setString(4, Email);
	 ps.setString(5, Username);
	 ps.setString(6, Pass_word);
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Resgistration Done Successfully...");
		 response.sendRedirect("admin_login.html");

	 }
	 else
	 {
		 System.out.println("Resgistration Failed...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}

%>