<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<style>
* {
	box-sizing: border-box
}

@import
	'https://fonts.googleapis.com/css?family=Open+Sans:400,400i&subset=cyrillic'
	;

body {
	margin: 0;
	background: #F7F7F7;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	font-family: 'Open Sans', sans-serif;
}

.form-wrap {
	width: 550px;
	background: #ffd500;
	border-radius: 20px;
}

.form-wrap * {
	transition: .1s linear
}

.profile {
	width: 240px;
	float: left;
	text-align: center;
	padding: 30px;
}

form {
	background: white;
	float: left;
	width: calc(100% - 240px);
	padding: 30px;
	border-radius: 0 20px 20px 0;
	color: #7b7b7b;
}

.form-wrap:after, form div:after {
	content: "";
	display: table;
	clear: both;
}

form div {
	margin-bottom: 15px;
	position: relative;
}

h1 {
	font-size: 24px;
	font-weight: 400;
	position: relative;
	margin-top: 50px;
}

h1:after {
	content: "\f138";
	font-size: 40px;
	font-family: FontAwesome;
	position: absolute;
	top: 50px;
	left: 50%;
	transform: translateX(-50%);
}

label, span {
	display: block;
	font-size: 14px;
	margin-bottom: 8px;
}

input[type="text"], input[type="email"] {
	width: 100%;
	padding: 10px 15px;
	border-width: 0;
	background: #e6e6e6;
	outline: none;
	margin: 0;
}

input[type="text"]:focus, input[type="email"]:focus {
	box-shadow: inset 0 0 0 2px rgba(0, 0, 0, .2);
}

.radio label {
	position: relative;
	padding-left: 50px;
	cursor: pointer;
	width: 50%;
	float: left;
	line-height: 40px;
}

.radio input {
	position: absolute;
	opacity: 0;
}

.radio-control {
	position: absolute;
	top: 0;
	left: 0;
	height: 40px;
	width: 40px;
	background: #e6e6e6;
	border-radius: 50%;
	text-align: center;
}

.male:before {
	content: "\f222";
	font-family: FontAwesome;
	font-weight: bold;
}

.female:before {
	content: "\f221";
	font-family: FontAwesome;
	font-weight: bold;
}

.radio label:hover input ~ .radio-control, .radiol input:focus ~
	.radio-control {
	box-shadow: inset 0 0 0 2px rgba(0, 0, 0, .2);
}

.radio input:checked ~ .radio-control {
	color: red;
}

select {
	width: 100%;
	cursor: pointer;
	padding: 10px 15px;
	outline: 0;
	border: 0;
	background: #e6e6e6;
	color: #7b7b7b;
	-webkit-appearance: none;
	-moz-appearance: none;
}

select::-ms-expand {
	display: none;
}

.select-arrow {
	position: absolute;
	top: 38px;
	right: 15px;
	width: 0;
	height: 0;
	pointer-events: none;
	border-style: solid;
	border-width: 8px 5px 0 5px;
	border-color: #7b7b7b transparent transparent transparent;
}

button {
	padding: 10px 0;
	border-width: 0;
	display: block;
	width: 120px;
	margin: 25px auto 0;
	background: #60e6c5;
	color: white;
	font-size: 14px;
	outline: none;
	text-transform: uppercase;
}

@media ( max-width : 600px) {
	body {
		display: block
	}
	.form-wrap {
		margin: 20px auto;
		max-width: 550px;
		width: 100%
	}
	.profile, form {
		float: none;
		width: 100%
	}
	h1 {
		margin-top: auto;
		padding-bottom: 50px;
	}
	form {
		border-radius: 0 0 20px 20px
	}
}
</style>






<body class="container">

<%

