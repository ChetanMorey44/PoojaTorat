<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../Css/style.css">


<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/fontawesome.min.css"
	integrity="sha512-B46MVOJpI6RBsdcU307elYeStF2JKT87SsHZfRSkjVi4/iZ3912zXi45X5/CBr/GbCyLx6M1GQtTKYRd52Jxgw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link
	href="https://fonts.googleapis.com/css2?family=Jersey+20&family=Lora:ital,wght@0,400..700;1,400..700&family=Permanent+Marker&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Radio+Canada+Big:ital,wght@0,400..700;1,400..700&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link
	href="https://fonts.googleapis.com/css2?family=Jersey+20&family=Lora:ital,wght@0,400..700;1,400..700&display=swap"
	rel="stylesheet">

<title>Online Food System</title>
<style>
* {
	padding: 0;
	margin: 0;
	font-size: 16px;

	/* font-family: "Permanent Marker", cursive; */
}

/* .bgimg{
background-image: url(../assets/Images/background/back1.jpg);
width: 100%;
height: 140vh;
overflow: hidden;
background-position: fixed;
background-repeat: no-repeat;
background-size: contain;
} */
.aa {
	background-image: url("Images/background/banner.jpg");
	overflow: hidden;
	background-position: fixed;
	background-size: contain;
	background-repeat: no-repeat;
	width: 100%;
	height: 130vh;
}

.sec1 {
	font-family: Playfair Display, serif;
}

.sec2 {
	font-family: Playfair Display, serif;
}

.frame {
	width: 90%;
	margin: 40px auto;
	text-align: center;
}

button {
	margin: 20px;
}

.custom-btn {
	width: 130px;
	height: 40px;
	color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-family: 'Lato', sans-serif;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	outline: none;
}

.btn-7 {
	background: linear-gradient(0deg, rgba(255, 151, 0, 1) 0%,
		rgba(251, 75, 2, 1) 100%);
	line-height: 42px;
	padding: 0;
	border: none;
}

.btn-7 span {
	position: relative;
	display: block;
	width: 100%;
	height: 100%;
}

.btn-7:before, .btn-7:after {
	position: absolute;
	content: "";
	right: 0;
	bottom: 0;
	background: rgba(251, 75, 2, 1);
	box-shadow: -7px -7px 20px 0px rgba(255, 255, 255, .9), -4px -4px 5px
		0px rgba(255, 255, 255, .9), 7px 7px 20px 0px rgba(0, 0, 0, .2), 4px
		4px 5px 0px rgba(0, 0, 0, .3);
	transition: all 0.3s ease;
}

.btn-7:before {
	height: 0%;
	width: 2px;
}

.btn-7:after {
	width: 0%;
	height: 2px;
}

.btn-7:hover {
	color: rgba(251, 75, 2, 1);
	background: transparent;
}

.btn-7:hover:before {
	height: 100%;
}

.btn-7:hover:after {
	width: 100%;
}

.btn-7 span:before, .btn-7 span:after {
	position: absolute;
	content: "";
	left: 0;
	top: 0;
	background: rgba(251, 75, 2, 1);
	box-shadow: -7px -7px 20px 0px rgba(255, 255, 255, .9), -4px -4px 5px
		0px rgba(255, 255, 255, .9), 7px 7px 20px 0px rgba(0, 0, 0, .2), 4px
		4px 5px 0px rgba(0, 0, 0, .3);
	transition: all 0.3s ease;
}

.btn-7 span:before {
	width: 2px;
	height: 0%;
}

.btn-7 span:after {
	height: 2px;
	width: 0%;
}

.btn-7 span:hover:before {
	height: 100%;
}

.btn-7 span:hover:after {
	width: 100%;
}

.sec3 {
	background-image: url("Images/background/food-bg.png");
	overflow: hidden;
	background-position: right;
	background-size: contain;
	background-repeat: no-repeat;
	width: 100%;
	height: auto;
}

.rr:hover {
	background-color: #FFB606;
	cursor: pointer;
}

.special {
	overflow: hidden;
}

