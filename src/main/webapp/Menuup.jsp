<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%-- <%
if(request.getParameter("submit")!=null){
	String
}
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Update</title>
</head>
<body>
 <div class="row">
            <div class="col-sm-4">
                <form  method="get" action="#" >
                    
                    <%    
                      
                        
                        String id = request.getParameter("id");
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sour","root" , "root");
                        PreparedStatement ps = con.prepareStatement("select * from payment where id=?");
                        ps.setString(1, id);
                        ResultSet rs = ps.executeQuery();
                        
                         while(rs.next())
                        	 
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("stname")%>" name="sname" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Course</label>
                        <input type="text" class="form-control" placeholder="Course" name="course" value="<%= rs.getString("course")%>" id="course" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" value="<%= rs.getString("fee")%>" required >
                     </div>
                       <% 
                        }
                       %>
                         </br>
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         <div align="right">
                             <p><a href="Mains.jsp">Click Back</a></p>
                         </div>
                </form>
            </div>          
        </div>
</body>
</html>