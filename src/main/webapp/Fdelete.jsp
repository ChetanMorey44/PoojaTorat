<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    
    String id = request.getParameter("id");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
    PreparedStatement ps = conn.prepareStatement("delete from feedback where id=?");
    ps.setString(1, id);
    ps.executeUpdate();
     response.sendRedirect("Feedback.jsp");
    %>
    <script>
          alert("Record Deletee");
       
     </script>
    <%--  <%
     RequestDispatcher rd = request.getRequestDispatcher("/Registration.jsp");
     rd.forward(request, response);
     %> --%>
</body>
</html>