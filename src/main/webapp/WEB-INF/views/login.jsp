<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Rental Association</title>
    <link rel="icon" href="images/iconR.png" />


    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

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
        <div class="row d-flex justify-content-center align-items-center min-vh-100">
            <div class="col-md-6">
                <div class='d-flex justify-content-center bounceIn'>
                    <img src="images/Group 692.png" alt="Banner" />
                </div>
            </div>
            <div class="col-md-6 d-flex justify-content-center flipInX" >
                <div class="card p-4 text-black form-text border-0 ">
                    <form:form action="/Login" method="post" modelAttribute="user">
                     <div><a href="/" class="text-primary d-flex justify-content-end"><u>Back To Home</u></a></div>
                        <h1>Login</h1>
                        <p>Enter email id and password to login.</p>
                        <h6 class="text-danger">${error}</h6>
                        <h6 class="text-success">${result}</h6>
                        
                        <form:input path="email" type='email' placeholder='Username' class="w-100 form-control" />
                        <form:input path="password" type='password' placeholder='Password' class='my-3 form-control w-100' />
                        
                            <button type="submit" class="px-4 mb-3 btn bg-danger text-white w-100">
                                Login
                            </button>
                        
                       <span>Do you Registered?<a href="/signup" class="text-dark ">&nbsp;Register</a></span> 
                      
                       
                    </form:form>
                </div>
            </div>
        </div>
    </div>










                <!-- jQery -->
                <script src="js/jquery-3.4.1.min.js"></script>
                <!-- popper js -->
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
                    </script>
                <!-- nice select -->
                <script src="js/jquery.nice-select.min.js"></script>
                <!-- bootstrap js -->
                <script src="js/bootstrap.js"></script>
                <!-- owl slider -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
                </script>
                <!-- custom js -->
                <script src="js/custom.js"></script>


</body>

</html>