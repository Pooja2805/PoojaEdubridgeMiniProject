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
	 PreparedStatement ps = conn.prepareStatement("insert into addBook13(Book_Id, Bookname, Authorname, Book_Quantity) values(?,?,?,?)" );
	 ps.setString(1, Book_Id);
	 ps.setString(2, Bookname);
	 ps.setString(3, Authorname);
	 ps.setString(4, Book_Quantity);
	
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Book inserted Successfully...");
		 response.sendRedirect("books.html");

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