String url = "jdbc:mysql://localhost:3306/datanew";
String username = "root";
String password = "root";
Connection conn = null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	 conn = DriverManager.getConnection(url, username, password);
	 
	 if (request.getParameter("submit") != null) {
			String Name = request.getParameter("name");
			String Gender = request.getParameter("gender");
			String Email = request.getParameter("email");
			String Phone = request.getParameter("phone");

			
			Statement st = conn.createStatement();
			st.executeUpdate("insert into profiles (name , gender, email , phone) value ('" + Name + "' ,   '" + Gender + "' ,'"
			+ Email + "'  ,'" + Phone + "')");
			out.print("<script>alert('Successfully Done inserted !! ')</script>");
		}
	
	 if (request.getParameter("delete") != null) {
			int Pid = Integer.parseInt(request.getParameter("pid"));
			PreparedStatement ps = conn.prepareStatement("delete from profiles where pid=?");
			ps.setInt(1, Pid);
			ps.executeUpdate();
			out.print("<script>alert('delete Thank You... visit again..!')</script>");
		}
		if (request.getParameter("update") != null) {
			String Name = request.getParameter("name");
			String Gender = request.getParameter("gender");
			String Email = request.getParameter("email");
	        String Phone = request.getParameter("phone");
			
			int Pid = Integer.parseInt(request.getParameter("pid"));

			PreparedStatement ps = conn.prepareStatement("update profiles set name=? , gender=?  email=? ,  phone=?  where pid=?");
			ps.setString(1, Name);
			ps.setString(2, Gender);
			ps.setString(3, Email);
			ps.setString(4, Phone);
			ps.setInt(5, Pid);
			ps.executeUpdate();
			out.print("<script>alert(Profile is created..!')</script>");
		}
		PreparedStatement ps = conn.prepareStatement("SELECT * from profiles ");
		ResultSet rs = ps.executeQuery();

 
%>

  <div class=" col-6">
		<table class="table table-bordered">
			<tr>
				<th>Name</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
			while (rs.next()) {
				String pid = rs.getString("pid");
				
			%>
	
			<tr>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("gender")%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("phone")%></td>
                  <td>
                  
                  
                  <form  action="#" method="get">
					<input  value="<%=rs.getInt("pid")%>"
						name="pid" type="hidden" />
					
				</form>
				
				<form  action="#" method="get">
				     <input class="form-control" value="<%=rs.getInt("pid")%>" name="pid" type="hidden" />
				      <input class="form-control" value="<%=rs.getString("name") %>"   name="name" type="text" />
				       <input class="form-control" value="<%=rs.getString("gender") %>"   name="gender" type="text" />
					 <input class="form-control" value="<%=rs.getString("email") %>"  name="email" type="email" />
					
					 <input class="form-control" value="<%=rs.getString("phone") %>" name="phone" type="tel" />
						<div>
					   <button class="btn btn-primary p-2 mt-2" type="submit" name="delete">Delete</button>
					   <button class="btn btn-primary p-2 mt-2" type="submit" name="update">Update</button>
							
						
					</div>
				</form>
                  </td>


				<!-- <td><button name="update" type="submit" class='btn btn-success'>Update</button></td>
				<td><button name="delete"  type="submit" class='btn btn-danger'>Delete</button></td> -->
			</tr>

			<%
			}
            } catch (Exception e) {

            }
			%>
			

			
		</table>
	</div>






















	<!-- <div class="form-wrap">
		<div class="profile">
			<img
				src="https://html5book.ru/wp-content/uploads/2016/10/profile-image.png">
			<h1>Рrofile</h1>
		</div>
		<form method="get" action="#">
			<div>
				<label for="name">Name</label> <input type="text" name="name"
					required>
			</div>
			<div class="radio">
				<span>Gender</span> <label> <input type="radio"
					name="gender" value="male">Male
					<div class="radio-control male"></div>
				</label> <label> <input type="radio" name="gender" value="female">Female
					<div class="radio-control female"></div>
				</label>
			</div>
			<div>
				<label for="email">E-mail</label> <input type="email" name="email"
					required>
			</div>
			<div>
				<label for="phno">Phone Number</label> <input type="tel"
					name="phone" required>
			</div>
			
			<button type="submit" name="submit">Submit</button>
		</form>
	</div>
 -->
	

</body>
</html>