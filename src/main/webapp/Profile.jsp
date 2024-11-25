<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
   <h1>Profile</h1>
   
   <%
     String Id = (String) session.getAttribute("id");
     String Name = (String) session.getAttribute("name");
     String Email = (String)session.getAttribute("email");
     String Password = (String)session.getAttribute("password");
     String Date = (String)session.getAttribute("date");
     String Gender = (String)session.getAttribute("gender");
     String Address = (String)session.getAttribute("address");
     %>
     
   name : <%=Name %>
   email : <%=Email %>
   password : <%=Password %>
   date: <%=Date %>
   gender: <%=Gender %>
   address: <%=Address %>
   
   
   
   
</body>
</html>