<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<section class="find_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-10 mx-auto">
          <div class="form_tab_container">
            <div class="nav-tabs-navigation">
              <div class="nav-tabs-wrapper">
                <ul class="nav " data-tabs="tabs">
                  <li class="nav-item">
                    <a class="nav-link active" href="#rent" data-toggle="tab">For Rent</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="tab-content text-center">
              <div class="tab-pane active" id="rent">
                <div class="Rent_form find_form">
                  <form:form action="#" method="post" modelAttribute="rental">
                    <div class="form-row">
                      <div class="col-md-6 px-0">
                        <div class="form-group ">
                          <div class="input-group ">
                            <div class="input-group-prepend">
                              <div class="input-group-text">
                                <img src="images/input-location.png" alt="Location Image" />
                              </div>
                            </div>
                            <form:input path="city" type="text" class="form-control" 
                              placeholder="Enter your City" />
                          </div>
                        </div>
                      </div>
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
                    </div>
                    <div class="form-row">
                      <div class="col-md-6 px-0">
                        <div class="form-group">
                          <div class="input-group ">
                            <div class="input-group-prepend">
                              <div class="input-group-text">
                                <img src="images/input-price.png" alt="Money Image" />
                              </div>
                            </div>
                            <form:input path="price" type="text" class="form-control" id="inputRentPrice" placeholder="Price" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="btn-box">
                        <button type="submit">
                          Find Now
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