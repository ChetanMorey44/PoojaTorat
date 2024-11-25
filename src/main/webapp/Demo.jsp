<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*" %>
	
	
	<%
	  if(request.getParameter("submit")!=null){
		  String Name = request.getParameter("name");
		  String Email = request.getParameter("email");
		  String Pass = request.getParameter("pass");
		  String Date = request.getParameter("date");
		  String Gender = request.getParameter("gender");
		  String Address = request.getParameter("address");
		  
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
		  Statement st = con.createStatement();
		  st.executeUpdate("insert into demo (name , email , password , date , gender,address) value ('"+Name+"' , '"+Email+"' , '"+Pass+"' , '"+Date+"' , '"+Gender+"' , '"+Address+"')");
		  out.print("<script>alert('Successfully Done inserted !! ')</script>");
	  }
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body class="container">
	<div class="col-6 p-3">
	<h2>Registration Form</h2>
	   <form class="form-control " action="#" method="get" >
		Name : <input class="form-control col-6"  name="name" type="text" /> 
		Email : <input class="form-control col-6"  name="email" type="email" /> 
		Password : <input class="form-control col-6"  name="pass" type="password" />
		Date : <input class="form-control col-6"  name="date" type="date" />
		Male : <input   name="gender" type="radio" value="male" />
		FeMale : <input   name="gender" type="radio" value="female" /></br>
		Address: <textarea class="form-control mt-lg-3" id="address" rows="3" name="address" type="text" required></textarea>
		<div>
		   <a href="Login.jsp" class="btn btn-danger p-2 mt-2" type="submit" name="submit" >Submit</a>
		</div>
	</form>
	</div>
	
	<table  class="table table-bordered ">
	     <tr>
	         <th>Id</th>
	         <th>Name</th>
	         <th>Email</th>
	         <th>Password</th>
	         <th>Date</th>
	         <th>Gender</th>
	         <th>Address</th>
	     </tr>
	     <%
	      Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
		  PreparedStatement ps = con1.prepareStatement("select * from demo");
		  ResultSet rs = ps.executeQuery();
		  while(rs.next()){
			  
	     %>
	     <tr>
	       <td><%=rs.getString("id") %></td>
	       <td><%=rs.getString("name") %></td>
	       <td><%=rs.getString("email") %></td>
	       <td><%=rs.getString("password") %></td>
	       <td><%=rs.getString("date") %></td>
	       <td><%=rs.getString("gender") %></td>
	       <td><%=rs.getString("address") %></td>
	     </tr>
	     <%
		  }
	     %>
	</table>
	<%
	
	%>
	
	<%-- <form class="form-control " action="#" method="get">
	 Email: <input class="form-control col-6"  name="email1" type="email" /> 
     Password:<input class="form-control col-6"  name="pass1" type="password" /> 
     <button type="submit" name="login" class="btn btn-danger">Submit</button>
	</form>
	
	<%
    	 if(request.getParameter("login")!=null){
    		 String Email1 = request.getParameter("email1");
             String Password1 = request.getParameter("pass1");
           
             
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
             PreparedStatement ps1 = con2.prepareStatement("select * from demo where email=? and password=?");
             ps1.setString(1, Email1);
             ps1.setString(2, Password1);
             ResultSet rs1 = ps1.executeQuery();
             
             if(rs1.next()){
                     out.print("<script>alert('Login is done successfully')</script>");
                     String Id = rs1.getString("id");
                     String N = rs1.getString("name");
                     String E = rs1.getString("email");
                     String P = rs1.getString("password");
                     String D = rs1.getString("date");
                     String Gen = rs1.getString("gender");
                     String Ad=rs1.getString("address");
                     
                     HttpSession ses = request.getSession();
                     ses.setAttribute("id", Id );
                     ses.setAttribute("name", N );
                     ses.setAttribute("email", E );
                     ses.setAttribute("pass", P );
                     ses.setAttribute("date", D );
                     ses.setAttribute("gen", Gen );
                     ses.setAttribute("ad", Ad);
                     response.sendRedirect("Profile.jsp");
                     
            	}
             else{
            		out.print("<script>alert('Email id and Password is not matched')</script>");
            		 response.sendRedirect("Order.jsp");
            	}
    	 }
   
	 %> --%>
    
    
</body>
</html> 