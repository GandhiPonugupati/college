<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<div align="center">
		<a href="index.html"
			style="font-weight: bold; font-size: xx-large; color: green;">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="edit.jsp"
			style="font-weight: bold; font-size: xx-large; color: green;">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="view.jsp"
			style="font-weight: bold; font-size: xx-large; color: green; background: black;">View</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<%
		String std_id = request.getParameter("std_id");
		String std_name = request.getParameter("std_name");
		String std_branch = request.getParameter("std_branch");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/javatpoint?user=root&password=dinga");

		Statement st = con.createStatement();
		//String sql="insert into student(ID,student_name,gender,dob,course,address,religion,mobile_no)values('"+ID+"','"+student_name+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+religion+"','"+mobile_no+"')";
		//System.out.println("insert into college.student(ID,student_name,gender,dob,course,address,religion,mobile_no)values('"+std_id+"','"+student_name+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+religion+"','"+mobile_no+"')");
		String qry = "insert into javatpoint.student(std_id,std_name,std_branch) values('" + std_id + "','"
				+ std_name + "','" + std_branch + "')";
		st.execute(qry);
		response.sendRedirect("index.html");
	%>

</body>
</html>