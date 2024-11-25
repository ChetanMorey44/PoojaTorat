<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<title>Feedback Update</title>
</head>
<%
if (request.getParameter("update") != null) {
	String id = request.getParameter("id");
	String Email = request.getParameter("email");
	String Name = request.getParameter("name");
	String PhoneNumber = request.getParameter("phno");
	String Comments = request.getParameter("comments");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root", "root");
	PreparedStatement pst = con
	.prepareStatement("update feedback set email=? , name=? , phno=? , comments=? where id=?");
	pst.setString(1, Email);
	pst.setString(2, Name);
	pst.setString(3, PhoneNumber);
	pst.setString(4, Comments);
	pst.setString(5, id);
	pst.executeUpdate();
	response.sendRedirect("Feedback.jsp");
%>

<script>
	alert("Record Updateddddd");
</script>
<%
}
%>

<div class="col-6 p-3  ">
	<h2>Feedback Form</h2>
	<form class="form-control " action="#" method="get">

		<%
		String id = request.getParameter("id");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root", "root");
		PreparedStatement ps = con1.prepareStatement("select * from feedback where id=?");
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
		%>

		Email: <input class="form-control col-6" name="email" type="email"
			value="<%=rs.getString("email")%>" /> Name:<input
			class="form-control col-6" name="name" type="text"
			value="<%=rs.getString("name")%>" /> Phone Number:<input
			class="form-control col-6" name="phno" type="tel"
			value="<%=rs.getString("phno")%>" />
		<div class="form-floating mt-lg-4">
			<textarea class="form-control" placeholder="Leave a comment here"
				id="floatingTextarea" name="comments" type="text"
				value="<%=rs.getString("comments")%>"></textarea>
			<label for="floatingTextarea">Comments:</label>
		</div>

		<%
		}
		%>
		<div>
			<button class="btn btn-primary p-2 mt-2" type="submit" name="update">Update</button>
			<button class="btn btn-warning p-2 mt-2" type="submit" name="cancel">Cancel</button>
			<div align="">
				<p>
					<a href="Feedback.jsp">Click Back</a>
				</p>
			</div>
		</div>
	</form>
</div>

<body>

</body>
</html>