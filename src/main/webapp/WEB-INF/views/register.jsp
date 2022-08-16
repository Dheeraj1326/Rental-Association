<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

	<div class="container ">
		<div
			class="row d-flex justify-content-center align-items-center min-vh-100">
			<div class="col-md-6">
				<div class='d-flex justify-content-center bounceIn'>
					<img src="images/Group 692.png" alt="Banner" />
				</div>
			</div>
			<div class="col-md-6 d-flex justify-content-center">
				<div class="card p-4 text-black form-text border-0 flipInX">
					<form:form action="/register" method="post" modelAttribute="user">
						<h1>Sign Up</h1>
						<p>Here You Register YourSelf For Login And Enjoy Our Service.</p>
						
						<h6 class="text-danger">${error}</h6>
						<h6 class="text-success">${result}</h6>
						
						<form:input path="name" type="text" placeholder="Enter Your Name" class="w-100 form-control" />
						
						<form:select path="state" class=" my-3 w-100 form-control" >
                              <option >Select State</option>
                              <c:forEach items="${stateList}" var="state">
											<option id="state" class="droupdown-item"
												${stateValue eq state.name ? 'selected' : ''}
												value="${state.id}">${state.name}</option>
										</c:forEach>
                         </form:select>
                         <form:select path="city" class="my-3 w-100 form-control" >
                              <option >Select City</option>
                              <c:forEach items="${cityList}" var="city">
											<option id="city" class="droupdown-item"
												${cityValue eq city.name ? 'selected' : ''}
												value="${city.id}">${city.name}</option>
										</c:forEach>
                         </form:select>
                         <form:input path="age" type="text" maxlength="2" placeholder="Enter Your Age" class="my-3 w-100 form-control" />
						<form:input path="phone" type="text" maxlength="10" placeholder="Enter Your Phone Number" class="my-3 w-100 form-control" />
						
                         <form:input path="address" type="text"  placeholder="Enter Your Address" class="my-3 w-100 form-control" />
						<form:input path="email" type='email' placeholder='Enter Email' class="my-3 w-100 form-control" />
						<form:input path="password" type='password' placeholder='Enter Password' class='my-3 form-control w-100' /> 
						
						<button type="submit" class="px-4 mb-3 btn bg-danger text-white w-100">
						Sign Up
						</button>
						
						<a href="/login" class="text-dark">Login</a>
					</form:form>
				</div>
			</div>
		</div>
	</div>


	<!-- jQery -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<!-- popper js -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		>
		
	</script>
	<!-- nice select -->
	<script src="js/jquery.nice-select.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.js"></script>
	<!-- owl slider -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
		
	</script>
	<!-- custom js -->
	<script src="js/custom.js"></script>


</body>

</html>