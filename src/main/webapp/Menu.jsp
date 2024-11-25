<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<%
if(request.getParameter("submit")!=null){
	String Cardnumber = request.getParameter("cno");
	String Phoneno = request.getParameter("phno");
	String Totalamount = request.getParameter("tamount");
	String Cvv = request.getParameter("cvv");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew", "root", "root");
    Statement st = con.createStatement();
    st.executeUpdate("insert into payment(cno, phno,tamount,cvv)value('"+Cardnumber+"', '"+Phoneno+"', '"+Totalamount+"', '"+Cvv+"')");
    out.print("<script>alert('Order Done  !! ')</script>");


}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="Css/menu.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link rel="stylesheet" type="text/css"
			href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">


</head>
<!-- partial:index.partial.html -->
<body>
	<div class="one">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"> Select Your Menu </a>
				</div>
			</div>
		</nav>
		
		<div class="container">
			<div class="row">
				<div class="col col-sm-9 col-xs-6 ">
					<h1>Products</h1>
					<div class="row ">
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/17499948/pexels-photo-17499948/free-photo-of-top-view-of-spaghetti-pasta-with-tomato-sauce.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load " class="ab" >
								</div>
								<h2 class=" h">spaghetti</h2>
								<p>spaghetti</p>
								<p>$10.99</p>
							</div>
						</div>

						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/8951498/pexels-photo-8951498.jpeg?auto=compress&cs=tinysrgb&w=600">
								</div>
								<h2 class=" h">Momoes</h2>
								<p>Momoes</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/3738730/pexels-photo-3738730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" >
								</div>
								<h2 class=" h">ChikenBurger</h2>
								<p>ChikenBurger</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/2474658/pexels-photo-2474658.jpeg?auto=compress&cs=tinysrgb&w=600">
								</div>
								<h2 class=" h">Samosa</h2>
								<p>Samosa</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/769969/pexels-photo-769969.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
								</div>
								<h2 class=" h">Pasta</h2>
								<p>Pasta</</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/10905928/pexels-photo-10905928.jpeg?auto=compress&cs=tinysrgb&w=600" >
								</div>
								<h2 class=" h">Cream-Pestry</h2>
								<p>Cream-Pestry</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/1907228/pexels-photo-1907228.jpeg?auto=compress&cs=tinysrgb&w=600">
								</div>
								<h2 class=" h">Veg-noodles</h2>
								<p>Veg-noodles</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=600">
								</div>
								<h2 class=" h">Product Name</h2>
								<p>Product Name</p>
								<p>$10.99</p>
							</div>


						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item   p-3">
							<div class="border p-4">
								<div class='img-container  '>
									<img
										src="https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600">
								</div>
								<h2 class=" h">Product Name</h2>
								<p>Product Name</p>
								<p>$10.99</p>
							</div>

						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/28674544/pexels-photo-28674544/free-photo-of-spicy-indian-rice-dish-with-red-chilies.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>


						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/28674660/pexels-photo-28674660/free-photo-of-delicious-indian-chicken-biryani-with-spicy-curry.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/718742/pexels-photo-718742.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/808941/pexels-photo-808941.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/10905933/pexels-photo-10905933.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/9609857/pexels-photo-9609857.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/9609862/pexels-photo-9609862.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2 class=" h">Product Name</h2>
							<p>Product Name</p>
							<p>$10.99</p>
						</div>


						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/7340936/pexels-photo-7340936.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>Pulav</h2>
							<p>Pulav</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/9609843/pexels-photo-9609843.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>Anda Biryani</h2>
							<p>Anda Biryani</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/1199960/pexels-photo-1199960.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>CheezBurger</h2>
							<p>CheezBurger</</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/28674530/pexels-photo-28674530/free-photo-of-delicious-plate-of-indo-chinese-manchurian-balls.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>Kobimonchuriyan</h2>
							<p>Kobimonchuriyan</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/28674560/pexels-photo-28674560/free-photo-of-indian-paneer-cashew-curry-in-rich-gravy.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>Sandwicth</h2>
							<p>Sandwicth</p>
							<p>$10.99</p>
						</div>
						<div class="col col-xs-12 col-md-6 col-lg-4 item shadow p-3 mt-4">
							<div class='img-container'>
								<img
									src="https://images.pexels.com/photos/15058967/pexels-photo-15058967/free-photo-of-a-bowl-of-food-sitting-on-top-of-a-wooden-board.jpeg?auto=compress&cs=tinysrgb&w=600">
							</div>
							<h2>Mataka Biryani</h2>
							<p>Mataka Biryani</p>
							<p>$10.99</p>
						</div>

					</div>
				</div>
				<div class="col col-sm-3 col-xs-6  ">
					<div id='cart-container' data-spy="affix" data-offset-top="10"
						class="border border-dark border-3 p-3">
						<h1>
							Shopping Cart <span class="badge" id='cartItems'></span>
						</h1>
						<div class="cart" id='cart'>So lonely here, add something</div>
						<div class="p-3" id='prices'></div>
						
					</div>
					<a class="btn btn-success mt-5" href="MainPages.jsp">Back To Home</a>
				</div>
				
				
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade bg-dark text-dark " id="myModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog " role="document">
				<div class="modal-content ad">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button> -->
						<h4 class="modal-title fw-bold" id="myModalLabel">Complete order</h4>
					</div>
					<div class="modal-body">
						<div class='row'>
							<div class='col-xs-12' id='cartContentsModal'></div>
						</div>
						<div class='row'>
							<div class='col-xs-12' id='cartForm'>
								<!-- FORM -->
								
								<%-- <%
								if(request.getParameter("submit")!=null){
									 String Name = request.getParameter("one");
									 String Address = request.getParameter("two");
									 String Contact = request.getParameter("three");
									
									Class.forName("com.mysql.cj.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dmart" , "root" , "root");
									Statement st = con.createStatement();
									st.executeUpdate("insert into book (name , address , contact) value ('"+Name+"' , '"+Address+"' , '"+Contact+"')");
									response.sendRedirect("CardPayment.jsp");
								}
								%>
								 --%>
								<!-- <form action="#" method="get">
									<div class="form-group">
										<label for="formName">Name</label> <input name="one"
											type="text" class="form-control"  id="formName"
											placeholder="Your name" required>
									</div>

									<div class="form-group">
										<label for="formAddress">Delivery Address</label> <input name="two"
											type="text" class="form-control" id="formAddress"
											placeholder="Your address" required>
									</div>
									<div class="form-group">
										<label for="formAddress">Contact No</label> <input name="three"
											type="tel" class="form-control" id="formAddress"
											placeholder="Your Phoneno" required>
									</div>
									
									<div class="mb-4">
                                <h5 class="border-bottom pb-2">Payment Method</h5>
                                <div class="form-check mb-2">
                                    <input class="form-check-input" type="radio" name="payment" id="cash" checked>
                                    <label class="form-check-label" for="cash">
                                        Cash on Delivery
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="payment" id="card">
                                    <label class="form-check-label" for="card">
                                        Credit/Debit Card
                                    </label>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                            <div class="card h-100">
                                                <div class="card-body">
                                                    <h6 class="card-title">Soft Drinks</h6>
                                                    <p class="card-text text-muted small">Cola, Sprite, Fanta</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <span class="text-primary">$2.49</span>
                                                        <select class="form-select w-50">
                                                            <option value="">Select Drink</option>
                                                            <option value="cola">Cola</option>
                                                            <option value="sprite">Sprite</option>
                                                            <option value="fanta">Fanta</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
									<div class="modal-footer centered">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="submit" name="submit" class="btn btn-primary" id='submit'>Complete
											order</button>
									</div>
								</form> -->
