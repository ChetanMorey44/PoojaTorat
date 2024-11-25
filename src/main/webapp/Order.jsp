<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
    
     <%
    	 if(request.getParameter("submit")!=null){
    		 String Pid =request.getParameter("pid");
    		 String Mname = request.getParameter("mname");
             String Cid =  request.getParameter("cid");
             String Quantity = request.getParameter("quantity");
             String Dileveryaddress = request.getParameter("dileveryaddress");
             String Payment =request.getParameter("payment");
             String Date=request.getParameter("date");
             
             
             
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew","root","root");
             Statement st = con.createStatement();
             st.executeUpdate("insert into addcart(pid,mname,cid,quantity,dileveryaddress,payment,date)values('"+Pid+"','"+Mname+"','"+Cid+"','"+Quantity+"','"+Dileveryaddress+"','"+Payment+"','"+Date+"')");
    	
    %>
     <script>
         alert("Data inserted successfully!! ")
     </script>
   <%
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
 <h1 class="fw-bold text-info">Order Now</h1>
        </br>
        <div class="row">
            <div class="col-sm-4 col-lg-4">
                <form  method="get" action="#" > 
                    
                    <div alight="left">
                        <label class="form-label">Product Id</label>
                        <input type="text" id="pid" class="form-control" placeholder="Enter ProductId Number" name="pid" id="pid" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Menu Name</label>
                        <input type="text" id="mname" class="form-control" placeholder="Enter Menu Name " name="mname" id="mname" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Customer Id</label>
                        <input type="text" id="cid" class="form-control" placeholder="Enter Customer Id" name="Enter Customer Id" id="cid" required >
                     </div>
                     
                     <div alight="left">
                     <label for="quantity" class="form-label">Quantity</label>
                     <input type="number" class="form-control" id="quantity" min="1" required>
                    </div>
                    
                        <div alight="left">
                        <label for="dileveryaddress" class="form-label">Delivery Address</label>
                          <textarea class="form-control" id="dileveryaddress" rows="3" required></textarea>
                          </div>
                     
                     <div alight="left">
                        <label class="form-label">Payment</label>
                        <input type="text" id="payment" class="form-control" placeholder="" name="payment" id="payment" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Date</label>
                        <input type="date" id="date" class="form-control" placeholder="" name="date" id="date" required >
                     </div>
                     
                     
                         </br>
                         
                     <div alight="right">
                         <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                </form>
            </div>
            
             <div class='col-lg-8'>
               <table class='table table-bordered'>
                  <tr>
                     <th>Product Id</th>
                     <th>Menu Name</th>
                     <th>Customer Id</th>
                     <th>Quantity</th>
                     <th>Delivery Address</th>
                       <th>Payment</th>
                        <th>Date</th>
                  </tr>
                  <%
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew","root","root");
                  PreparedStatement ps = con1.prepareStatement("select * from addcart");
                  ResultSet rs = ps.executeQuery();
                   
                  while(rs.next()){
                	 String id = rs.getString("pid");
                   %>
                      <tr>
                	     <td><%= rs.getString("mname") %></td>
                	     <td><%= rs.getString("cid") %></td>
                	     <td><%= rs.getString("quantity") %></td>
                	     <td><%= rs.getString("dileveryaddress") %></td>
                	     <td><%= rs.getString("payment") %></td>
                	      <td><%= rs.getString("date") %></td>
                	     <td><a href="update.jsp?id=<%=id%>" class='btn btn-success'>Update</a></td>
                	     <td><a href="delete.jsp?id=<%=id%>" class='btn btn-danger'>Delete</a></td>
                	   </tr>
                  
                  <%
                  }
                  %>
               </table>
            </div>
            
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>