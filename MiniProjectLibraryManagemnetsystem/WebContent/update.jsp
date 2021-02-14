<%@ page import = "java.sql.*" %>
<%
String Book_Id = request.getParameter("Book_Id");
String Bookname = request.getParameter("Bookname");
String Authorname = request.getParameter("Authorname");
String Book_Quantity = request.getParameter("Book_Quantity");


try
{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleDB", "root", "12345Pooj@");
	 PreparedStatement ps = conn.prepareStatement("update addBook13 set Bookname=?, Authorname=?, Book_Quantity=? where Book_Id=?");
	
	 ps.setString(1, Bookname);
	 ps.setString(2, Authorname);
	 ps.setString(3, Book_Quantity);
	 ps.setString(4, Book_Id);
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Book updated Successfully...");
		 response.sendRedirect("books.html");

	 }
	 else
	 {
		 System.out.println("Update Failed...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}

%>