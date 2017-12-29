<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit</title>
</head>
<body bgcolor="pink">
	<div align="center">
		<a href="index.html"
			style="font-weight: bold; font-size: xx-large; color: green;">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="edit.jsp"
			style="font-weight: bold; font-size: xx-large; color: green;">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="view.jsp"
			style="font-weight: bold; font-size: xx-large; color: green;">View</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	</div>
	<hr style="border: blue dotted;">



	<%
				String std_id = "";
				String std_name = "";
				String std_branch = "";
			%>


	<form action="insert.jsp" method="post">
		<table align="center">
			<tr>
				<td>std_id:</td>
				<td><input type="text" name="std_id" id="std_id"
					value="<%=std_id%>"></td>
			</tr>
			<tr>
				<td>std_name:</td>
				<td><input type="text" name="std_name" id="std_name"
					value="<%=std_name%>"></td>
			</tr>
			<tr>
				<td>std_branch:</td>
				<td><input type="text" name="std_branch" id="std_branch"
					value="<%=std_branch%>"></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
	<%
				std_id = request.getParameter("std_id");
				std_name = request.getParameter("std_name");
				std_branch = request.getParameter("std_branch");

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/javatpoint?user=root&password=dinga");
				// Statement stmt=con.createStatement();
				String query = "update student set std_id= " + std_id + ",std_name=" + std_name + ",std_branch="
						+ std_branch + "";
				Statement stmt = con.createStatement();
				int i = stmt.executeUpdate(query);
				System.out.println("query" + query);
				if (i > 0) {
					response.sendRedirect("view.jsp");
				}
				con.close();
				System.out.println("Disconnected from database");
			%>
	<!-- ResultSet rs=st.executeQuery(query)
     //   System.out.println("query" + query);
                 
		response.sendRedirect("view.jsp"); -->

	

	

</body>
</html>