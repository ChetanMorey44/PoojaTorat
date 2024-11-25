<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
   
    	
   
  <%
    if(request.getParameter("submit")!=null){
    	String Email = request.getParameter("email");
    	String Pass = request.getParameter("pass");
    
    	 Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root", "root");
        /* Statement st = con1.createStatement();
        st.executeUpdate(" into login (email, pass) value ('"+Email+"','"+Pass+"')");
        out.print("<script>alert('Login Confirmed...')</script>"); */ 
        
        PreparedStatement ps = con1.prepareStatement("select * from demo where email=? and pass=? ");
        ps.setString(1, Email);
        ps.setString(2, Pass);
        
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
        	 /* out.print("<script>alert('Login Confirmed...')</script>");  */
        	 response.sendRedirect("dashbord.jsp");
        }else{
        	 out.print("<script>alert('Id and Password didnt match')</script>"); 
        }
        }
        %> 
        
    	
             
    

    
    
   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Food Delivery</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     <style>
       html {
  height: 100%;
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}
       
     </style>
</head>
<body class="container">
<%-- <div class="col-4 p-3  ">
<form class="form-control " action="#" method="get">
 Email: <input class="form-control col-6"  name="email" type="email" /> 
 Password:<input class="form-control col-6"  name="pass" type="password" /> 
 
 <div>
<button class="btn btn-primary p-2 mt-2" type="submit" name="submit" >Login</button>
<button class="btn btn-warning p-2 mt-2" type="submit" name="cancel" >Cancel</button>
</div>
</form>


 
    	

<table class="table table-bordered mt-lg-5">
<tr>
<th>Name</th>
<th>Password</th>
</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root", "root");
PreparedStatement ps = con.prepareStatement("select * from login");
ResultSet rs = ps.executeQuery();

while(rs.next()){
	%>
	<tr>
	<td><%= rs.getString("email") %></td>
	<td><%= rs.getString("pass") %>
	</tr>
<%
}
%>

</table>
</div>
<%
if(request.getParameter("submit")!=null){
	String Email= request.getParameter("email");
	String Password= request.getParameter("pass");
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root","root");
	PreparedStatement ps2 = cons.prepareStatement("select * from login where email=? and pass=?");
	ps2.setString(1, Email);
	ps2.setString(2, Password);
	ResultSet rs1 = ps2.executeQuery();
	
	
}

%>
 --%>
  <div class="login-box">
  <h2>Admin</h2>
  <form action="#" method="get">
    <div class="user-box">
      <input type="email" name="email" required="">
      <label>E-mail</label>
    </div>
    <div class="user-box">
      <input type="password" name="pass" required="">
      <label>Password</label>
    </div>
    
    <div>
<button class="btn btn-primary p-2 mt-2" type="submit" name="submit" >Login</button>
<button class="btn btn-warning p-2 mt-2" type="submit" name="cancel" >Cancel</button>
</div>
  </form>
</div>
</body>
</html> 