@media ( min-width :768px) {
	.sec-two {
		text-align: center;
		display: flex;
	}
	.sec-div1 {
		align-items: center;
		justify-content: center;
		display: flex;
		margin-left: 200px;
		margin-top: 30px;
	}
	.sec-three {
		font-family: "Playfair Display", serif;
	}
	.sec-four {
		font-family: "Playfair Display", serif;
	}
	.footer {
		background-color: #2A3663;
	}
	li a:hover {
		background-color: white;
	}
	aa {
		background-image: url(Images/illustration/banner.jpg);
		background-size: fixed;
		background-repeat: no-repeat;
		height: 100vh;
	}
	.sec1 {
		font-family: Playfair Display, serif;
	}
	.sec2 {
		font-family: Playfair Display, serif;
		margin-top: 40px;
	}
	@media ( min-width :992px) {
		.sec-two {
			align-items: center;
			justify-content: center;
			text-align: center;
		}
		.sec-div1 {
			margin: 30px;
			margin-left: 340px;
			padding: 40px;
		}
		.sec-three {
			font-family: "Playfair Display", serif;
		}
		.sr {
			background-image: url(Images/background/section_bg12.jpg);
			width: 100%;
			height: 100vh;
		}
		.sec-four {
			font-family: "Playfair Display", serif;
		}
		.footer {
			background-color: #2A3663;
		}
	}
}
</style>
</head>



