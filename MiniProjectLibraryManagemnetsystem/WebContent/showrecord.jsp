<%@ page import = "java.sql.*" %>
  <html>
  <head>
  <link rel="stylesheet" type="text/css" href="style.css">
  <style>
  body{
  background-image:url("images/10.jpg");
  }
  
  h1{
	margin: 50px 0 20px 0;
	font-size: 35px;
	font-weight: 200;
	text-shadow: 2px 1px 5px black;
	color: white;
}  
    table{
  margin-top:60px;
  }
  
  th{
  padding:25px;
  }
  td{
    text-align:center;
padding:20px;
  }
  
  
  </style>
  </head>
  <body> 
  <header style="height: 80px; text-align: center; width: 100%">

	<div class="logo">
		<h1 style="color: white; font-size: 25px; line-height: 50px; margin-left: 15px; margin-top:15px;"> LIBRARY MANAGEMENT SYSTEM</h1>
	</div>
	<nav>
		<ul>					
		
			<li><a href="index.html">HOME</a></li>
			<li><a href="addbook.html"> ADD </a></li>
			<li><a href="update.html"> UPDATE </a></li>
			<li><a href="delete.html"> DELETE </a></li>
			<li><a href="showrecord.jsp"> SHOWBOOKS</a></li>
			<li><a href="index.html"> LOGOUT</a></li>

		</ul>
	</nav>		
</header>
  
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleDB", "root", "12345Pooj@");
	Statement statement = conn.createStatement() ;
    ResultSet resultset = statement.executeQuery("select * from addBook13");

       %>
       
      <center>
      <h1> List Of Books</h1>
      <TABLE BORDER=1>
      <TR>
      <TH>Book ID</TH>
      <TH>Book Name</TH>
      <TH>Author Name</TH>
      <TH>Book Quantity</TH>
      </TR>
     <%  while(resultset.next())
	{ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
      </TR>
      <% 
    }
%>
</TABLE>
</center>
</body>
</html>