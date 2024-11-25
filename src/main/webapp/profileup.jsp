<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
if (request.getParameter("update") != null) {
	String Name = request.getParameter("name");
	String Gender = request.getParameter("gender");
	String Email = request.getParameter("email");
    String Phone = request.getParameter("phone");
	
	int Pid = Integer.parseInt(request.getParameter("pid"));
    
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew","root" , "root");
	PreparedStatement ps = conn.prepareStatement("update profiles set name=? , gender=?  email=? ,  phone=?  where pid=?");
	ps.setString(1, Name);
	ps.setString(2, Gender);
	ps.setString(3, Email);
	ps.setString(4, Phone);
	ps.setInt(5, Pid);
	ps.executeUpdate();
	out.print("<script>alert(Profile is created..!')</script>");
}


%>
<body>

</body>
</html>