<body style="font-family: Playfair Display, serif;">


	<section id="navbar">
		<div class="aa">

			<nav
				class="navbar navbar-expand-lg  shadow bg-light mt-lg-5 rounded-0">
				<div class="container-fluid  ">
					<div class="col-lg-4 col-md-6 col-sm-12 ">
						<img src="Images/illustration/logos.png" alt="" class="img-fluid">
					</div>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<p class="text-dark fs-1">
							<i class="fa-solid fa-bars"></i>
						</p>
					</button>
					<div class="collapse navbar-collapse " id="navbarNav">
						<ul class="navbar-nav col-lg-12 justify-content-between">
							<li class="nav-item hhh p-3"><a
								class="nav-link  active fw-bold " aria-current="page" href="#">Home</a>
							</li>
							<li class="nav-item  p-3"><a class="nav-link  fw-bold "
								href="About.jsp">About</a></li>
							<li class="nav-item  p-3"><a class="nav-link  fw-bold"
								href="Menu.jsp">Menu</a></li>
							<li class="nav-item dropdown p-3"><a
								class="nav-link dropdown-toggle fw-bold " href="#" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> Blog </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item fw-bold" href="#">Blog
											Home</a></li>
									<li><a class="dropdown-item fw-bold" href="#">Blog
											Details</a></li>

								</ul></li>
							<li class="nav-item  p-3"><a class="nav-link   fw-bold"
								href="Registration.jsp">Registration</a></li>

							<li class="nav-item  p-3"><a class="nav-link   fw-bold"
								href="Login.jsp">Login</a></li>

							<!-- <form class="d-flex  " role="search">
								<input class="form-control m-4 " type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-danger col-3" type="submit">Search</button>
							</form> -->
							
							 <li class="nav-item  p-3">
                        <a class="nav-link   fw-bold" href="Admin.jsp">Admin</a>
                      </li>
						</ul>


					</div>
				</div>
			</nav>



			<section class="" id="sector1">
				<div class="">
					<div class="container-fluid    text-light mt-lg-5">
						<div class=" ">
							<div class="text-center sec2 mt-lg-5 ">

								<h2 class="display-2">
									Discover the <span class="text-warning display-2">flavors</span><br>
									of <span class="text-warning display-2">food</span>fun
								</h2>
							</div>


						</div>
					</div>
				</div>
			</section>
	</section>



	</div>



	<!-- <******************************************************Hero section*************************> -->





	<section class="container-fluid " id="sector2">
		<div class="d-lg-flex ">
			<div class="col-lg-6 col-md-6 col-sm-12">
				<img src="Images/illustration/welcome.png " alt=""
					class=" text-center " width="620" height="600">
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 mt-lg-5"
				style="align-items: center;">
				<h2 class="text-start text-warning fw-bold">welcome</h2>
				<span class="text-start fs-2 fw-bold">to food fun</span>

				<p class="p-2 w-75">Created god gathered don't you yielding herb
					you had. And isn't, god was saw. Dominion. Great sixth for in unto
					was. Open can't tree waters brought. Divide after there. Was.
					Created god gathered don't you yielding herb you had. And isn't
					god. book a table</p>
				<p class="p-2 w-75">Created god gathered don't you yielding herb
					you had. And isn't, god was saw. Dominion. Great sixth for in unto
					was. Open can't tree waters brought. Divide after there. Was.
					Created god gathered don't you yielding herb you had. And isn't
					god.</p>
				<div class="frame">

					<div class="text-start">
						<button class="custom-btn btn-7 ">
							<span>Book A Table</span>
						</button>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section class=" container-fluid sec3" id="sector3">

		<div class="p-5 m-lg-5 ">

			<h2 class="text-danger fw-bold ">we serve</h2>
			<h2>delicious food</h2>
			<span class="text-secondary ">They're fill divide i their
				yielding our after have him<br> fish on there for greater man
				moveth, moved Won't <br>together isn't for fly divide mids fish
				firmament on net.
			</span>
		</div>
		<div class="container d-lg-flex gap-5 text-center ">
			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food1.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4">
						Mexican Eggrolls <span class="text-danger fw-bold fs-5">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food2.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4  ">
						Veg-Burger <span class="text-danger fw-bold fs-5 p-2">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food3.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4 ">
						topu lasange <span class="text-danger fw-bold fs-5 p-2">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

		</div>



		<div class="container d-lg-flex gap-5 text-center mt-5">
			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food4.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4">
						pepper potatoas <span class="text-danger fw-bold fs-5">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food5.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4  ">
						bean salad <span class="text-danger fw-bold fs-5 p-1">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

			<div class="card  col-lg-4 col-md-6 col-sm-12"
				style="width: 18rem; border: none;">
				<img class="card-img-top" src="Images/illustration/food6.jpg"
					alt="Card image cap" data-aos="zoom-in">
				<div class="card-body shadow rr ">
					<h4 class="fw-bold mx-4 ">
						beatball hoagie <span class="text-danger fw-bold fs-5">$14.50</span>
					</h4>
					<p class="text-secondary p-2  ">Face together given moveth
						divided form Of Seasons that fruitful.</p>

				</div>
			</div>

		</div>
	</section>


	<div id="sector4">

		<div class="text-center mt-lg-5">
			<h2 class="display-2">
				Our <span class="text-warning display-2">special</span> dishes
			</h2>

			<p>Beast kind form divide night above let moveth bearing
				darkness.</p>
		</div>
		<div class="container">
			<div class="d-lg-flex mt-lg-4">
				<div class="col-lg-8 col-md-6 col-sm-12">

					<div class="d-lg-flex ">
						<p class="fw-bold display-2">01.</p>
						<hr class="w-25 text-dark fw-bolder text-end mt-lg-5 mt-3 mx-4">
					</div>
					<div class="w-75 text-start">
						<h2 class="text-warning fw-bold">
							Garlic<br>
							<p class=" fw-bold fs-2 text-dark">green beans</p>
						</h2>
						<p class=" text-secondary">Be. Seed saying our signs beginning
							face give spirit own beast darkness morning moveth green multiply
							she'd kind saying one shall, two which darkness have day image
							god their night. his subdue so you rule can.</p>

						<h3 class="text-warning fw-bold">$12.00</h3>
					</div>

					<p class="fw-bold">
						ORDER NOW <i class="bi bi-arrow-right text-warning"></i>
					</p>
				</div>

				<div class="col-lg-2 col-md-6 col-sm-12">
					<img src="Images/illustration/deshes1.png" alt="" width="400"
						height="400">
				</div>

			</div>
		</div>

		<div class="container">
			<div class="d-lg-flex mt-lg-4">

				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="Images/illustration/deshes2.png" alt="" width="400"
						height="400">
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 ">
					<div class="d-lg-flex ">
						<p class="fw-bold display-2 text-end mx-4 ml-lg-5">02.</p>
						<hr class="w-25 text-dark fw-bolder text-end mt-lg-5 mt-3 mx-4 ">
					</div>
					<div class=" text-end">
						<h2 class="text-warning fw-bold text-end">
							Lemon<br>
							<p class=" fw-bold fs-2 text-dark">rosemary chicken</p>
						</h2>
						<p class=" text-secondary">Be. Seed saying our signs beginning
							face give spirit own beast darkness morning moveth green multiply
							she'd kind saying one shall, two which darkness have day image
							god their night. his subdue so you rule can.</p>

						<h3 class="text-warning fw-bold text-end">$12.00</h3>


						<p class="text-end fw-bold">
							ORDER NOW <i class="bi bi-arrow-right text-warning"></i>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div class="container" id="sector5">


		<div class="text-center mt-lg-5">
			<h2 class="display-4 fw-bold">
				Our <span class="text-warning display-4">food</span> update
			</h2>
		</div>

		<div class="d-lg-flex p-3 gap-4 mt-lg-5">
			<div class="card" style="border: none;">
				<img class="card-img-top" src="Images/illustration/update1.jpg"
					alt="Card image cap">
				<div class="card-body shadow">
					<div class="d-lg-flex">
						<p class="text-body-tertiary">
							<a><i class="bi bi-person fw-bold p-2 text-body-tertiaryt"></i>Admin</a>
						</p>
						<p class="text-body-tertiary">
							<a><i class="bi bi-calendar p-3 fw-bold text-body-tertiary"></i>18/09/2024</a>
						</p>
					</div>
					<p class="card-text fw-bold">No Finer Food Can Be Found</p>
					<span class="text-body-tertiary">nancy boy off his nut so I
						said chimney pot be James Bond aking cakes he.</span><br> <a href=""
						class="text-decoration-none mt-2">Read More <i
						class="bi bi-arrow-right text-warning "></i></a>
				</div>
			</div>

			<div class="card" style="border: none;">
				<img class="card-img-top" src="Images/illustration/update2.jpg"
					alt="Card image cap">
				<div class="card-body shadow">
					<div class="d-lg-flex">
						<p class="text-body-tertiary">
							<a><i class="bi bi-person fw-bold p-2 text-body-tertiaryt"></i>Admin</a>
						</p>
						<p class="text-body-tertiary">
							<a><i class="bi bi-calendar p-3 fw-bold text-body-tertiary"></i>18/09/2024</a>
						</p>
					</div>
					<p class="card-text fw-bold">No Finer Food Can Be Found</p>
					<span class="text-body-tertiary">nancy boy off his nut so I
						said chimney pot be James Bond aking cakes he.</span><br> <a href=""
						class="text-decoration-none mt-2">Read More <i
						class="bi bi-arrow-right text-warning "></i></a>
				</div>
			</div>

			<div class="card" style="border: none;">
				<img class="card-img-top" src="Images/illustration/update3.jpg"
					alt="Card image cap">
				<div class="card-body shadow">
					<div class="d-lg-flex ">
						<p class="text-body-tertiary">
							<a><i class="bi bi-person fw-bold p-2 text-body-tertiaryt"></i>Admin</a>
						</p>
						<p class="text-body-tertiary">
							<a><i class="bi bi-calendar p-3 fw-bold text-body-tertiary"></i>18/09/2024</a>
						</p>
					</div>
					<p class="card-text fw-bold">No Finer Food Can Be Found</p>
					<span class="text-body-tertiary">nancy boy off his nut so I
						said chimney pot be James Bond aking cakes he.</span><br> <a href=""
						class="text-decoration-none mt-2">Read More <i
						class="bi bi-arrow-right text-warning "></i></a>
				</div>
			</div>
		</div>
	</div>


























	<!-- 
