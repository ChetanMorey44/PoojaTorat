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
 
            <% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String Pass = request.getParameter("pass");
        String Type = request.getParameter("type");
        String Gender = request.getParameter("gender");
        String Address = request.getParameter("address");
        String Date = request.getParameter("date");
        String Phone = request.getParameter("phone");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew","root" , "root");
        PreparedStatement pst = con2.prepareStatement("update demo set name=? , email=? , pass=?,  type=?,  gender=?,  address=?, date=?,  phone=? where id=?");
        pst.setString(1, Name);
        pst.setString(2, Email);
        pst.setString(3, Pass);
        pst.setString(4, Type);
        pst.setString(5, Gender);
        pst.setString(6, Address);
        pst.setString(7, Date);
        pst.setString(8, Phone);
        pst.setString(9, id);
        pst.executeUpdate();
        
        %>
        
        <script>   
            alert("Record Updateddddd");           
       </script>
    <%             
    }

%>
<div class='col-lg-8'>
               
                 
                      <div class="row">
            <div class="col-sm-4 col-lg-4">
              <h3>Registration</h3>
                <form  method="get" action="#" > 
                  
                   <%
                  String id = request.getParameter("id");
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
                  PreparedStatement ps = con1.prepareStatement("select * from demo where id=?");
                  ps.setString(1, id);
                  ResultSet rs = ps.executeQuery();
                  
                   
                  while(rs.next()){
                	
                   %>
                  
                  
                    <div alight="">
                        <label class="form-label"> Name</label>
                        <input type="text"  class="form-control" placeholder=" Name" name="name" id="name" value="<%= rs.getString("name")%>"    required >
                     </div>
                         
                    <div alight="">
                        <label class="form-label">Email</label>
                        <input type="email" id="email" class="form-control" placeholder="Email" name="email" value="<%= rs.getString("email")%>"  required >
                     </div>
                     
                      <div alight="">
                        <label class="form-label">Password</label>
                        <input type="password" id="pass" class="form-control" placeholder="Password" name="pass" value="<%= rs.getString("pass")%>" required >
                     </div>
                         
                      <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Gender</label>
            </div>
            <div class="form-item"> 
              <input id="Male" type="radio" name="gender" type="text"  value="<%= rs.getString("gender")%>" data-once>
              <label for="Male">Male</label>
            </div>
            <div class="form-item"> 
              <input id="Female" type="radio" name="gender" type="text" value="<%= rs.getString("gender")%>" data-once>
              <label for="Female">Female</label>
            </div>
          </div>
          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
        </div>
        <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Type</label>
            </div>
            <div class="form-item"> 
              <input id="sponsored" type="radio" name="type" value="<%= rs.getString("type")%>" data-once>
              <label for="sponsored">sponsored</label>
            </div>
            <div class="form-item"> 
              <input id="paid" type="radio" name="type" value="<%= rs.getString("type")%>" data-once>
              <label for="paid">paid</label>
            </div>
          </div>
          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
        </div>
                     
                      <div class="form-item box-item">
          <input type="text" name="address" placeholder="Address" value="<%= rs.getString("address")%>" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
                     
                     <div alight="">
                        <label class="form-label">Date</label>
                        <input type="date"  class="form-control"  name="date" id="date" value="<%= rs.getString("date")%>" required >
                     </div>
                     
                     <div alight="">
                        <label class="form-label">Phone</label>
                        <input type="tel"  class="form-control" placeholder=" Phone" name="phone" id="phone" value="<%= rs.getString("phone")%>" required >
                     </div>
                     
                     
                  <%
                  }
                  %>
                         </br>
                     <div alight="">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         <div align="">
                             <p><a href="Registration.jsp">Click Back</a></p>
                         </div>
                         
                </form>
            </div>
                  
                  
               
</body>
</html>