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

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              <img src="images/logo.svg" alt="">
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <!-- <li class="nav-item active">
                <a class="nav-link" href="#index">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#about"> About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#property">Property</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#why">Why Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#testimonial">Testimonial</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#contact">Contact</a>
              </li> -->

            </ul>
            <div class="btn-box">
              <a href="/login">
                <button class="btn px-4 text-white"> Logout </button>
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section mb-5">
      <div class="slider_bg_box">
        <img src="images/slider-bg.jpg" alt="">
      </div>
      <!-- find section starts -->

      <section class="find_section w-100 mt-4 py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-10 mx-auto">
              <div class="form_tab_container">
                <div class="nav-tabs-navigation">
                  <div class="nav-tabs-wrapper">
                    <ul class="nav " data-tabs="tabs">
                      <li class="nav-item">
                        <a class="nav-link active" href="#rent" data-toggle="tab">Post</a>
                      </li>
                    </ul>
                  </div>
                  <div class="d-flex justify-content-center text-danger">${error}</div>
                  <div class="d-flex justify-content-center text-success">${done}</div>
                </div>
                <div class="tab-content text-center">
                  <div class="tab-pane active" id="rent">
                    <div class="Rent_form find_form">
                      <form:form action="/SaveRentalPost" method="post" enctype="multipart/form-data"  modelAttribute="rentalPosts">
                        <div class="form-row">
                          <div class="col-md-6 px-0">
                            <div class="form-group ">
                              <div class="input-group ">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <img src="images/input-property.png" alt="Location Image" />
                                  </div>
                                </div>
                                <form:input path="name"  type="text" class="form-control" id="inputRentDestination"
                                  placeholder="Enter Your Name" />
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6 px-0">
                            <div class="form-group">
                              <div class="input-group ">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <img src="images/input-location.png" alt="Room Image" />
                                  </div>
                                </div>
                               
                                <form:select path="city" class="form-control " >
                             		 		<option value="">Select City</option>
                              			<c:forEach items="${cityList}" var="city">
											<option id="city" 
												${cityValue eq city.name ? 'selected' : ''}
												value="${city.id}">${city.name}</option>
										</c:forEach>
                         		</form:select>
                              </div>
                            </div>
                          </div>
                          
                        </div>
                        <div class="form-row">
                          <div class="col-md-6 px-0">
                            <div class="form-group">
                              <div class="input-group ">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <img src="images/input-room.png" alt="Room Image" />
                                  </div>
                                </div>
                                <form:select path="room" class="form-control" id="inputRentRoom">
                                  <option data-display="Room">Room</option>
                                  <option value="1">1 </option>
                                  <option value="2">2 </option>
                                  <option value="3">3 </option>
                                </form:select>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6 px-0">
                            <div class="form-group">
                              <div class="input-group ">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <img src="images/rupee.png" alt="Money Image"  />
                                  </div>
                                </div>
                                <form:input path="price" type="text" class="form-control" id="inputRentPrice" placeholder="Price" />
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-row">
                        <div class="col-md-6 px-0">
                            <div class="form-group">
                              <div class="input-group ">
                                <div class="input-group-prepend">
                                  <div class="input-group-text">
                                    <img src="images/upload-image.png" alt="Upload Image" style="width:25px; opacity:0.2;"  />
                                  </div>
                                </div>
                                <input  type="file" accept=".jpeg,.jpg,.png" class="form-control"  name="file"  placeholder="Insert Image"  multiple="multiple"/>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="btn-box">
                         
                            <button type="submit">
                              Post Now
                            </button>
                        
                        </div>
                      </form:form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- find section ends -->

    </section>
    <!-- end slider section -->
  </div>



  <!-- info section -->
  <section class="info_section " id="contact">

    <div class="container">
      <div class="contact_nav">
        <a href="tel:+918379923183">
          <i class="fa fa-phone" aria-hidden="true"></i>
          <span class="mt-2">
            +91 8379923183
          </span>
        </a>
        <a href="mailto:rentalassociation@gmail.com">
          <i class="fa fa-envelope" aria-hidden="true"></i>
          <span class="mt-2">
            rentalassociation@gmail.com
          </span>
        </a>
        <a href="https://goo.gl/maps/bPFaVF8G311wFMnJA">
          <i class="fa fa-map-marker" aria-hidden="true"></i>
          <span class="mt-2">
            Location
          </span>
        </a>
      </div>

      <div class="info_top ">
        <div class="row info_main_row">
          <div class=" col-md-4 col-lg-4 ">
            <div class="info_about">
              <h4>
                About Us
              </h4>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates, vitae. Dolorem incidunt
                consectetur, recusandae enim officiis mollitia modi consequatur ab non animi provident quis asperiores
                eius omnis suscipit maiores perferendis?
              </p>
            </div>
          </div>
          <div class=" col-md-4 col-lg-3 mx-auto">
            <div class="info_links">
              <h4>
                QUICK LINKS
              </h4>
              <div class="info_links_menu">
                <a href="#index">Home <span class="sr-only">(current)</span></a>
                <a href="#about"> About</a>
                <a href="#property">Property</a>
                <a href="#why">Why Us</a>
                <a href="#testimonial">Testimonial</a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="info_form">

              <div class="social_box">
                <a href="">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Rental Association</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
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