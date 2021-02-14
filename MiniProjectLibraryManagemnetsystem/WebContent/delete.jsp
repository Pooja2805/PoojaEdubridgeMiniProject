<%@ page import = "java.sql.*" %>
<%
String Book_Id = request.getParameter("Book_Id");

try
{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleDB", "root", "12345Pooj@");
	 PreparedStatement ps = conn.prepareStatement("delete from addBook13 where Book_Id=?");
	 ps.setString(1, Book_Id);
	 
	
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Book deleted Successfully...");
		 response.sendRedirect("books.html");

	 }
	 else
	 {
		 System.out.println("Invalid...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}

%>