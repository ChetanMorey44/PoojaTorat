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
<body class="container">
	<%
	String url = "jdbc:mysql://localhost:3306/datanew";
	String username = "root";
	String password = "root";
	Connection conn = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);

		if (request.getParameter("submit") != null) {
			String Email = request.getParameter("email");
			String Name = request.getParameter("name");
			String Phonenumber = request.getParameter("phno");
			String Comments = request.getParameter("comments");

			Statement st = conn.createStatement();
			st.executeUpdate("insert into feedback (email, name, phno, comments) value('" + Email + "', '" + Name + "' , '"
			+ Phonenumber + "', '" + Comments + "')");
			out.print("<script>alert('Thank You... visit again..!')</script>");
		}
		if (request.getParameter("delete") != null) {
			int Id = Integer.parseInt(request.getParameter("id"));
			PreparedStatement ps = conn.prepareStatement("delete from feedback where id=?");
			ps.setInt(1, Id);
			ps.executeUpdate();
			out.print("<script>alert('delete Thank You... visit again..!')</script>");
		}
		if (request.getParameter("update") != null) {
			String Email = request.getParameter("email");
			String Name = request.getParameter("name");
			String Phonenumber = request.getParameter("phno");
			String Comments = request.getParameter("comments");
			int Id = Integer.parseInt(request.getParameter("id"));

			PreparedStatement ps = conn.prepareStatement("update feedback set email=? , name=? , phno=? , comments=? where id=?");
			ps.setString(1, Email);
			ps.setString(2, Name);
			ps.setString(3, Phonenumber);
			ps.setString(4, Comments);
			ps.setInt(5, Id);
			ps.executeUpdate();
			out.print("<script>alert('Thank You... visit again..!')</script>");
		}
		PreparedStatement ps = conn.prepareStatement("SELECT * from feedback ");
		ResultSet rs = ps.executeQuery();
	%>
	<table class="table table-danger">
		<tr>
			<th>Id</th>
			<th>Email</th>
			<th>Name</th>
			<th>Phone No</th>
			<th>Comments</th>
			<th>Records</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("id")%></td>
			<td><%=rs.getString("email")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("phno")%></td>
			<td><%=rs.getString("comments")%></td>
			<td>
				<form  action="#" method="get">
					<input  value="<%=rs.getInt("id")%>"
						name="id" type="hidden" />
					
				</form>

				<form  action="#" method="get">
				     <input class="form-control" value="<%=rs.getInt("id")%>" name="id" type="hidden" />
					 <input class="form-control" value="<%=rs.getString("email") %>"  name="email" type="email" />
					 <input class="form-control" value="<%=rs.getString("name") %>"   name="name" type="text" />
					 <input class="form-control" value="<%=rs.getString("phno") %>" name="phno" type="tel" />
						
					<div>
				    	<label >Comments:</label> 
						<textarea  class="form-control" value="  placeholder="Leave a comment here"
							 name="comments" type="text"><%=rs.getString("comments") %></textarea>
						
					</div>

					<div>
					   <button class="btn btn-primary p-2 mt-2" type="submit"
						     name="delete">Delete</button>
					   <button class="btn btn-primary p-2 mt-2" type="submit"
							name="update">Update</button>
						
					</div>
				</form> <!--  <button href="#" class='btn btn-danger'>Delete</button> -->
			</td>

		</tr>
		<%
		}
		} catch (Exception e) {

		}
		%>

	</table>

	<div class="col-6 p-3  ">
		<h2>Feedback Form</h2>
		<form class="form-control " action="#" method="get">
			Email: <input class="form-control col-6" name="email" type="email" />
			Name:<input class="form-control col-6" name="name" type="text" />
			Phone Number:<input class="form-control col-6" name="phno" type="tel" />
			<div class="form-floating mt-lg-4">
				<textarea class="form-control" placeholder="Leave a comment here"
					id="floatingTextarea" name="comments" type="text"></textarea>
				<label for="floatingTextarea">Comments:</label>
			</div>

			<div>
				<button class="btn btn-primary p-2 mt-2" type="submit" name="submit">Submit</button>
				<button class="btn btn-warning p-2 mt-2" type="submit" name="cancel">Cancel</button>
			</div>
		</form>
	</div>




</body>
</html>