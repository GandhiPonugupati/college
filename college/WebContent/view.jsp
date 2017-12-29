<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<html>
<body bgcolor="pink">
	<div align="center">
		<a href="index.html"
			style="font-weight: bold; font-size: xx-large; color: green;">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="edit.jsp"
			style="font-weight: bold; font-size: xx-large; color: green;">EDIT</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="view.jsp"
			style="font-weight: bold; font-size: xx-large; color: green;">View</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<hr style="border: blue dotted;">

	<h2 align="center">View Registration Details</h2>
	<table border="1" align="center">
		<tr
			style="background: fuchsia; font-size: large; font-weight: bold; color: white;">
			<td>std_id</td>
			<td>std_name</td>
			<td>std_branch</td>
		</tr>
		<tr>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("for name");
				Connection con = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/javatpoint?user=root&password=dinga");
				System.out.println("url");
				Statement st = con.createStatement();
				System.out.println("statement");
				String sql = "select * from student";
				System.out.println("sql" + sql);
				ResultSet rs = st.executeQuery(sql);
				String std_name = "";
				while (rs.next()) {
					System.out.println(rs.getInt(1) + " " + rs.getString(2));
					std_name = rs.getString(2);
			%>
			<td><%=rs.getInt(1)%></td>

			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
			<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>


		</tr>
		<%
			}
		%>
	</table>

</body>
</html>