<form class="payment-card" action="#" method="get">
  <h1 class="payment-card__title">Card details</h1>
  <div class="payment-card__field payment-card__field--large">
    <label for="card-number" class="payment-card__field-label">Card number</label>
    <input class="payment-card__input payment-card__input--large" id="card-number" name="cno" type="tel"    inputmode="numeric" pattern="[0-9\s]{13,19}" autocomplete="cc-number" maxlength="19" placeholder="xxxx xxxx xxxx xxxx" />
  </div>
  <div class="payment-card__field payment-card__field--large">
    <label for="card-number" class="payment-card__field-label">Phone number</label>
    <input class="payment-card__input payment-card__input--large" id="card-number" name="phno" type="tel" inputmode="numeric"  autocomplete="cc-number"  placeholder="Your Phno" />
  </div>
  <div class="payment-card__extra-fields">
    <div class="payment-card__field payment-card__field--small">
      <label for="card-expiry" class="payment-card__field-label">Total Amount</label>
      <input class="payment-card__input" inputmode="numeric" id="card-expiry"  name="tamount" type="number" placeholder="xx/xx" />
    </div>
    <div class="payment-card__field payment-card__field--small">
      <label for="card-ccv" class="payment-card__field-label">CCV</label>
      <input class="payment-card__input" inputmode="numeric" id="card-ccv" placeholder="xxx"  name="cvv" type="number" />
    </div>
  </div>
  
                                        <div class="modal-footer centered">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="submit" name="submit" class="btn btn-primary" id='submit'>Complete
											order </button>
									</div>
</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
  
		<!-- Latest compiled and minified CSS -->
		
		<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

		
<!-- partial -->
<script src="Js/menu.js"></script>

</body>
</html>