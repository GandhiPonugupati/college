<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit update</title>
</head>
<body>
	<%

String std_id=request.getParameter("std_id");
String student_name=request.getParameter("std_name");
String gender=request.getParameter("std_branch");
 


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javatpoint?user=root&password=dinga");



Statement st=con.createStatement();
        //String sql="insert into student(ID,student_name,gender,dob,course,address,religion,mobile_no)values('"+ID+"','"+student_name+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+religion+"','"+mobile_no+"')";
//System.out.println("insert into college.student(ID,student_name,gender,dob,course,address,religion,mobile_no)values('"+std_id+"','"+student_name+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+religion+"','"+mobile_no+"')");
//String qry="insert into college.student(ID,student_name,gender,dob,course,address,religion,mobile_no) values('"+std_id+"','"+student_name+"','"+gender+"','"+dob+"','"+course+"','"+address+"','"+religion+"','"+mobile_no+"')";
String qry="update student ";
st.execute(qry);
response.sendRedirect("view.jsp");
%>


</body>
</html>