<section class="sec-three" id="order">

  <div class="container-fluid">
    <div class="row">
      <div class="d-lg-flex p-lg-3 mt-lg-3 sr">
        <div class="col-lg-5 col-md-6 col-sm-12 mt-lg-5" data-aos="zoom-in-right"data-aos-delay="700" data-aos-duration="3000">
          <h3 class="fw-bold display-4">Ready to serve you at any hour.</h3>
          <p class="text-primary fw-bold">Food is a journey, and our restaurant is the destination.Life’s too short not to satisfy your cravings. Order that delicious burger or large pizza right now.</p>
         <div>
          <button class="rounded-4 col-lg-5 bg-warning text-light text-bold p-lg-3 btn btn-outline-warning">ORDER ONLINE <i class="fa-solid fa-arrow-right  p-2" ></i></button>
         </div>
        
        </div>
        <div class="col-lg-7 col-md-6 col-sm-12 mt-lg-5 " data-aos="zoom-in-left" data-aos-delay="700" data-aos-duration="3000">
          <img class="img-fluid"  src="../assets/Images/illustration/service-man.png" alt="">
        </div>
      </div>
    </div>
  </div>
</section> -->














	<section class="sec-five" id="sector6">
		<div class="container">
			<div class="row ">

				<div class="d-lg-flex">

					<div class="col-lg-6 col-md-6 col-sm-12  ">
						<h1 class="fw-bold display-3 mt-lg-4">Experience the best
							foods through facile ordering</h1>
						<p class="p-2 text-secondary">Order your favorite yummy
							savories from preferred shops being anywhere at any time. Make
							faster checkouts and get your snacks delivered so quickly than
							ever.</p>
						<div>
							<div class="text-left">
								<span class="text-secondary"><i
									class="bi bi-check-circle text-success fs-4 p-1"></i>Multi-integrated
									payment options</span> <span class="text-secondary"><i
									class="bi bi-check-circle text-success fs-4 p-2 "></i>In-app
									calls/chat </span>
							</div>

							<div class="text-left mb-lg-5">
								<span class="text-secondary"><i
									class="bi bi-check-circle text-success fs-4 p-3"></i>Track your
									orders accurately</span> <span class="mx-lg-4 text-secondary"><i
									class="bi bi-check-circle text-success fs-4 p-1 "></i>Ratings
									and reviews</span>
							</div>
						</div>
					</div>
					<div class=" col-md-6 col-sm-12 ps">
						<div class=""></div>
						<img class="mt-lg-3 mx-lg-5"
							src="Images/illustration/fast-food-section.png" alt=""
							height="500" width="500" />
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="mt-lg-5 " id="sector7">
		<div class="container">
			<div class="row mt-lg-5">
				<div class="text-center mt-lg-5 mb-lg-2">
					<h1 class="fw-bold">A digital fast food delivery service for
						food lovers</h1>
					<div class="row">
						<div class="d-lg-flex justify-content-center align-items-center  ">
							<div class="col-lg-4 col-md-6 col-sm-12 mx-lg-3">
								<span><a href=""><i
										class="bi bi-hand-index-thumb fs-1 fw-bold text-info"></i></a></span>
								<h4 class="text-danger fw-bold">Native apps</h4>
								<p>Our software provides mobile based applications for
									customers to enjoy seamless food ordering services. The android
									and ios device users can widely make use of this app.</p>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12 mx-lg-3">
								<span><a href=""><i
										class="bi bi-wechat fs-1 fw-bold text-info"></i></a></span>
								<h4 class="text-danger fw-bold">Scalable</h4>
								<p>The product is scalable to your future requirements to
									the changing scenario. Launch the most comprehensive solution
									to suit the current market demands.</p>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-12 mx-lg-3">
								<span><a href=""><i
										class="bi bi-stars fs-1 fw-bold text-info"></i></a></span>
								<h4 class="text-danger fw-bold">Cost-effective</h4>
								<p>Develop your own affordable online software and establish
									your brand in the fast food industry.Be a successful
									entrepreneur among other leading food delivery platforms by
									creating cost-efficient solutions.</p>
							</div>


						</div>
					</div>

				</div>
			</div>
		</div>
	</section>










	<section class="footer" id="footer">

		<div class="container">
			<div class="">
				<div class=" row ">
					<div class="d-lg-flex text-light">
						<div class="col-lg-4">
							<img src="Images/illustration/logos.png " alt="" class="me-4">
							<p class="p-3 w-75">Which morning fourth great won't is to
								fly bearing man. Called unto shall seed, deep, herb set seed
								land divide after over first creeping. First creature set upon
								stars deep male gathered said she'd an image spirit our</p>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<h2 class="text-warning fw-bold mt-1  ">Contact us</h2>
							<p>
								<a><i class="bi bi-geo-alt p-2 fw-bold fs-3"></i>1234 Some
									St San Francisco, <br>CA 94102, US 1.800.123.4567</a>
							</p>
							<p class=" me-5 ">
								<a><i class="bi bi-telephone fw-bold fs-3 p-3"></i>+91
									7647356365er </a>
							</p>

							<p>
								<a><i class="bi bi-envelope-fill  p-2 fw-bold fs-3"></i>support@axiomthemes.com</a>
							</p>

						</div>
						<div class="col-lg-4 col-md-6 col-sm-12 ">
							<h2 class="text-danger mt-1">Opening Hours</h2>
							<ul class="text-light ">
								<li class="fw-bold ">Monday: 10.00am - 05.00pm</li>
								<li class="fw-bold">Tuesday: 10.20am - 05.30pm</li>
								<li class="fw-bold ">Wednesday: 10.20am - 05.30pm</li>
								<li class="fw-bold ">Thursday: 10.20am - 05.30pm</li>
								<li class="fw-bold ">Friday: 10.20am - 05.30pm</li>
								<li class="fw-bold ">Saturday <span
									class="text-warning fw-bold fs-4">:Closed</span></li>

							</ul>
						</div>
					</div>


				</div>

				<div class="mt-lg-5">
					<p class="text-white text-center fs-5 fw-bold ">@ 2024 Lets
						make it happen..!</p>
					<p class="text-bold text-light p-3 ">
						follow us <a class="icon-link icon-link-hover "><i
							class="bi bi-facebook p-3"></i></a> <a
							class="icon-link icon-link-hover "><i
							class="bi bi-instagram p-3"></i></a><a
							class="icon-link icon-link-hover "><i
							class="bi bi-twitter-x p-3"></i></a>
					</p>
				</div>
			</div>
		</div>
		</div>
	</section>




















	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.js"
		integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
		integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>









	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>

</body>
</html>