<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Rental Association</title>
<link rel="icon" href="images/iconR.png" />


<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap"
	rel="stylesheet">

<!-- nice selecy -->
<link rel="stylesheet" href="css/nice-select.min.css">

<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

</head>

<body>

	<div class="hero_area">
		<!-- header section strats -->

		<%@ include file="navigationBar.jsp"%>

		<!-- end header section -->
		<!-- slider section -->
		<%@ include file="slider.jsp"%>
		<!-- end slider section -->
	</div>

	<!-- find section starts -->

	<%@ include file="findForm.jsp"%>

	<!-- find section ends -->

	<!-- about section -->

	<section class="about_section layout_padding" id="about">
		<div class="container  ">
			<div class="row">
				<div class="col-md-6">
					<div class="detail-box">
						<div class="heading_container">
							<h2>About Us</h2>
						</div>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour, or randomised words which don't look
							even slightly believable. If you are going to use a passage of
							Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. All</p>
						<a href="tel:+91 8379923183"> Call:- 8379923183 </a>
					</div>
				</div>
				<div class="col-md-6 ">
					<div class="img-box">
						<img src="images/about-img.jpg" alt="">
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- end about section -->

	<!-- sale section -->
	<%@ include file="saleSection.jsp"%>
	<!-- end sale section -->

	<!-- why us section -->
	<%@ include file="whyUs.jsp"%>
	<!-- end why us section -->

	<!-- client section -->
	<%@ include file="clientSection.jsp"%>

	<!-- end client section -->



	<!-- info section -->
	<%@ include file="infoSection.jsp"%>
	<!-- end info_section -->


	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<p>
				&copy; <span id="displayYear"></span> All Rights Reserved By <a
					href="https://html.design/">Rental Association</a>
			</p>
		</div>
	</footer>
	<!-- footer section -->

	<!-- jQery -->
	<%@ include file="scripts.jsp"%>


</body>

</html>